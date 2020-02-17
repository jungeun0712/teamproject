package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Orderlist;
import logic.ShopService;
@Controller
@RequestMapping("nonmember")
public class NonmembrController {
   
   @Autowired
   private ShopService service;
   
   @GetMapping("*") // get으로 들어온 요청중 정해진게 없으면 이걸로 실행?
   public ModelAndView form() {
      ModelAndView mav = new ModelAndView();
      Orderlist orderlist = new Orderlist();
      mav.addObject("orderlist", orderlist);
      return mav;
   }
   // 주문 내역 있는 지만 확인 후 boolean 타입으로 리턴
   
   @PostMapping("orderCheck")
   @ResponseBody
   public boolean orderCheck(Orderlist orderlist) {
      System.out.println(orderlist);
      if(service.orderCheck(orderlist)) {
         return true;
      }
      return false;
   }
   
   // 주문내역이 있을 떄 주문 내역보여주는거
   @PostMapping("orderlist")
   public ModelAndView orderlist(Orderlist orderlist) {
      ModelAndView mav = new ModelAndView();
      Orderlist orderlist_non   = new Orderlist();
      mav.addObject("orderlist_non",orderlist_non);
      return mav;
   }
}