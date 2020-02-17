package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;
import logic.Help;
import logic.ShopService;
import logic.User;
import util.CipherUtil;

@Controller
@RequestMapping("admin_help")
public class Admin_HelpController {
	@Autowired
	private ShopService service;

	@RequestMapping("notice_list")
	public ModelAndView noticelist(Integer pageNum) {
		ModelAndView mav = new ModelAndView();
		if (pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
		int limit = 10; // 페이지당 게시물 건수
		int noticecount = service.boardcount(1, 0);
		List<Help> noticelist = service.selectboard(1, 0, pageNum, limit);

		int noticemaxpage = (int) ((double) noticecount / limit + 0.95);
		int noticestartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		int noticeendpage = noticestartpage + 9;
		if (noticeendpage > noticemaxpage) {
			noticeendpage = noticemaxpage;
		}
		mav.addObject("pageNum", pageNum);
		mav.addObject("noticemaxpage", noticemaxpage);
		mav.addObject("noticestartpage", noticestartpage);
		mav.addObject("noticeendpage", noticeendpage);
		// System.out.println(noticelist);
		mav.addObject("noticecount", noticecount);
		mav.addObject("noticelist", noticelist);

		return mav;
	}

	@RequestMapping("faq_list")
	public ModelAndView faqlist(String selectvalue, Integer pageNum) {
		ModelAndView mav = new ModelAndView();
		// System.out.println(selectvalue);
		if (pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
		int filter = 0;
		int limit = 10;
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

		int faqcount = service.boardcount(2, filter);
		List<Help> faqlist = service.selectboard(2, filter, pageNum, 0);
		int qnamaxpage = (int) ((double) faqcount / limit + 0.95);
		int qnastartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		int qnaendpage = qnastartpage + 9;
		if (qnaendpage > qnamaxpage) {
			qnaendpage = qnamaxpage;
		}
		mav.addObject("pageNum", pageNum);
		mav.addObject("qnamaxpage", qnamaxpage);
		mav.addObject("qnastartpage", qnastartpage);
		mav.addObject("qnaendpage", qnaendpage);
		mav.addObject("faqcount", faqcount);
		mav.addObject("faqlist", faqlist);

		return mav;
	}

	/*
	 * @GetMapping("help_update") public ModelAndView updateform(String select, int
	 * no) { ModelAndView mav = new ModelAndView(); mav.addObject("select", select);
	 * System.out.println(select);
	 * 
	 * Help help = service.getHelp(no); mav.addObject("help", help); return mav; }
	 */
	@RequestMapping("imgupload")
	public String imgupload(MultipartFile upload, String CKEditorFuncNum, HttpServletRequest request, Model model) { // ckedit.jsp에
																														// 파라미터값
																														// //
																														// 넘겨줄라고
		// upload : 업로드된 이미지 정보 저장. 이미지 파일
		String path = request.getServletContext().getRealPath("/") + "help/img";
		File f = new File(path);
		if (!f.exists())
			f.mkdirs();
		if (!upload.isEmpty()) {
			// file : 업로드 될 파일을 저장할 File 객체
			File file = new File(path, upload.getOriginalFilename());
			try {
				upload.transferTo(file); // 업로드 파일 생성
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		String fileName = "/kakaofriends/help/img/" + upload.getOriginalFilename();
		model.addAttribute("fileName", fileName);
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		return "ckedit";
	}

	@PostMapping("help_update")
	public ModelAndView help_update(@Valid Help help, BindingResult bresult, HttpServletRequest request
			, HttpSession session) throws Exception {
		// notice, faq 구분, 글번호
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		User adminUser =(User)session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!help.getPassword().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
		try {
			User user = new User();
			user.setUserid(adminUser.getUserid());
			help.setUser(user);
			service.boardUpdate(help, request);
			if (help.getBoardcode() == 2) {
				mav.setViewName("redirect:faq_list.store");
			} else {
				mav.setViewName("redirect:notice_list.store");
			}

		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			String location = "notice_list.store";
			if (help.getBoardcode() == 2) {
				location = "faq_list.store";
			}
			throw new BoardException("게시글 수정 실패", location);
		}
		return mav;

	}

	@PostMapping("help_write")
	public ModelAndView help_write(@Valid Help help, BindingResult bresult, HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		
		User adminUser =(User)session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!help.getPassword().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
		try {
			User user = new User();
			user.setUserid(adminUser.getUserid());
			help.setUser(user);
			service.boardWrite(help, request);
			if (help.getBoardcode() == 2) {
				mav.setViewName("redirect:faq_list.store");
			} else {
				mav.setViewName("redirect:notice_list.store");
			}
		} catch (Exception e) {
			e.printStackTrace();
			String url = "help_write.store?select=faq";
			if(help.getBoardcode() == 1) {
				url = "help_write.store?select=notice";
			}
			throw new BoardException("게시물 등록에 실패", url);
		}
		return mav;
	}

	@PostMapping("help_delete")
	public ModelAndView help_delete(@Valid Help help, BindingResult bresult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		// String dbpass = service.getPass(board.getNum());
		try {
			User adminUser =(User)session.getAttribute("adminUser");
			String userid = CipherUtil.makehash(adminUser.getUserid());
			String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
			if (!help.getPassword().equals(pass)) {
				bresult.reject("error.login.password");
				return mav;
			}
			service.boardDelete(help.getQnano());
			if (help.getBoardcode() == 2) {
				mav.setViewName("redirect:faq_list.store");
			} else {
				mav.setViewName("redirect:notice_list.store");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new BoardException("게시글 삭제 실패", "help_delete?no=" + help.getQnano());
		}
		return mav;
	}

	@GetMapping("*")
	public ModelAndView getHelp(String select, Integer no) {
		ModelAndView mav = new ModelAndView(); // request : url에 따라 조회수같은거 하려고??
		Help help = null;
		// 파라미터가 없을때는 빈객체를 전달
		if (no == null) { // num이 int로 하니까 안되네 객체끼리 비교여서 그런듯 null은
			int qnano = 1;
			if (select.equals("faq")) {
				qnano = 2;
			}
			help = new Help();
			help.setBoardcode(qnano);
		} else { // 파라미터가 있을 때는 게시물 한개 조회해오는 걸로
			help = service.getHelp(no);
		}
		mav.addObject("help", help);
		System.out.println(help);
		return mav;
	}

}
