package controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.WhousingException;
import logic.ShopService;
import logic.Whousing;

@Controller
@RequestMapping("admin_in")
public class Admin_InController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("order_item_in")
   public ModelAndView order_item_in(Integer pageNum) {
      ModelAndView mav = new ModelAndView();
      if(pageNum == null || pageNum.toString().equals("")) {
            pageNum = 1;
         }
      int limit = 10; //페이지당 보여지는 게시물 건수
      int admin_incount = service.admin_incount_new(); //전체 등록된 게시물 건수
      int maxpage = (int)((double)admin_incount/limit + 0.95); 
       //보여지는 첫번째 페이지
       int startpage = (int)((pageNum/10.0 + 0.9) -1) * 10 + 1; 
       //보여지는 마지막 페이지
       int endpage = startpage + 9;
       if(endpage > maxpage) endpage = maxpage;
       int boardno = admin_incount - (pageNum - 1) * limit;
      List<Whousing> whousinginlist = service.whousinginlist(pageNum,limit);
      mav.addObject("pageNum", pageNum);
       mav.addObject("maxpage", maxpage);
       mav.addObject("startpage", startpage);
       mav.addObject("endpage", endpage);
       mav.addObject("admin_incount", admin_incount);
       mav.addObject("boardno", boardno);
      mav.addObject("whousinginlist", whousinginlist);
      return mav;
   }
   
   @RequestMapping("order_item_in_write")
   public ModelAndView order_item_in_write(Whousing whousing, Integer whousingquant) {
      ModelAndView mav = new ModelAndView();
      List<Whousing> whousinglist = service.whousinglist();
//      whousing.push(new Whousing());
      mav.addObject("whousinglist", whousinglist);
//      mav.addObject("whousing", whousing);
      return mav;
   }
   
   @PostMapping("order_item_in_write")
   public ModelAndView order_item_in_write(Whousing whousing, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      try {
    	  Date currentTime = new Date();
         service.whousing_inWrite(whousing,currentTime, request); //게시물등록
         service.whousing_Update(whousing,currentTime, request); //게시물등록
         mav.setViewName("redirect:order_item_in.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new WhousingException("입고 등록에 실패했습니다.","order_item_in_write.store");
      }
      return mav;
   }
   
   @GetMapping("*")
   public ModelAndView getWousing(Integer whousingnum, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      Whousing whousing = null;
      if (whousingnum == null) {
         whousing = new Whousing();
      } else {
         whousing = service.getWhousing(whousingnum,request);
      }
      mav.addObject("whousing",whousing);
      return mav;
   }
   
}