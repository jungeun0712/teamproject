package controller;

import java.io.File;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;
import exception.ItemException;
import logic.Item;
import logic.ShopService;
import logic.User;
import util.CipherUtil;

@Controller
@RequestMapping("admin_item")
public class Admin_ItemController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("product_list")
   public ModelAndView list(Integer pageNum, String selectvalue, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      selectvalue = request.getParameter("selectvalue");
      if(pageNum == null || pageNum.toString().equals("")) {
         pageNum = 1;
      }
      if(selectvalue == null || selectvalue.toString().equals("전체")) {
         selectvalue = "0";
      } else if(selectvalue.toString().equals("토이")) {
         selectvalue = "1";
      } else if(selectvalue.toString().equals("의류")) {
         selectvalue = "2";
      } else if(selectvalue.toString().equals("생활테크")) {
         selectvalue = "3";
      } else if(selectvalue.toString().equals("라이언")) {
         selectvalue = "4";
      } else if(selectvalue.toString().equals("어피치")) {
         selectvalue = "5";
      }
      System.out.println(selectvalue); 
      int limit = 10; //페이지당 보여지는 게시물 건수
      int itemcount = service.itemcount(selectvalue); //전체 등록된 게시물 건수
      List<Item> itemlist = service.getItemList(pageNum,limit,selectvalue);
      int maxpage = (int)((double)itemcount/limit + 0.95); 
      //보여지는 첫번째 페이지
      int startpage = (int)((pageNum/10.0 + 0.9) -1) * 10 + 1; 
      //보여지는 마지막 페이지
      int endpage = startpage + 9;
      if(endpage > maxpage) endpage = maxpage;
      int boardno = itemcount - (pageNum - 1) * limit;
      mav.addObject("pageNum", pageNum);
      mav.addObject("maxpage", maxpage);
      mav.addObject("startpage", startpage);
      mav.addObject("endpage", endpage);
      mav.addObject("itemcount", itemcount);
      mav.addObject("itemlist",itemlist);
      mav.addObject("boardno", boardno);
      mav.addObject("selectvalue", selectvalue);
      return mav;
   }
   @RequestMapping("imgupload")
   public String imgupload(MultipartFile upload, String CKEditorFuncNum, HttpServletRequest request, 
         Model model) {
      String path = request.getServletContext().getRealPath("/") + "admin_item/imagesfile/";
      File f = new File(path);
      if(!f.exists()) f.mkdirs();
      if(!upload.isEmpty()) { //선택한 업로드된 파일이 있다면
         //업로드될 파일을 저장할 File 객체
         File file = new File(path, upload.getOriginalFilename());
         try {
            upload.transferTo(file); //업로드 파일 생성
         } catch(Exception e) {
            e.printStackTrace();
         }
      }
      String fileName = "/kakaofriends/admin_item/imagesfile/"+upload.getOriginalFilename();
      model.addAttribute("fileName", fileName);
      model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
      return "ckedit";
   }
   
   @GetMapping("*")
   public ModelAndView getAdmin_item(Integer itemnum, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      Item item = null;
      if (itemnum == null) {
         item = new Item();
      } else {
         item = service.getAdmin_item(itemnum,request);
      }
      mav.addObject("item", item);
      return mav; 
   }
   
   
   @PostMapping("item_write")
   public ModelAndView item_write(@Valid Item admin_item, BindingResult bresult, HttpServletRequest request, HttpSession session) throws Exception {
      ModelAndView mav = new ModelAndView();
      if(bresult.hasErrors()) {
         mav.getModel().putAll(bresult.getModel());
         System.out.println(bresult);
         return mav;
      }
      	User adminUser =(User)session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!admin_item.getPassword().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
      try {
         service.itemCreate(admin_item,request);
         service.itemwhousinginsert(admin_item.getItemnum());
         mav.setViewName("redirect:product_list.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new ItemException("게시물 등록에 실패했습니다.","item_write.store");
      }
      return mav;
   }
   
   @PostMapping("item_update")
   public ModelAndView item_update(@Valid Item item, BindingResult bresult, HttpServletRequest request, HttpSession session) throws Exception {
      ModelAndView mav = new ModelAndView();
      /* Admin_item dbAdmin_item = service.getAdmin_item(admin_item.getItemnum()); */
      if(bresult.hasErrors()) { //유효성 검증
         mav.getModel().putAll(bresult.getModel());
         return mav;
      }
      User adminUser =(User)session.getAttribute("adminUser");
		String userid = CipherUtil.makehash(adminUser.getUserid());
		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
		if (!item.getPassword().equals(pass)) {
			bresult.reject("error.login.password");
			return mav;
		}
      try {
         service.itemUpdate(item, request); //update의 위치를 알아야하므로 request객체가 있어야함.
         mav.setViewName("redirect:product_list.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new ItemException("업데이트 수정에 실패했습니다.","item_update.store?itemnum="+item.getItemnum());
      }
      return mav;
   }
   
   @PostMapping("item_delete")
   public ModelAndView item_delete(@Valid Item item,  BindingResult bresult, HttpSession session) {
      ModelAndView mav = new ModelAndView();
      try {
    	  User adminUser =(User)session.getAttribute("adminUser");
  		String userid = CipherUtil.makehash(adminUser.getUserid());
  		String pass = CipherUtil.decrypt(adminUser.getPassword(), userid.substring(0, 16));
  		if (!item.getPassword().equals(pass)) {
  			bresult.reject("error.login.password");
  			return mav;
  		}
         service.itemDelete(item);
         mav.setViewName("redirect:product_list.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new BoardException("게시글 삭제를 실패했습니다.","item_delete.store?itemnum="+item.getItemnum());
      }
      return mav;
   }
}