package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.Whousing;

@Controller
@RequestMapping("admin_keep")
public class Admin_KeepController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("order_item_list")
   public ModelAndView order_item_list(String selectvalue,Integer pageNum) {
      ModelAndView mav = new ModelAndView();
      if(pageNum == null || pageNum.toString().equals("")) {
            pageNum = 1;
         }
      if(selectvalue == null || pageNum.toString().equals("")) {
    	  selectvalue = null;
      } else if(selectvalue.toString().equals("정품")) {
    	  selectvalue = "0";
       } else if(selectvalue.toString().equals("불량품")) {
    	   selectvalue = "1";
       }
      
      int limit = 10; //페이지당 보여지는 게시물 건수
      int keeplist_cnt = service.admin_incount(selectvalue); //전체 등록된 게시물 건수
      List<Whousing> keeplist = service.wkeeplist(pageNum,limit,selectvalue);
      int maxpage = (int)((double)keeplist_cnt/limit + 0.95); 
       //보여지는 첫번째 페이지
       int startpage = (int)((pageNum/10.0 + 0.9) -1) * 10 + 1; 
       //보여지는 마지막 페이지
       int endpage = startpage + 9;
       if(endpage > maxpage) endpage = maxpage;
       int boardno = keeplist_cnt - (pageNum - 1) * limit;
       mav.addObject("keeplist", keeplist);
       mav.addObject("pageNum", pageNum);
       mav.addObject("maxpage", maxpage);
       mav.addObject("startpage", startpage);
       mav.addObject("endpage", endpage);
       mav.addObject("keeplist_cnt", keeplist_cnt);
       mav.addObject("boardno", boardno);
      return mav;
   }
}