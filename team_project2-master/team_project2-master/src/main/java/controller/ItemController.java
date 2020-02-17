package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;
import exception.LoginException;
import logic.Cart;
import logic.Item;
import logic.ItemSet;
import logic.Orderitem;
import logic.Pick;
import logic.Review;
import logic.ShopService;
import logic.Up;
import logic.User;

@Controller
@RequestMapping("item")
public class ItemController {
	@Autowired
	private ShopService service;

	@GetMapping("*")
	public String form(Model model) {
		Item item = new Item();
		model.addAttribute("item", item);
		return null;
	}

	@RequestMapping("imgupload")
	public String imgupload(MultipartFile upload, String CKEditorFuncNum, HttpServletRequest request, Model model) {
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		return "ckedit";
	}

	@GetMapping("list")
	public ModelAndView itemlist(Integer category, Integer subcategory, Integer character, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		// Item item = new Item();
		User user = (User)session.getAttribute("loginUser");
		String userid = null;
		if(user != null) {
			userid=user.getUserid();
		}
		List<Item> itemlist = service.itemlist(category, subcategory, character, null, userid);
		int itemlistcount = service.itemlistcount(category, subcategory, character);

		// System.out.println(itemlist);
		// mav.addObject("item", item);
		mav.addObject("itemlist", itemlist);
		mav.addObject("itemlistcount", itemlistcount);
		mav.addObject("character", character);
		return mav;
	}

	@PostMapping("list")
	public ModelAndView itemlistsearch(Integer category, Integer subcategory, Integer character_c, String selectvalue2,
			String selectvalue1, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<Item> itemlist = null;
		int itemlistcount = 0;
		Integer select2 = null;
		// System.out.println(character_c+"!!!");
		if (selectvalue1 != null) {
			if (selectvalue1.trim().replaceAll("\\p{Z}", "").equals("라이언")) {
				character_c = 1;
			} else if (selectvalue1.trim().replaceAll("\\p{Z}", "").equals("어피치")) {
				character_c = 2;
			}
			mav.addObject("select_1", selectvalue1.trim().replaceAll("\\p{Z}", ""));

		}
		if (character_c != null) {
			mav.addObject("character", character_c);
		}
		User user = (User)session.getAttribute("loginUser");
		String userid = null;
		if(user != null) {
			userid=user.getUserid();
		}
		if (!selectvalue2.trim().equals("판매량순")) {
			if (selectvalue2.trim().equals("신상품순")) {
				select2 = 1;
			} else if (selectvalue2.trim().equals("낮은가격순")) {
				select2 = 3;
			} else if (selectvalue2.trim().equals("높은가격순")) {
				select2 = 4;
			}
			itemlist = service.itemlist(category, subcategory, character_c, select2, userid);
			itemlistcount = service.itemlistcount(category, subcategory, character_c);
		} else { // 판매량순
			itemlist = service.itemsale(category, subcategory, character_c);
		}
		mav.addObject("itemlist", itemlist);
		mav.addObject("itemlistcount", itemlistcount);
		mav.addObject("select_2", selectvalue2);
		System.out.println("!!!!!!!!!!"+itemlist);
		System.out.println("********" + category + "," + subcategory + "," + character_c + "," + selectvalue2 + ","
				+ selectvalue1);
		return mav;
	}

