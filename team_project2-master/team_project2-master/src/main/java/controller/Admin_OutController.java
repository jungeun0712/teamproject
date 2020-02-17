package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.WhousingException;
import logic.ShopService;
import logic.Whousing;

@Controller
@RequestMapping("admin_out")
public class Admin_OutController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("order_item_out")
   public ModelAndView order_item_in(Integer pageNum) {
      ModelAndView mav = new ModelAndView();
      int limit = 10; //페이지당 보여지는 게시물 건수
      int wow_cnt = service.admin_incount_out(); //전체 등록된 게시물 건수
      int maxpage = (int)((double)wow_cnt/limit + 0.95); 
       //보여지는 첫번째 페이지
      if (pageNum == null || pageNum.toString().equals("")) {
			pageNum = 1;
		}
       int startpage = (int)((pageNum/10.0 + 0.9) -1) * 10 + 1; 
       //보여지는 마지막 페이지
       int endpage = startpage + 9;
       if(endpage > maxpage) endpage = maxpage;
       int boardno = wow_cnt - (pageNum - 1) * limit;
       mav.addObject("pageNum", pageNum);
       mav.addObject("maxpage", maxpage);
       mav.addObject("startpage", startpage);
       mav.addObject("endpage", endpage);
       mav.addObject("keeplist_cnt", wow_cnt);
       mav.addObject("boardno", boardno);
      List<Whousing> whousingoutwhousing = service.whousingoutwhousing(pageNum,limit);
      mav.addObject("whousingoutwhousing", whousingoutwhousing);
      return mav;
   }
   
   @RequestMapping("order_item_out_write")
   public ModelAndView order_item_in_write() {
      ModelAndView mav = new ModelAndView();
      List<Whousing> outwhousing = service.outwhousing();
      mav.addObject("outwhousing", outwhousing);
      return mav;
   }
   
   @PostMapping("order_item_out_write")
   public ModelAndView order_item_in_write(Whousing whousing, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
//      Whousing dbwhosing = service.getdbWhousing(whousing.getItemnum(), whousing.getWhousing_code());
//      System.out.println(whousing.getItemnum());
//      whousing.setWhousingquant(dbwhosing.getWhousingquant()-whousing.getWhousingquant());
      try {
         service.whousing_outWrite(whousing,request); //게시물등록
         mav.setViewName("redirect:order_item_out.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new WhousingException("출고 등록에 실패했습니다.","order_item_out_write.store");
      }
      return mav;
   }
}