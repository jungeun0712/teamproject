<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
   uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript"
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
<title><decorator:title /></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="../images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/css-hamburgers/hamburgers.min.css">

<!--===============================================================================================-->
<!--    <link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
 -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/main_kje.css">
<link rel="stylesheet" type="text/css" href="../css/mypage_cyj.css">
<link rel="stylesheet" type="text/css" href="../css/main_kje2.css">
<link rel="stylesheet" type="text/css" href="../css/item_kje.css">
<link rel="stylesheet" type="text/css" href="../css/mypage_cyj2.css">
<link rel="stylesheet" type="text/css" href="../css/idx_cyj.css">

<!--===============================================================================================-->
<link href="../css/modern-business.css" rel="stylesheet">
<link type="text/css" rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans">
<link rel="shortcut icon"
   href="//t1.kakaocdn.net/kakaofriends_global/static/img/favicon.ico"
   type="image/x-ico">
<link
   href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,200,300,700,900&display=swap"
   rel="stylesheet">
<script type="text/javascript"
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
   src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
<!-- ... -->
</head>
<style type="text/css">
.hamburger-inner, .hamburger-inner::before, .hamburger-inner::after {
   width: 30px;
   height: 4px;
   background-color: black;
   border-radius: 4px;
   position: absolute;
   transition-property: transform;
   transition-duration: 0.15s;
   transition-timing-function: ease;
}
input[type=text] {
   width: 100%;
   box-sizing: border-box;
  /*  border: 1px solid #ccc; */
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   border-radius: 4px;
   font-size: 16px;
   background-color: white;
/*    background-size: 20px;
   background-image: url('../images/product/ico-header-search.png');
   background-position: 10px 15px;
   background-repeat: no-repeat; */
   padding-top: 14px;
   -webkit-transition: width 0.4s ease-in-out;
   transition: width 0.4s ease-in-out;
   font-weight: 100;
   color: black;
}
input[type='text'], input[type='password'], input[type='submit'], input[type='search'],
   input[type='tel'], input[type='email'], html input[type='button'],
   input[type='reset'] {
   -webkit-appearance: none;
   border-radius: 0;
}
</style>
<style type="text/css">
#boldfont_white {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 900;
   color: white;
   width: 100%;
   font-size: 25px;
}

#boldfont_black_de {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 900;
   color: black;
   width: 100%;
   font-size: 20px;
}

#lightfont_white {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: white;
   width: 100%;
   font-size: 18px;
}

#lightfont_black_de {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 300;
   color: black;
   font-size: 16px;
}

hover {
   color: black;
}

#search {
   position: absolute;
}

#urlchg:hover {
   color: black;
}

#h a:hover {
   font-weight: 700;
   color: black;
}
.hamburger-box {
    position: relative;
    display: inline-block;
    width: 40px;
    height: 10px;
}
</style>
<!-- ... -->
</head>