	@RequestMapping("product_detail")
	public ModelAndView product_detail(int no, String sort, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Item item = service.itemdetail(no);
		List<Review> reviewlist = null;
		if (sort == null) {
			reviewlist = service.reviewlist(no, null);
		} else if (sort.equals("new")) {
			reviewlist = service.reviewlist(no, sort);
		} else {
			reviewlist = service.reviewlist2(no, sort);
		}
		for (Review r : reviewlist) { // 리뷰 리스트에서 리뷰 번호로 리뷰추천한 사람들
			r.setUplist(service.uplist(r.getReviewno())); // 추천한 사람들 리스트
			r.setUpcount(service.uplist(r.getReviewno()).size()); // 추천한 사람 수
		}
		User user = (User) session.getAttribute("loginUser");
							
		/*아이템번호로 찜테이블(pick)에서 사용자 아이디로 된 찜된 상품이 있으면*/
		if (user != null) {
			Pick pick = service.pickselect(user.getUserid(), item.getItemnum());
			ItemSet itemSet = service.cartone(user.getUserid(), item.getItemnum());
			System.out.println("!!!!!!"+itemSet);
			if (pick != null || itemSet != null) {
				item.setWishcheck(1);
				item.setCartcheck(1);
			}
			
			List<Orderitem> o = service.orderitemselect(user.getUserid(), item.getItemnum());
			System.out.println(o);
			if(o.size() != 0) {
				mav.addObject("check", 1); // 주문확정되어있으면 1
				System.out.println("호출222!!");
			}else {
				mav.addObject("check", 0);
				System.out.println("호출!!");
			}
			
			
		}else { // user이 null이면 비회원 장바구니
			Cart cart = (Cart) session.getAttribute("CART");
			
			if(cart != null) {
				System.out.println(cart.getItemSetList());
				for(ItemSet i : cart.getItemSetList()) {
					//System.out.println("!!!!!"+i.getItemnum());
					if(i.getItem().getItemnum()==no) {
						item.setCartcheck(1);
					}
				}
			}
			
		}
		
		
		
		
		
		
		
		//System.out.println("reviewlist" + reviewlist);
		int reviewcount = service.reviewcount(no);

		item.setReviewlist(reviewlist);
		//System.out.println(item);

		int avg = 0;
		for (Review r : item.getReviewlist()) {
			avg += r.getItemavg();
		}
		mav.addObject("item", item);
		mav.addObject("reviewcount", reviewcount);
		mav.addObject("reviewavg", 0);
		if (reviewcount != 0) {
			mav.addObject("reviewavg", (double) avg / reviewcount);
		}

		return mav;
	}

