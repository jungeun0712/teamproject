package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Item;
import logic.ItemSet;
import logic.Pick;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("*")
public class IndexController {
	@Autowired
	private ShopService service;
	
	
	@GetMapping("*") // get으로 들어온 요청중 정해진게 없으면 이걸로 실행?
	public ModelAndView indexlist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Item> newitemlist = null;
		List<Item> pitemlist = null;
		List<Item> allitemlist = null;
		User user = (User)session.getAttribute("loginUser");
		if (user != null) {
			newitemlist = service.indexitemlist(user.getUserid(), 1); // 사용자의 찜리스트 
			pitemlist = service.indexitemlist(user.getUserid(), 2);
			allitemlist = service.indexitemlist(user.getUserid(), 3);
			System.out.println(pitemlist);
		}else {
			newitemlist = service.indexlist(1);
			pitemlist = service.indexlist(2);
			allitemlist = service.indexlist(3);
		}
		
		mav.addObject("newitemlist", newitemlist);
		mav.addObject("pitemlist", pitemlist);
		mav.addObject("allitemlist", allitemlist);
		return mav; 
	}
}