</head>
<decorator:head />
<body class="animsition" style="padding-top: 0px;">

   <!-- Header -->
   <header>
      <!-- Header desktop -->
      <div class="container-menu-desktop">
         <!-- Topbar -->


         <div class="wrap-menu-desktop" style="top: 0; width: 100%;">
            <div class="limiter-menu-desktop container">
               <!-- Menu desktop -->
               <div class="menu-desktop" style="width: 37vw;">
                  <ul class="main-menu" id="lightfont_black_de">
                     <li class="active-menu"><a href="" id="lightfont_black_de"
                        onclick="return false;">상품관리 <img
                           src="../images/index_deco/ico-header-triangle.png" width="7"
                           height="4">
                     </a>
                        <ul class="sub-menu deco7_hamburger_list" style="position: absolute;">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin_item/product_list.store" id="lightfont_black_de">상품 목록 관리</a>
                              </div>
                           </li>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin_in/order_item_in.store"
                                    id="lightfont_black_de">상품 입고 관리</a>
                              </div>
                           </li>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin_keep/order_item_list.store"
                                    id="lightfont_black_de">상품 재고 관리</a>
                              </div>
                           </li>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin_out/order_item_out.store"
                                    id="lightfont_black_de">상품 출고 관리</a>
                              </div>
                           </li>
                        </ul></li>
                     <li><a href="../admin_order/orderstate.store?pageNum=1"
                        id="lightfont_black_de">주문 상태 관리</a></li>
                     <li><a href="../admin_store/store_list.store"
                        id="lightfont_black_de">매장 관리</a></li>
                     <li><a href="../admin_change/change_return_order_list.store?pageNum=1"
                        id="lightfont_black_de">환불/교환/반품 관리</a></li>


                     <!--class="label1"  data-label1="hot"-->
                  </ul>
               </div>
               <!-- Logo desktop -->
               <div class="menu-desktop" style="width: 15vw;">
                  <a href="../admin/manager_index.store" class="logo" id="boldfont_black_de"
                     style="padding-left: 0px; text-decoration: none; text-align: center;">FRIEND STORE</a>
               </div>
               
               <div class="menu-desktop" style="width: 31vw;">
                  <ul class="main-menu">
                     <li class="active-menu"><a href="" id="lightfont_black_de"
                        onclick="return false;"><span style="margin: 1vw;">고객센터 관리</span>
                        </a>
                        <ul class="sub-menu deco7_hamburger_list" style="position: absolute;">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin_help/notice_list.store" id="lightfont_black_de">공지사항 목록 관리</a>
                              </div>
                           </li>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin_help/faq_list.store"
                                    id="lightfont_black_de">FAQ 목록 관리</a>
                              </div>
                           </li>
                        </ul></li>
                     <li><a href="../admin_contact/contact_list.store"
                        id="lightfont_black_de">1:1 문의 관리</a></li>
                 <li><a href="../admin/manager_index.store"
                        id="lightfont_black_de">${sessionScope.adminUser.username}</a></li>
                        <!-- 상태확인 -->
                        <c:if test="${1==0 }">
                     <li><a href="" onclick="return false;"
                        id="lightfont_black_de">&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                        </c:if>
                     <li class="active-menu"><a href="" id="lightfont_black_de"
                        onclick="return false;">관리자 <img
                           src="../images/index_deco/ico-header-triangle.png" width="7"
                           height="4">
                     </a>
                      <ul class="sub-menu deco7_hamburger_list" style="position: absolute;">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin/manager_list.store" id="lightfont_black_de">관리자 목록 관리</a>
                              </div>
                           </li>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin/manager_Entry.store"
                                    id="lightfont_black_de">관리자 회원가입</a>
                              </div>
                           </li>
                           <c:if test="${empty sessionScope.adminUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="${path}/admin/manager_login.store"
                                    id="lightfont_black_de">관리자 로그인</a>
                              </div>
                           </li>
                           </c:if>
                           <c:if test="${!empty sessionScope.adminUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="${path}/admin/logout.store"
                                    id="lightfont_black_de">로그아웃</a>
                              </div>
                           </li>
                           </c:if>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin/manager_info.store?userid=${sessionScope.adminUser.userid}"
                                    id="lightfont_black_de">관리자 정보확인</a>
                              </div>
                           </li>
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="../admin/manager.store"
                                    id="lightfont_black_de">관리자 승인관리</a>
                              </div>
                           </li>
                        </ul></li>
                  </ul>
               </div>
               <br>
            </div>
            <hr style="margin-top: 0.01%; margin-bottom: 0.01%;">
            <!-- Header Mobile -->
         </div>
      </div>


      <!-- Header Mobile -->
      <div class="wrap-header-mobile" style="width: 100%;">
         <!-- Button show menu -->

         <div style="width: 4%;"
            class="icon-header-item cl2 hov-cl1 trans-04 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
         </div>
         <!-- Logo moblie -->
         <div style="width: 84%; text-align: center;">
            <div style="width: 210px; display: inline-block;">
               <a href="../index.store" class="logo" id="boldfont_black_de">
                  KAKAO FRIENDS </a>
            </div>
         </div>
         <div style="width: 4%;"
            class="icon-header-item cl2 hov-cl1 trans-04 icon-header-noti js-show-cart">
            <i class="zmdi zmdi-shopping-cart"></i>
         </div>
      </div>
      <hr style="margin-top: 0.01%; margin-bottom: 0.01%;">

      <!-- Menu Mobile -->
      <div class="menu-mobile"
         style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; background-color: white; z-index: 1000000; height: 160px;">
         <ul class="topbar-mobile" style="width: auto; height: 90%;">
            <li style="height: 30%;">
               <div class="right-top-bar"
                  style="width: 80%; float: left; font-size: 20px;"
                  id="lightfont_black_de">
                  <a href="#" class=""
                     style="font-size: 20px; border: 1px solid transparent;"
                     id="lightfont_black_de"> 로그인 </a> 이 필요해요! &nbsp;&nbsp; <a
                     href="#" class=""
                     style="font-size: 20px; border: 1px solid transparent;"
                     id="lightfont_black_de"> 비회원 주문조회 <i
                     class="fa fa-angle-right" aria-hidden="true"></i>
                  </a>

               </div>
               <div style="width: 4%; float: right;"
                  class="btn-show-menu-mobile hamburger hamburger--squeeze is-active">
                  <span class="hamburger-box"> <span class="hamburger-inner"></span>
                  </span>
               </div>
            </li>
            <li style="height: 70%;">
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="20px" src="../images/index_deco/mobile/navi_cart.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">장바구니</a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="25" src="../images/index_deco/mobile/navi_wish.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">찜</a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="25" src="../images/index_deco/mobile/navi_order.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">주문배송</a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="25" src="../images/index_deco/mobile/navi_mypage.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">마이페이지</a>
                  </div>
               </div>
            </li>
         </ul>
         <ul class="main-menu-m">
            <li><img width="100%"
               src="../images/index_deco/mobile/banner_20200102184347_mobile_kr.jpg">
            </li>
         </ul>
         <table class="main-menu-m"
            style="text-align: center; font-size: 18px;" id="lightfont_black_de">
            <tbody>
               <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
                  <td
                     style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                     <a href="#" style="color: #1e1e1e; text-decoration: none;">전체</a>
                  </td>
                  <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                     href="#" style="color: #1e1e1e; text-decoration: none;">테마
                        기획전</a></td>
                  <td><a href="#"
                     style="color: #1e1e1e; text-decoration: none;">토이</a></td>
               </tr>
               <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
                  <td
                     style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                     <a href="#" style="color: #1e1e1e; text-decoration: none;">리빙</a>
                  </td>
                  <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                     href="#" style="color: #1e1e1e; text-decoration: none;">잡화</a></td>
                  <td><a href="#"
                     style="color: #1e1e1e; text-decoration: none;">문구</a></td>
               </tr>
               <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
                  <td
                     style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                     <a href="#" style="color: #1e1e1e; text-decoration: none;">의류</a>
                  </td>
                  <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                     href="#" style="color: #1e1e1e; text-decoration: none;">파자마</a></td>
                  <td><a href="#"
                     style="color: #1e1e1e; text-decoration: none;">여행/레져</a></td>
               </tr>
               <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
                  <td
                     style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                     <a href="#" style="color: #1e1e1e; text-decoration: none;">생활테그</a>
                  </td>
                  <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                     href="#" style="color: #1e1e1e; text-decoration: none;">폰
                        악세사리</a></td>
                  <td><a href="#"
                     style="color: #1e1e1e; text-decoration: none;">식품</a></td>
               </tr>
            </tbody>
         </table>
         <ul class="topbar-mobile">
            <li
               style="height: 140px; background-color: white; white-space: nowrap; overflow-x: auto; text-align: center;">
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_rion_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_rion_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_rion_on.png'">
                        <br> 라이언
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_apeach_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_apeach_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_apeach_on.png'">
                        <br> 어피치
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_muzi_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_muzi_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_muzi_on.png'">
                        <br> 무지
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_frodo_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_frodo_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_frodo_on.png'">
                        <br> 프로도
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_neo_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_neo_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_neo_on.png'">
                        <br> 네오
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_tube_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_tube_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_tube_on.png'">
                        <br> 튜브
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_jayz_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_jayz_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_jayz_on.png'">
                        <br> 제이지
                     </a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 10%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block;">
                     <a href="product/list.store"
                        style="border: 1px solid transparent; font-size: 18px;"
                        id="lightfont_black_de"> <img width="60"
                        src="../images/index_deco/character/category_con_off.png"
                        onmouseout="this.src='../images/index_deco/character/category_con_off.png'"
                        onmouseover="this.src='../images/index_deco/character/category_con_on.png'">
                        <br> 콘
                     </a>
                  </div>
               </div>
            </li>
         </ul>
         <ul class="topbar-mobile">
            <li
               style="height: 50px; background-color: white; border-top: 1px solid rgb(242, 242, 242); border-bottom: 1px solid rgb(242, 242, 242); padding: 10px;"
               id="lightfont_black_de"><a href="info/storeInfo.store"
               style="color: black; text-decoration: none;">매장안내</a></li>
            <li
               style="height: 50px; background-color: white; border-bottom: 1px solid rgb(242, 242, 242); padding: 10px;"
               id="lightfont_black_de"><a href="shoping-cart.html"
               style="color: black; text-decoration: none;">고객센터</a></li>
         </ul>
      </div>

      <!-- Modal Search -->
      <div
         class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
         <div class="container-search-header">
            <button
               class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
               <img src="../images/icons/icon-close2.png" alt="CLOSE">
            </button>

            <form class="wrap-search-header"
               style="border: 0px; background-color: transparent; width: 100%;">
               <div class="flex-c-m trans-04">
                  <input class="plh3" type="text" name="search"
                     placeholder="무엇을 찾으세요?">
               </div>
               <br>
               <div class="scroll-wrap-x">
                  <ul class="menu-area">
                     <li class="liroll"><a>전 체</a></li>
                     <li class="liroll"><a>테마 기획전</a></li>
                     <li class="liroll"><a>토 이</a></li>
                     <li class="liroll"><a>리 빙</a></li>
                     <li class="liroll"><a>잡 화</a></li>
                     <li class="liroll"><a>문 구</a></li>
                     <li class="liroll"><a>의 류</a></li>
                     <li class="liroll"><a>파자마</a></li>
                     <li class="liroll"><a>여행 / 레져</a></li>
                     <li class="liroll"><a>생활 테크</a></li>
                     <li class="liroll"><a>폰 액세서리</a></li>
                     <li class="liroll"><a>식 품</a></li>
                  </ul>
               </div>
               <div class="scroll-wrap-y">
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"> <img
                           src="../images/index_deco/mobile/search-apeach.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"> <img
                           src="../images/index_deco/mobile/search-con.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="../images/index_deco/mobile/search-frodo.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="../images/index_deco/mobile/search-jayg.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="../images/index_deco/mobile/search-muzi.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="../images/index_deco/mobile/search-neo.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="../images/index_deco/mobile/search-ryan.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="../product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="../images/index_deco/mobile/search-tube.png">
                        </a>
                     </div>
                  </div>
               </div>
               <script type="text/javascript">
                  $(document)
                        .ready(
                              function() {
                                 $('.menu-area')
                                       .each(
                                             function() {
                                                var _width = $(
                                                      this)
                                                      .width(), _length = $(this).length, $
                                                ('.scroll-wrap')
                                                      .scrollLeft((_width / _length)
                                                            * _index);
                                             });
                              });
               </script>
            </form>
         </div>
      </div>
   </header>

   <!-- Cart -->




   <!-- Slider -->
   <section class="section-slide">
      <div></div>
   </section>

   <!-- Banner -->
   <!-- <div class="sec-banner bg0 p-t-80 p-b-50">
   </div> -->

   <!-- Product -->
   <section class="bg0 p-b-140"
      style="padding-top: 6%; padding-bottom: 10%;">
      <div class="container">
         <decorator:body />
         <div class="flex-w flex-sb-m p-b-25">
            <!-- Search product -->
            <div class="dis-none panel-search w-full p-t-10 p-b-15">
               <div class="bor8 dis-flex p-l-15">
                  <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                     <i class="zmdi zmdi-search"></i>
                  </button>

                  <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text"
                     name="search-product" placeholder="Search">
               </div>
            </div>

            <!-- Filter -->
            
         </div>

         <div class="row isotope-grid"></div>
      </div>
   </section>


   <!-- Footer -->
   <footer class="bg3 p-t-75 p-b-32">
      <div class="container">
         <a href="#" style="font-size: 18px; text-decoration: none;"
            class="stext-107 cl7 noul">개인정보처리방침 </a>&nbsp;&nbsp;&nbsp; <a
            href="#" style="font-size: 18px; text-decoration: none;"
            class="stext-107 cl7 noul">이용약관 </a>&nbsp;&nbsp;&nbsp; <a href="#"
            style="font-size: 18px; text-decoration: none;"
            class="stext-107 cl7 noul">제휴문의 </a> <br> <br> <br>
         <div class="">
            <div class="col-sm-6 col-lg-3 p-b-50">
               <p class="stext-107 cl7 size-700">
                  카카오아이엑스 사업자등록번호 : 354-86-00070<br> 통신판매업 신고번호 :
                  2017-서울강남-02573<br> 대표이사 : 권승조<br> 주소 : 서울특별시 강남구 테헤란로
                  521 파르나스타워, 27층<br> 고객센터 : 1577-6263 / 평일 10시 ~ 18시<br>
                  <br> Copyright © KAKAO IX CORP.
                  <!--    <div class="p-t-27">
                  <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
                     class="fa fa-facebook"></i>
                  </a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
                     class="fa fa-instagram"></i>
                  </a> <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16"> <i
                     class="fa fa-pinterest-p"></i>
                  </a>
               </div> -->
            </div>
         </div>
      </div>
   </footer>


   <!-- Back to top -->
   <div class="page_up" id="myBtn" style="display: none;">TOP</div>

   <!-- Modal1 -->
   <div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
      <div class="overlay-modal1 js-hide-modal1"></div>

      <div class="container">
         <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
            <button class="how-pos3 hov3 trans-04 js-hide-modal1">
               <img src="../images/icons/icon-close.png" alt="CLOSE">
            </button>

            <div class="row">
               <div class="col-md-6 col-lg-7 p-b-30">
                  <div class="p-l-25 p-r-30 p-lr-0-lg">
                     <div class="wrap-slick3 flex-sb flex-w">
                        <div class="wrap-slick3-dots"></div>
                        <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                        <div class="slick3 gallery-lb">
                           <div class="item-slick3"
                              data-thumb="../images/product/20200102183712810_8809681703895_AW_00.jpg">
                              <div class="wrap-pic-w pos-relative">
                                 <img
                                    src="../images/product/20200102183712810_8809681703895_AW_00.jpg"
                                    alt="IMG-PRODUCT"> <a
                                    class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                    href="../images/product/20200102183712810_8809681703895_AW_00.jpg">
                                    <i class="fa fa-expand"></i>
                                 </a>
                              </div>
                           </div>

                           <div class="item-slick3"
                              data-thumb="../images/product/20200102183712848_8809681703895_AW_01.jpg">
                              <div class="wrap-pic-w pos-relative">
                                 <img
                                    src="../images/product/20200102183712848_8809681703895_AW_01.jpg"
                                    alt="IMG-PRODUCT"> <a
                                    class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                    href="../images/product/20200102183712848_8809681703895_AW_01.jpg">
                                    <i class="fa fa-expand"></i>
                                 </a>
                              </div>
                           </div>

                           <div class="item-slick3"
                              data-thumb="../images/product/20200102183713022_8809681703895_AW_02.jpg">
                              <div class="wrap-pic-w pos-relative">
                                 <img
                                    src="../images/product/20200102183713022_8809681703895_AW_02.jpg"
                                    alt="IMG-PRODUCT"> <a
                                    class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
                                    href="../images/product/20200102183713022_8809681703895_AW_02.jpg">
                                    <i class="fa fa-expand"></i>
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>

               <div class="col-md-6 col-lg-5 p-b-30">
                  <div class="p-r-50 p-t-5 p-lr-0-lg">
                     <h4 class="mtext-105 cl2 js-name-detail p-b-14">
                        롱바디필로우_후드라이언(핑크)</h4>

                     <span class="mtext-106 cl2"> 49,000원 </span>

                     <p class="stext-102 cl3 p-t-23">잠잘때 필수템! 갖고싶다</p>

                     <!--  -->
                     <div class="p-t-33"></div>

                     <div class="flex-w flex-r-m p-b-10">
                        <div class="size-204 flex-w flex-m respon6-next">
                           <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                              <div
                                 class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                 <i class="fs-16 zmdi zmdi-minus"></i>
                              </div>

                              <input class="mtext-104 cl3 txt-center num-product"
                                 type="number" name="num-product" value="1">

                              <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                 <i class="fs-16 zmdi zmdi-plus"></i>
                              </div>
                           </div>

                           <button
                              class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
                              장바구니 담기</button>
                        </div>
                     </div>
                  </div>

                  <!--  -->
                  <div class="flex-w flex-m p-l-100 p-t-40 respon7">
                     <div class="flex-m bor9 p-r-10 m-r-11">
                        <a href="#"
                           class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
                           data-tooltip="Add to Wishlist"> <i
                           class="zmdi zmdi-favorite"></i>
                        </a>
                     </div>

                     <a href="#"
                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                        data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
                     </a> <a href="#"
                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                        data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
                     </a> <a href="#"
                        class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
                        data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!--===============================================================================================-->
   <script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script src="../vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script src="../vendor/bootstrap/js/popper.js"></script>
   <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script src="../vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function() {
         $(this).select2({
            minimumResultsForSearch : 20,
            dropdownParent : $(this).next('.dropDownSelect2')
         });
      })
   </script>
   <!--===============================================================================================-->
   <script src="../vendor/daterangepicker/moment.min.js"></script>
   <script src="../vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
   <script src="../vendor/slick/slick.min.js"></script>
   <script src="../js/slick-custom.js"></script>
   <!--===============================================================================================-->
   <script src="../vendor/parallax100/parallax100.js"></script>
   <script>
      $('.parallax100').parallax100();
   </script>
   <!--===============================================================================================-->
   <script src="../vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <script>
      $('.gallery-lb').each(function() { // the containers for all your galleries
         $(this).magnificPopup({
            delegate : 'a', // the selector for gallery item
            type : 'image',
            gallery : {
               enabled : true
            },
            mainClass : 'mfp-fade'
         });
      });
   </script>
   <!--===============================================================================================-->
   <script src="../vendor/isotope/isotope.pkgd.min.js"></script>
   <!--===============================================================================================-->
   <script src="../vendor/sweetalert/sweetalert.min.js"></script>
   <script>
      $('.js-addwish-b2').on('click', function(e) {
         e.preventDefault();
      });
      $('.js-addwish-b2').each(
            function() {
               var nameProduct = $(this).parent().parent().find(
                     '.js-name-b2').html();
               $(this).on('click', function() {
                  swal(nameProduct, "is added to wishlist !", "success");
                  $(this).addClass('js-addedwish-b2');
                  $(this).off('click');
               });
            });
      $('.js-addwish-detail').each(
            function() {
               var nameProduct = $(this).parent().parent().parent().find(
                     '.js-name-detail').html();
               $(this).on('click', function() {
                  swal(nameProduct, "is added to wishlist !", "success");
                  $(this).addClass('js-addedwish-detail');
                  $(this).off('click');
               });
            });
      /*---------------------------------------------*/
      $('.js-addcart-detail').each(
            function() {
               var nameProduct = $(this).parent().parent().parent()
                     .parent().find('.js-name-detail').html();
               $(this).on('click', function() {
                  swal(nameProduct, "is added to cart !", "success");
               });
            });
   </script>
   <!--===============================================================================================-->
   <script src="../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script>
      $('.js-pscroll').each(function() {
         $(this).css('position', 'relative');
         $(this).css('overflow', 'hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed : 1,
            scrollingThreshold : 1000,
            wheelPropagation : false,
         });
         $(window).on('resize', function() {
            ps.update();
         })
      });
   </script>
   <!--===============================================================================================-->
   <!-- <script src="../js/main.js"></script> -->

   <!--===============================================================================================-->
   <script>
      /*Dropdown Menu*/
      $('.dropdown').click(function() {
         $(this).attr('tabindex', 1).focus();
         $(this).toggleClass('active');
         $(this).find('.dropdown-menu').slideToggle(300);
      });
      $('.dropdown').focusout(function() {
         $(this).removeClass('active');
         $(this).find('.dropdown-menu').slideUp(300);
      });
      $('.dropdown .dropdown-menu li').click(
            function() {
               $(this).parents('.dropdown').find('span').text(
                     $(this).text());
               $(this).parents('.dropdown').find('input').attr('value',
                     $(this).attr('id'));
            });
      /*End Dropdown Menu*/
   </script>
   <script src="../js/main_idx.js"></script>
   <!--===============================================================================================-->

</body>
</html>