	@GetMapping("review")
	public ModelAndView reviewform(int no, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Review review = new Review();
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser == null) {
			throw new LoginException("로그인이 필요합니다", "../user/signin.store");
		}
		review.setUserid(loginUser.getUserid());
		review.setItemnum(no);
		mav.addObject("review", review);
		return mav;
	}

	@PostMapping("review")
	public ModelAndView reviewwrite(@Valid Review review, BindingResult bresult) {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			service.reviewwrite(review);
			mav.setViewName("redirect:product_detail.store?no=" + review.getItemnum());
		} catch (Exception e) {
			e.printStackTrace();
			throw new BoardException("리뷰 작성에 실패했습니다.", "product_detail.store?no=" + review.getItemnum());
		}
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "reviewup", produces = "application/text; charset=utf8")
	public String reviewup(int reviewno, HttpSession session, String userid) {
		try {

			User user = (User) session.getAttribute("loginUser");

			if (user == null) {
				return "로그인을 한사람만 추천을 누를수 있습니다";
			}
			if (userid.equals(user.getUserid())) {
				return "본인 리뷰는 추천할 수 없습니다";
			}

			Up up = new Up();
			up.setUserid(user.getUserid());
			up.setReviewno(reviewno);
			service.reviewup(up);
			System.out.println("!!!!!!!!!!" + up);
			return "리뷰 추천을 성공하셨습니다!";
		} catch (Exception e) {
			e.printStackTrace();

			return "리뷰 추천을 실패했습니다";
		}
	}

	@ResponseBody
	@RequestMapping(value = "reviewdown", produces = "application/text; charset=utf8")
	public String reviewdown(int reviewno, HttpSession session) {
		try {
			User user = (User) session.getAttribute("loginUser");
			if (user == null) {
				return "로그인을 한사람만 추천취소를 누를수 있습니다";
			}

			Up up = new Up();
			up.setUserid(user.getUserid());
			up.setReviewno(reviewno);
			System.out.println("!!!!!!!!!!" + up);
			service.reviewdown(up);
			return "리뷰 추천취소를 성공하셨습니다!";
		} catch (Exception e) {
			e.printStackTrace();
			return "리뷰 추천취소를 실패했습니다";
		}
	}

	@ResponseBody
	@RequestMapping(value = "heartup", produces = "application/text; charset=utf8")
	public String heartup(int itemnum, HttpSession session) {
		try {

			User user = (User) session.getAttribute("loginUser");
			if (user == null) {
				return "로그인을 한 사람만 찜버튼을 누를 수 있습니다";
			}

			Pick p = new Pick();
			p.setItemnum(itemnum);
			p.setUserid(user.getUserid());
			service.heartup(p);
			System.out.println("!!!!!!!!!!" + p);
			return "상품을 찜하였습니다!";
		} catch (Exception e) {
			e.printStackTrace();
			return "상품 찜을 실패하였습니다!";
		}
	}

	@ResponseBody
	@RequestMapping(value = "heartdown", produces = "application/text; charset=utf8")
	public String heartdown(int pickno, HttpSession session) {
		try {
			User user = (User) session.getAttribute("loginUser");
			Pick p = new Pick();
			p.setPickno(pickno);
			// System.out.println("??????????"+p);
			service.heartdown(p);
			return "찜을 취소하셨습니다!";
		} catch (Exception e) {
			e.printStackTrace();
			return "찜 취소를 실패하셨습니다";
		}
	}

	///////////// * 장바구니 *////////
	@ResponseBody
	@RequestMapping(value = "cartadd", produces = "application/text; charset=utf8")
	public String cartadd(int itemnum, int quantity, int price, 
			String itemfile1url, String itemname, HttpSession session) {
		try {
			Item item = new Item();
			item.setItemfile1url(itemfile1url);
			item.setItemname(itemname);
			item.setItemnum(itemnum);
			User user = (User) session.getAttribute("loginUser");
			if (user == null) {
				Cart cart = (Cart) session.getAttribute("CART");
				if (cart == null) {
					cart = new Cart(); // session 에 등록된 CART가 비어있으면
					session.setAttribute("CART", cart);
				}
				
				cart.push(new ItemSet(item,null, quantity, price));
				System.out.println(cart.getItemSetList());
				
				return item.getItemname() + " " + quantity + "개를 장바구니에 담았습니다";
			} else {
				ItemSet itemSet = new ItemSet(item,user.getUserid(), quantity, price);
				ItemSet oneset = service.cartone(user.getUserid(), item.getItemnum());
				if(oneset != null) { // 이미 장바구니에 있으면 수량만 증가시켜서 db수정
					itemSet.setQuantity(oneset.getQuantity()+itemSet.getQuantity());
					service.cartaddupdate(itemSet);
				}else {
					service.cartadd(itemSet);
				}
				return item.getItemname() + " " + quantity + "개를 장바구니에 담았습니다";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "장바구니 담기에 실패했습니다";
		}

	}

	/*
	 * index 파라미터값에 해당하는 값을 Cart의 ItemSetList 객체에서 제거. message에 ㅇㅇㅇ 상품을 장바구니에서 제거
	 * 메시지 view(cart.jsp)에 전달 1. session 에서 CART 객체를 조회 2. cart객체에서 itemSetList객체에서
	 * index에 해당하는 값을 제거 ItemSet itemSet = cart.getItemSetList().remove(index)
	 * 3.message, cart 를 view에 전달
	 */
	/*@ResponseBody
	@RequestMapping("cartdelete") // url 파라미터 이름과 동일한 이름의 변수로 지정
	public String cartdelete(int itemnum,
			String itemfile1url, String itemname, HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		try {
			Item item = new Item();
			item.setItemfile1url(itemfile1url);
			item.setItemname(itemname);
			if (user == null) {
				Cart cart = (Cart) session.getAttribute("CART");
				ItemSet itemSet = cart.getItemSetList().remove(itemnum);
				// index를 Integer로 선언했을 시 래퍼클래스이므로 객체로 들어가게 된다.
				// Integer index => remove(Object obj) 인덱스에 있는 값을 지우는게
				// 아니라 그 객체를 지워라 라고 해서 boolean타입으로 리턴하게 됨
				return item.getItemname() + "를 장바구니에서 제거하였습니다";

			} else {
				ItemSet itemSet = new ItemSet(item, user.getUserid(), 0, 0);
				service.cartdelete(itemSet);
				return item.getItemname() + "를 장바구니에서 제거하였습니다";
			}
		} catch (Exception e) {
			return "장바구니에 담은 상품 삭제에 실패하였습니다";
		}
	}*/

}
