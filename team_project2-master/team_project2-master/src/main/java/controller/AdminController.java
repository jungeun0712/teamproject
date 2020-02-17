package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import logic.ShopService;
import logic.User;
import util.CipherUtil;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private ShopService service;
	@GetMapping("*") 
	public String form(Model model) {
		model.addAttribute(new User());
		return null; 
	}
	@RequestMapping("imgupload")
	public String imgupload(MultipartFile upload, HttpServletRequest request, Model model) {
		//upload : 업로드된 이미지 정보 저장. 이미지 파일.
		String path=request.getServletContext().getRealPath("/")+ "admin/imgfile/";
		File f = new File(path);
		if(!f.exists()) f.mkdirs();
		if(!upload.isEmpty()) {
			//업로드될 파일을 저장할 File 객체 지정
			File file = new File(path, upload.getOriginalFilename());
			try {
				upload.transferTo(file); //업로드 파일 생성
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		String fileName = "/kakaofriends/admin/imgfile/"+upload.getOriginalFilename();
		model.addAttribute("fileName", fileName);
		return "fileName";  
	}
	//관리자 회원가입
	@PostMapping("manager_Entry")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult, HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user"); //입력정보에 문제가 있습니다.
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			String id = CipherUtil.makehash(user.getUserid()).substring(0,16); //key
			String passwd = CipherUtil.encrypt(user.getPassword(), id);
			user.setPassword(passwd);
			service.adminInsert(user,request);  //insert 실행
			mav.addObject("msg","관리자의 승인이 필요합니다.");
			mav.addObject("url","manager_index.store");
			mav.setViewName("alert");
			/*mav.setViewName("redirect:manager_index.store");*/
		   }catch(DataIntegrityViolationException e) {
				e.printStackTrace();
				bresult.reject("error.duplicate.user"); //중복된 아이디입니다.
			}catch (Exception e) {
				e.printStackTrace();
			} 
		
		return mav;
	}
	
	@PostMapping("manager_login")
	   public ModelAndView login(@Valid User user, BindingResult bresult,HttpSession session) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      if(bresult.hasErrors()) { 
	         bresult.reject("error.input.user");
	         mav.getModel().putAll(bresult.getModel());
	         return mav;
	      }
	      try {
	         User dbUser = service.getUser(user.getUserid());
	         if(dbUser == null) { //아이디가 없을때
	            throw new LoginException("해당 아이디가 없습니다. 로그인 후 이용하세요","manager_login.store");
	         }
	         if(dbUser.getAccess() == 0) {
	            mav.addObject("msg","관리자가 아닙니다. 회원가입 후 이용해주세요.");
	            mav.addObject("url","manager_login.store");
	            mav.setViewName("alert");
	         }else{ 
	            String id = CipherUtil.makehash(dbUser.getUserid());
	            String passwd= CipherUtil.decrypt(dbUser.getPassword(),id.substring(0,16)); //로그인 시도 암호화 된 비밀번호를 복호화시킨다.
	            System.out.println(passwd);
	            if(!user.getPassword().equals(passwd)) { //비밀번호를 틀렸을 때
	               bresult.reject("error.login.password");
	               return mav; 
	            }else { //비밀번호 맞음       
	               session.setAttribute("adminUser", dbUser); //session값에 dbUser의 정보를 adminUser로 저장한다.
	               mav.setViewName("redirect:manager_index.store");
	            }
	         }
	      }catch (LoginException e) {
	         e.printStackTrace();
	      }catch(Exception e) {
	         e.printStackTrace();
	      }
	      return mav;
	   }
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:manager_index.store";
	}
	/*
	 * @PostMapping("manager") public String manager(User user) { ModelAndView mav =
	 * new ModelAndView(); return mav; }
	 */
	@RequestMapping("manager") //상위관리자의 관리자 승인 페이지
	public ModelAndView manager(Integer access, String userid, HttpSession session) {
		// HttpServletRequest request
		ModelAndView mav = new ModelAndView();
		List<User> entrylist = service.userList(1); 
		mav.addObject("entrylist", entrylist);	
			try {
				if(access == 1) { //파라미터값이 1이면 => 승인
					service.membercodeUpdate(access, userid);
					mav.addObject("msg","승인 처리가 완료되었습니다.");
					mav.addObject("url","manager.store");
					mav.setViewName("alert");
				}else if(access == 2){ //파라미터값이 2이면 => 거부
					service.userDelete(userid);
					mav.addObject("msg","거부 처리가 완료되었습니다.");
					mav.addObject("url","manager.store");
					mav.setViewName("alert");
				}	
			}catch(NumberFormatException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}	
		return mav;	
	}
	@RequestMapping("manager_list") //상위관리자의 관리자 승인 페이지
	public ModelAndView manager_list(Integer access, String userid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> adminlist = service.userList(2);
		mav.addObject("adminlist", adminlist);
		return mav;
	}
	@RequestMapping("manager_info")
	public ModelAndView manager_info(String userid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User admin = service.getUser(userid); //???? userid어디서 가져오는거?
		mav.addObject("admin",admin);
		return mav;
	}
	
	@GetMapping("manager_update")
	public ModelAndView manager_update(String userid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(userid);
		try {
			String id = CipherUtil.makehash(user.getUserid());
		    String password = CipherUtil.decrypt(user.getPassword(), id.substring(0,16));
		    user.setPassword(password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("user",user);
		return mav;
	}
	
	// 비밀번호 검증 : 입력된 비밀번호와 db에 저장된 비밀번호를 비교
	// 일치 : update
	// error.login.password=비밀번호를 확인하세요.
	@PostMapping("manager_update")
	public ModelAndView manager_update(@Valid User user, 
			BindingResult bresult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user");
			return mav;
		}
		User adminUser = (User)session.getAttribute("adminUser");
		String hashpass;
		try {
			hashpass = CipherUtil.makehash(user.getPassword());
			user.setPassword(hashpass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(!user.getPassword().equals(adminUser.getPassword())) {
			bresult.reject("error.login.password");
			return mav;
		}
		service.adminUpdate(user); 
		return mav;
	}
}