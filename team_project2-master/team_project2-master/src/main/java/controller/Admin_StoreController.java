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

import exception.StoreInfoException;
import logic.StoreInfo;
import logic.User;
import util.CipherUtil;
import logic.ShopService;

@Controller
@RequestMapping("admin_store")
public class Admin_StoreController {
	@Autowired
	private ShopService service;

	@GetMapping("*")
	public ModelAndView getStoreInfo(Integer storeno, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		StoreInfo storeinfo = null;
		if (storeno == null) {
			storeinfo = new StoreInfo();
		} else {
			storeinfo = service.StoreInfo(storeno, request);
		}
		mav.addObject("storeinfo", storeinfo);
		return mav;
	}

	@PostMapping("store_write")
	public ModelAndView store_write(@ModelAttribute("storeinfo") @Valid StoreInfo storeinfo, BindingResult bresult,
			HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			System.out.println(bresult);
			return mav;
		}
		User adminUser = (User) session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!storeinfo.getPw_chk().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
		try {
			service.infoWrite(storeinfo, request);
			mav.setViewName("redirect:store_list.store");
		} catch (Exception e) {
			e.printStackTrace();
			throw new StoreInfoException("매장 등록에 실패했습니다.", "store_write.store");
		}
		return mav;
	}

	@RequestMapping("store_list")
	public ModelAndView store_list() {
		ModelAndView mav = new ModelAndView();
		int limit = 10; // 페이지당 게시물 건 수
		int listcount = service.storecount(); // 전체 등록된 게시물 건 수
		List<StoreInfo> storelist = service.storelist();
//      // 최대 페이지
//      int maxpage = (int)((double)listcount/limit +0.95);
//      // 보여지는 첫번째 페이지
//      int startpage = (int)((pageNum/10.0+0.9)-1)*10+1;
//      // 보여지는 마지막 페이지
//      int endpage = startpage+9;
//      if(endpage>maxpage) endpage=maxpage;
//      // 화면에 출력되는 게시물 번호
//      int boardno = listcount - (pageNum-1) *limit;
//      mav.addObject("pageNum", pageNum);
//      mav.addObject("maxpage", maxpage);
//      mav.addObject("startpage", startpage);
//      mav.addObject("endpage", endpage);
		mav.addObject("listcount", listcount);
		mav.addObject("storelist", storelist);
//      mav.addObject("boardno", boardno);
		return mav;
	}

	@PostMapping("store_update")
	public ModelAndView store_update(@ModelAttribute("storeinfo") @Valid StoreInfo storeInfo, BindingResult bresult, HttpServletRequest request,
			HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
	
		User adminUser = (User) session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!storeInfo.getPw_chk().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
		try {
			service.StoreInfoUpdate(storeInfo, request);
			mav.setViewName("redirect:store_list.store");
		} catch (Exception e) {
			e.printStackTrace();
			throw new StoreInfoException("글 수정에 실패했습니다.", "store_update.store?storeno=" + storeInfo.getStoreno());
		}
		return mav;
	}

	@PostMapping("store_delete")
	public ModelAndView store_delete(@ModelAttribute("storeinfo") StoreInfo storeInfo, BindingResult bresult, HttpServletRequest request, 
			HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		User adminUser = (User) session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!storeInfo.getPw_chk().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
		try {
			service.StoreInfoDelete(storeInfo);
			// service.boardDelete(board.getNum());
			mav.setViewName("redirect:store_list.store");
		} catch (Exception e) {
			e.printStackTrace();
			throw new StoreInfoException("글 삭제 실패했습니다.", "store_delete.shop?num=" + storeInfo.getStoreno());
		}
		return mav;
	}

}