package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Help;
import logic.ShopService;

@Controller
@RequestMapping("help")
public class NoticeController {
   
   @Autowired
   private ShopService service;
   
   @RequestMapping("*") // get으로 들어온 요청중 정해진게 없으면 이걸로 실행?
   public String form(Model model) {
      return null; // null : url로  보고 이동?
   }
   @RequestMapping("notice")
   public ModelAndView selectboard(String selectvalue, Integer pageNum) {
      ModelAndView mav = new ModelAndView();
      if (pageNum == null || pageNum.toString().equals("")) {
         pageNum = 1;
      }
      int limit = 10; // 페이지당 게시물 건수
      int filter = 0;
      int noticelistcount = service.boardcount(1, 0);
      List<Help> noticelist = service.selectboard(1, 0, pageNum, limit);
      int noticemaxpage = (int)((double)noticelistcount / limit + 0.95);
      int noticestartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
      int noticeendpage = noticestartpage + 9;
      if(noticeendpage > noticemaxpage) {
         noticeendpage = noticemaxpage;
      }
      
      if(selectvalue != null) {
         if(selectvalue.equals("배송")) {
            filter = 1;
         }else if(selectvalue.equals("교환/반품/환불")) {
            filter = 2;
         }else if(selectvalue.equals("기타")) {
            filter = 3;
         }else if(selectvalue.equals("상품")) {
            filter = 4;
         }else if(selectvalue.equals("주문결제")) {
            filter = 5;
         }
      }
      int qnalistcount = service.boardcount(2, filter);
      System.out.println(qnalistcount);
      List<Help> qnalist = service.selectboard(2, filter, pageNum, limit);
      int   qnamaxpage = (int)((double)qnalistcount / limit + 0.95);
      int qnastartpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
      int   qnaendpage = qnastartpage + 9;
      if(qnaendpage > qnamaxpage) {
         qnaendpage = qnamaxpage;
      }
      
      mav.addObject("pageNum", pageNum);
      mav.addObject("noticemaxpage", noticemaxpage);
      mav.addObject("noticestartpage", noticestartpage);
      mav.addObject("noticeendpage", noticeendpage);
      mav.addObject("qnalistcount", qnalistcount);
      mav.addObject("qnamaxpage", qnamaxpage);
      mav.addObject("qnastartpage", qnastartpage);
      mav.addObject("qnaendpage",qnaendpage);
      mav.addObject("noticelist", noticelist);
      //System.out.println(noticelist);
      mav.addObject("qnalist", qnalist);
      //System.out.println(qnalist);
      return mav;
   }
}