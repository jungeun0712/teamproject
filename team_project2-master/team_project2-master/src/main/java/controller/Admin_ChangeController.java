package controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.ChgException;
import exception.StoreInfoException;
import logic.Chg;
import logic.Orderitem;
import logic.ShopService;

@Controller
@RequestMapping("admin_change")
public class Admin_ChangeController {
   @Autowired
   public ShopService service;
   
   @GetMapping("change_return_order_info")
      public ModelAndView getChg(Integer chg_no, HttpServletRequest request) {
         ModelAndView mav = new ModelAndView();
         Chg chg = null;
         if(chg_no == null) {
            chg = new Chg();
         }else {
            chg =service.Chg(chg_no,request);
         }
         mav.addObject("chg", chg);
         return mav;
      }
   @RequestMapping("change_return_order_list")
      public ModelAndView change_return_order_list(Integer pageNum,HttpServletRequest request) {
       ModelAndView mav = new ModelAndView();
       if(pageNum==null || pageNum==0) {
          pageNum = 1;
       }
         int limit = 10; //페이지당 게시물 건 수
         int chgcount = service.chgcount(); //전체 등록된 게시물 건 수
         List<Chg> chglist = service.chglist(pageNum,limit);
         // 최대 페이지
         int maxpage = (int)((double)chgcount/limit +0.95);
         // 보여지는 첫번째 페이지
         int startpage = (int)((pageNum/10.0+0.9)-1)*10+1;
         // 보여지는 마지막 페이지
         int endpage = startpage+9;
         if(endpage>maxpage) endpage=maxpage;
         // 화면에 출력되는 게시물 번호
         int boardno = chgcount - (pageNum-1) *limit;
         mav.addObject("pageNum", pageNum);
         mav.addObject("maxpage", maxpage);
         mav.addObject("startpage", startpage);
         mav.addObject("endpage", endpage);
         mav.addObject("chgcount", chgcount);
         mav.addObject("chglist", chglist);
         mav.addObject("boardno", boardno);
         return mav;
      }
   @RequestMapping("chg_state_yn")
   public ModelAndView chg_state_yn(Integer chg_no,Integer yn,String chg_orderno,HttpServletRequest request,HttpSession session) {
      ModelAndView mav = new ModelAndView();
      Chg chg = service.Chg(chg_no,request);
      try {
         service.chgstateupdate(chg_no,yn);
         if(yn==2) {
        	 // 교환 반품 상태로 orderlist 변경
        	 service.orderstate_chg(chg_orderno);
        	 // 불량 상태의 재고 생김
        	 Date currentTime = new Date();
        	 Orderitem oi =service.orderlist_out(chg_orderno);
        	 service.chg_w_bad_insert(oi.getItemnum(),oi.getPrice(),oi.getQuantity(),currentTime);
        	 // 환불-> 재고 상태 돈 - 환불할 가격
        	 service.chg_w_bad_update(oi.getItemnum(),oi.getPrice(),oi.getQuantity(),currentTime);
        	 
            service.orderstateupdate(chg.getChg_orderno(),chg.getUserid());
         }
         mav.setViewName("redirect:change_return_order_list.store");
      }catch(Exception e) {
         e.printStackTrace();
            throw new ChgException
            ("거절 및 수락에 실패했습니다.","change_return_order_list.store");
      }
      return mav;
   }
}