package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.QnaBoardException;
import logic.Help;
import logic.Qnaboard;
import logic.ShopService;
import logic.User;
import util.CipherUtil;

@Controller
@RequestMapping("admin_contact")
public class Admin_ContactController {
	@Autowired
	private ShopService service;

	@GetMapping("*")
	public ModelAndView form(Integer no) {
		ModelAndView mav = new ModelAndView();
		Qnaboard qnaboard = null;
		if (no == null) {
			qnaboard = new Qnaboard();
		} else {
			qnaboard = service.getboard(no);
		}
		mav.addObject("qnaboard", qnaboard);
		return mav;
	}

	@RequestMapping("contact_list")
	public ModelAndView list(Integer pageNum, String selectvalue, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
		int limit = 10; // 페이지당 게시물 건수
		int filter = 0;
		if (selectvalue != null) {
			if (selectvalue.equals("배송")) {
				filter = 1;
			} else if (selectvalue.equals("교환/반품/환불")) {
				filter = 2;
			} else if (selectvalue.equals("기타")) {
				filter = 3;
			} else if (selectvalue.equals("상품")) {
				filter = 4;
			} else if (selectvalue.equals("주문결제")) {
				filter = 5;
			}
		}
		int faqcount = service.boardcount(3, filter);
		List<Help> faqlist = service.selectboard(3, filter, pageNum, limit);

		int faqmaxpage = (int) ((double) faqcount / limit + 0.95);
		int faqstartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		int faqendpage = faqstartpage + 9;
		if (faqendpage > faqmaxpage) {
			faqendpage = faqmaxpage;
		}
		mav.addObject("pageNum", pageNum);
		mav.addObject("faqmaxpage", faqmaxpage);
		mav.addObject("faqstartpage", faqstartpage);
		mav.addObject("faqendpage", faqendpage);
		mav.addObject("faqcount", faqcount);
		mav.addObject("faqlist", faqlist);
		System.out.println("faqlist" + faqlist);
		return mav;

	}

	@PostMapping("contact_write")
	public ModelAndView write(@Valid Qnaboard qnaboard, BindingResult bresult, HttpServletRequest request,
			HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		System.out.println(qnaboard);
		
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			System.out.println(bresult);
			return mav;
		}
		try {
			User adminUser = (User) session.getAttribute("adminUser");
			System.out.println("!!!!!!!!!!!!"+adminUser);
			String userid = CipherUtil.makehash(adminUser.getUserid());
			String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
			System.out.println(pass+","+qnaboard.getPassword());
			if (!qnaboard.getPassword().equals(pass)) {
				bresult.reject("error.login.password");
				return mav;
			}

			System.out.println("답변내용 !!!!!!!" + qnaboard);
			service.qnaboardWrite(qnaboard);
			mav.setViewName("redirect:contact_list.store");
		} catch (Exception e) {
			e.printStackTrace();
			throw new QnaBoardException("답변 등록에 실패하였습니다.", "contact_list.store");
		}
		return mav;
	}
}
