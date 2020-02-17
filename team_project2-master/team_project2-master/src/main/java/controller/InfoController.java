package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.StoreInfo;


@Controller
@RequestMapping("info")
public class InfoController {
   @Autowired
      private ShopService service;
   
   @GetMapping("*")
      public ModelAndView getCharacterInfo() {
         ModelAndView mav = new ModelAndView();
         return mav;
      }
   
   @RequestMapping("storeInfo")
   public ModelAndView storeInfo() {
    ModelAndView mav = new ModelAndView();
       int limit = 10; //페이지당 게시물 건 수
       int listcount = service.storecount(); //전체 등록된 게시물 건 수
       List<StoreInfo> storelist = service.storelist();
       mav.addObject("listcount", listcount);
       mav.addObject("storelist", storelist);
       return mav;
   }
   
}