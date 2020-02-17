package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;

import exception.LoginException;
import logic.Point;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*")
	public String form(Model model) {
		return null; // null : url로  보고 이동?
	}

	@RequestMapping("signin")
	public ModelAndView loginForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
		// 카카오 로그인 화면이로 이동하는 주소값 리턴하는 함수 호출
		String kakaoUrl = KakaoController.getAuthorizationUrl(session);

		/* 생성한 인증 URL을 View로 전달 */
		mav.setViewName("user/signin");
		mav.addObject("kakao_url", kakaoUrl);

		return mav;
	}

	@RequestMapping("login")
	public ModelAndView kakaoLogin(@RequestParam("code") String code, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		// 결과값을 node에 담아줌
		JsonNode node = KakaoController.getAccessToken(code);
		// accessToken에 사용자의 로그인한 모든 정보가 들어있음
		JsonNode accessToken = node.get("access_token");
		// 사용자의 정보
		JsonNode userInfo = KakaoController.getKakaoUserInfo(accessToken);
		System.out.println(userInfo);
		String kemail = null;
		String kname = null;
		String kgender = null;
		String kbirthday = null;
		String kage = null;
		String kimage1 = null;
		String kimage2 = null;
		// 유저정보 카카오에서 가져오기 Get properties
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		JsonNode jsonprofile = kakao_account.path("profile");

		kemail = kakao_account.path("email").asText();
		kname = properties.path("nickname").asText();
		kimage1 = jsonprofile.path("thumbnail_image_url").asText();
		kimage2 = jsonprofile.path("profile_image_url").asText();
		kgender = kakao_account.path("gender").asText();
		kbirthday = kakao_account.path("birthday").asText();
		kage = kakao_account.path("age_range").asText();
		session.setAttribute("kemail", kemail);
		session.setAttribute("kname", kname);
		session.setAttribute("kimage1", kimage1);
		session.setAttribute("kimage2", kimage2);
		session.setAttribute("kgender", kgender);
		session.setAttribute("kbirthday", kbirthday);
		session.setAttribute("kage", kage);
		// 세션에 토큰 저장
		session.setAttribute("access_Token", accessToken);
		mav.setViewName("redirect:../index.store"); // ../index
		
		User user = new User();
		user.setUserid(kemail);
		user.setUsername(kname);
		user.setGender(kgender.equals("male")?1:2);
		user.setMember_code(1); // 회원 1
		session.setAttribute("loginUser", user);
		if(!service.selectOne(kemail)) { 
			// false면 최초 로그인으로 사용자 정보를 db에저장
			service.memberInsert(user);
			Point p = new Point();
			p.setUserid(user.getUserid());
			p.setPoint(1000); // welcome point
			p.setPointtext("Welcome Point!");
			service.pointinsert(p);
		}
		return mav;
	}
	
	
	@RequestMapping("logout") // value="/logout
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		try {
			
			JsonNode node = KakaoController.kakaoLogout(session.getAttribute("access_Token").toString());
			session.invalidate();
			System.out.println("로그인 후 반환되는 아이디 : " + node.get("id"));
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new LoginException("이미 로그아웃된 계정입니다", "../index.store");
		}
		
		mav.setViewName("redirect:../index.store");
		return mav;
	}

	/*@RequestMapping("updateForm") 
	public String kakaoupdateform(HttpSession session) {

		// KakaoController.kakaoupdate(accessToken);
		return "user/updateForm";
	}*/
/*
	@PostMapping("update")
	public String kakaoupdate(String nickname, String gender, HttpSession session) throws UnsupportedEncodingException {
		JsonNode accessToken = (JsonNode) session.getAttribute("access_Token");
		JsonNode userid = KakaoController.kakaoupdate(nickname, gender, accessToken);
		System.out.println("수정된 사람의 아이디 : " + userid.get("id"));
		return "redirect:../index.store";
	}
*/
}
