<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
   uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title><decorator:title /></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<!-- <link rel="stylesheet" type="text/css"
   href="vendor/animsition/css/animsition.min.css"> -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/main_phy.css">
<link rel="stylesheet" type="text/css" href="css/category_cyj.css">
<link rel="stylesheet" type="text/css" href="css/idx_cyj.css">
<!--===============================================================================================-->

<link href="css/modern-business.css" rel="stylesheet">
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
  <script type="text/javascript" src= "http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
<style type="text/css">
#boldfont_black_de {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 900;
   color: black;
   width: 100%;
   font-size: 24px;
}

.hamburger-inner, .hamburger-inner::before, .hamburger-inner::after {
   width: 40px;
   height: 4px;
   background-color: black;
   border-radius: 4px;
   position: absolute;
   transition-property: transform;
   transition-duration: 0.15s;
   transition-timing-function: ease;
}

#new_main_block {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   font-size: 18px;
   width: 18%;
   height: 100%;
}

#new_main_block.stext-106.cl6.trans-04.how-active1 {
   font-weight: 700;
}
#wish_main_block {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   font-size: 18px;
   width: 18%;
   height: 100%;
}

#wish_main_block.stext-106.cl6.trans-04.how-active1 {
   font-weight: 700;
}
#all_main_block {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   font-size: 18px;
   width: 18%;
   height: 100%;
}

#all_main_block.stext-106.cl6.trans-04.how-active1 {
   font-weight: 700;
}
</style>
<style>
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
   font-weight: 200;
   color: black;
   font-size: 23px;
}

li:hover {
   color: black;
}

#search {
   position: absolute;
}

input[type=text] {
   width: 100%;
   box-sizing: border-box;
   border: 1px solid #ccc;
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   border-radius: 4px;
   font-size: 16px;
   background-color: white;
   background-size: 20px;
   background-image: url('images/product/ico-header-search.png');
   background-position: 10px 15px;
   background-repeat: no-repeat;
   padding: 12px 20px 12px 40px;
   -webkit-transition: width 0.4s ease-in-out;
   transition: width 0.4s ease-in-out;
   font-weight: 100;
   color: black;
}

#urlchg:hover {
   color: black;
}

#h a:hover {
   font-weight: 700;
   color: black;
}
.no{
   pointer-events : none;
   cursor : default;
}
</style>
<!-- ... -->
</head>
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
            <div class="limiter-menu-desktop container" style="height: 50%;">
               <!-- Menu desktop -->
               <div class="menu-desktop" style="width: 30%;">
                  <ul class="main-menu" id="lightfont_black_de">
                     <li class="active-menu"><a href="item/list.store"
                        id="my_ll_b" style="font-size: 17px;">카테고리 <img
                           src="images/index_deco/ico-header-triangle.png" width="7"
                           height="4">
                     </a>
                        <ul class="sub-menu" style="position: absolute;">
                           <li><div class="cate_list">
                                 <div class="cate_main_sub">
                                    <div class="cate_main">
                                          <ul>
                                        <!-- 	  <li class="cate_main_notclick" id="all"><a
                                             style="font-size: 17px;" href="item/list.store">전체</a></li> -->
                                          <li class="cate_main_notclick" id="toy"><a
                                             style="font-size: 17px;" href="item/list.store?category=1">토이</a></li>
                                          <li class="cate_main_notclick" id="cloth"><a
                                             style="font-size: 17px;" href="item/list.store?category=2">의류</a></li>
                                          <li class="cate_main_notclick" id="tech"><a
                                             style="font-size: 17px;" href="item/list.store?category=3">생활 테크</a></li>
                                       </ul>

                                    </div>
                                    <ul id="all_ul" style="display: none;">
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?sort=1">인기 순</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?sort=2">리뷰 순</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?sort=3">신상품 순</a></li>
                                    </ul>
                                       <ul id="toy_ul" style="display: none;">
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?category=1&subcategory=1">미니 인형</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?category=1&subcategory=2">중형 인형</a></li>
                                       <!-- <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store?category=1">대형 인형</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store?category=1">키체인 인형</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store?category=1">피규어/브릭</a></li> -->
                                    </ul>
                                    <ul id="cloth_ul" style="display: none;">
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?category=2&subcategory=1">여성</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?category=2&subcategory=2">남성</a></li>
                                       <!-- <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store">키즈</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store">속옷</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store">양말</a></li> -->
                                    </ul>
                                    <ul id="tech_ul" style="display: none;">
                                    <!--    <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store">노트북
                                             액세서리</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="../item/list.store">소형 전자</a></li> -->
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?category=3&subcategory=1">에어팟
                                             케이스</a></li>
                                       <li class="cate_sub_notclick"><a
                                          style="font-size: 17px;" href="item/list.store?category=3&subcategory=2">에어팟
                                             액세서리</a></li>
                                    </ul>

                                 </div>
                                 <div class="cate_character">
                                    <div class="cate_character_in">
                                       <ul class="friends">
                                          <li>
                                             <div class="friend_one" id="rion">
                                                <div>
                                                   <span class="friend_pic" onclick="location.href='item/list.store?character=1'"> <img
                                                      class="friend_img" id="friend_img_rion"
                                                      src="images/index_deco/character/category_rion_off.png"
                                                      alt="라이언">
                                                   </span>
                                                </div>
                                                <span class="friend_name friend_name_rion" id="my_l_b">라이언</span>
                                             </div>

                                          </li>
                                          <li>
                                             <div class="friend_one" id="apeach">
                                                <div>
                                                   <span class="friend_pic" onclick="location.href='item/list.store?character=2'"> <img
                                                      class="friend_img" id="friend_img_apeach"
                                                      src="images/index_deco/character/category_apeach_off.png"
                                                      alt="어피치">
                                                   </span>
                                                </div>
                                                <span class="friend_name friend_name_apeach" id="my_l_b">어피치</span>
                                             </div>

                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div></li>
                        </ul></li>
                     <li><a href="info/storeInfo.store" id="my_ll_b"
                        style="font-size: 17px;">매장안내</a></li>
                     <!--class="label1"  data-label1="hot"-->
                     <li><a href="help/notice.store" id="my_ll_b"
                        style="font-size: 17px;">고객센터</a></li>
                  </ul>

               </div>
               <!-- Logo desktop -->
               <div class="menu-desktop" style="width: 22vw;">
                  <a href="index.store" class="logo" id="boldfont_black_de"
                     style="padding-left: 100px;">FRIEND STORE</a>
               </div>

               <!-- Icon header -->
               <div class="wrap-icon-header flex-w flex-r-m" style="width: 35%;">
                   <form style="width: 50%;" method="get" action="item/search.store">
                     <input type="text" name="keyword" placeholder="무엇을 찾으세요?">
               </form>
                  <ul class="main-menu" id="lightfont_black_de">
                     <li class="active-menu"><a href="mypage/myindex.store"
                        id="lightfont_black_de"><span style="margin: 0.3vw;">
                              <i class="fa fa-user" aria-hidden="true"></i>
                        </span> </a>
                        <ul class="sub-menu deco7_hamburger_list"
                           style="position: absolute;">
                           <c:if test="${empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="user/signin.store" id="ll_b_de">로그인</a>
                              </div>
                           </li>
                           </c:if>
                           <c:if test="${!empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="user/logout.store" id="ll_b_de">로그아웃</a>
                              </div>
                           </li>
                           </c:if>
                           <c:if test="${empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/orderlistpage.store" class="no" id="ll_b_de">
                                    주문내역
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                           <c:if test="${!empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/orderlistpage.store" id="ll_b_de">
                                    주문내역
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                           <c:if test="${empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/wishlist.store" class="no" id="ll_b_de">
                                    찜
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                           <c:if test="${!empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/wishlist.store" id="ll_b_de">
                                    찜
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                           
                           <c:if test="${empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/pointlist.store" class="no" id="ll_b_de">
                                    포인트
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                           <c:if test="${!empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/pointlist.store" id="ll_b_de">
                                    포인트
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                            <c:if test="${empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/contactpage.store" class="no" id="ll_b_de">
                                    1:1문의
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           
                           <c:if test="${!empty sessionScope.loginUser}">
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="mypage/contactpage.store" id="ll_b_de">
                                    1:1문의
                                 </a>
                              </div>
                           </li> 
                           </c:if> 
                           <li>
                              <div style="width: 90%;" id="h">
                                 <a href="nonmember/nonmember.store" id="ll_b_de">비회원 주문조회</a>
                              </div>
                           </li>
                        </ul></li>
                  </ul>

                  <ul class="main-menu" id="lightfont_black_de">
                     <li class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
                        <a href="mypage/cart.store" id="lightfont_black_de"><span
                           style="margin: 0.3vw;"> <i
                              class="zmdi zmdi-shopping-cart"></i></span> </a>
                     </li>
                  </ul>
                  <ul class="main-menu" id="lightfont_black_de">
                     <li class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
                        <a href="mypage/wishlist.store" id="lightfont_black_de"><span
                           style="margin: 0.3vw;"> <i
                              class="zmdi zmdi-favorite-outline"></i></span> </a>
                     </li>
                  </ul>
               </div>
               <br>
            </div>
            <hr style="margin-top: 0.01%; margin-bottom: 0.01%;">
            <div class="limiter-menu-desktop container"
               style="background-color: white; height: 50%; width: 100%; text-align: center;">
               <!-- tab header -->
               <br>
               <div class="flex-w flex-l-m filter-tope-group"
                  style="width: 100%; height: 100%; display: inline-block;">
         
                  <button id="new_main_block" class="stext-106 cl6 trans-04 how-active1"
                     data-filter=".new">신규</button>

                  <button id="wish_main_block" class="stext-106 cl6 trans-04 "
                     data-filter=".wish">인기</button>

                  <button id="all_main_block" class="stext-106 cl6 trans-04 "
                     data-filter=".all">전체</button>
               </div>
            </div>
            <hr style="margin-top: 0.01%; margin-bottom: 0.01%;">
            <!-- Header Mobile -->
         </div>
      </div>
      <div class="wrap-header-mobile" style="width: 100%;">
         <!-- Button show menu -->
         <div style="width: 8%;"
            class="btn-show-menu-mobile hamburger hamburger--squeeze">
            <span class="hamburger-box"> <span class="hamburger-inner"></span>
            </span>
         </div>
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
                     <img width="20px" src="images/index_deco/mobile/navi_cart.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">장바구니</a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="25" src="images/index_deco/mobile/navi_wish.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">찜</a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="25" src="images/index_deco/mobile/navi_order.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">주문배송</a>
                  </div>
               </div>
               <div class="right-top-bar"
                  style="width: 25%; height: 100%; float: left; font-size: 20px; text-align: center; padding-top: 20px; padding-bottom: 10px;"
                  id="lightfont_black_de">
                  <div style="display: inline-block; width: 100%; height: 40%;">
                     <img width="25" src="images/index_deco/mobile/navi_mypage.png">
                  </div>
                  <div style="display: inline-block;">
                     <a style="border: 1px solid transparent;">마이페이지</a>
                  </div>
               </div>
            </li>
         </ul>
         <ul class="main-menu-m">
            <li><img width="100%"
               src="images/index_deco/mobile/banner_20200102184347_mobile_kr.jpg">
            </li>
         </ul>
         <table class="main-menu-m"
            style="text-align: center; font-size: 18px;" id="lightfont_black_de">
            <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
               <td
                  style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                  <a href="#" style="color: #1e1e1e; text-decoration: none;">전체</a>
               </td>
               <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                  href="#" style="color: #1e1e1e; text-decoration: none;">테마 기획전</a>
               </td>
               <td><a href="#" style="color: #1e1e1e; text-decoration: none;">토이</a>
               </td>
            </tr>
            <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
               <td
                  style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                  <a href="#" style="color: #1e1e1e; text-decoration: none;">리빙</a>
               </td>
               <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                  href="#" style="color: #1e1e1e; text-decoration: none;">잡화</a></td>
               <td><a href="#" style="color: #1e1e1e; text-decoration: none;">문구</a>
               </td>
            </tr>
            <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
               <td
                  style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                  <a href="#" style="color: #1e1e1e; text-decoration: none;">의류</a>
               </td>
               <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                  href="#" style="color: #1e1e1e; text-decoration: none;">파자마</a></td>
               <td><a href="#" style="color: #1e1e1e; text-decoration: none;">여행/레져</a>
               </td>
            </tr>
            <tr style="border-bottom: 1px solid rgb(242, 242, 242);">
               <td
                  style="display: block; height: auto; line-height: normal; padding: 15px 0px; border-right: 1px solid rgb(242, 242, 242);">
                  <a href="#" style="color: #1e1e1e; text-decoration: none;">생활테그</a>
               </td>
               <td style="border-right: 1px solid rgb(242, 242, 242);"><a
                  href="#" style="color: #1e1e1e; text-decoration: none;">폰 악세사리</a>
               </td>
               <td><a href="#" style="color: #1e1e1e; text-decoration: none;">식품</a>
               </td>
            </tr>
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
                        src="images/index_deco/character/category_rion_off.png"
                        onmouseout="this.src='images/index_deco/character/category_rion_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_rion_on.png'">
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
                        src="images/index_deco/character/category_apeach_off.png"
                        onmouseout="this.src='images/index_deco/character/category_apeach_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_apeach_on.png'">
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
                        src="images/index_deco/character/category_muzi_off.png"
                        onmouseout="this.src='images/index_deco/character/category_muzi_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_muzi_on.png'">
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
                        src="images/index_deco/character/category_frodo_off.png"
                        onmouseout="this.src='images/index_deco/character/category_frodo_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_frodo_on.png'">
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
                        src="images/index_deco/character/category_neo_off.png"
                        onmouseout="this.src='images/index_deco/character/category_neo_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_neo_on.png'">
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
                        src="images/index_deco/character/category_tube_off.png"
                        onmouseout="this.src='images/index_deco/character/category_tube_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_tube_on.png'">
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
                        src="images/index_deco/character/category_jayz_off.png"
                        onmouseout="this.src='images/index_deco/character/category_jayz_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_jayz_on.png'">
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
                        src="images/index_deco/character/category_con_off.png"
                        onmouseout="this.src='images/index_deco/character/category_con_off.png'"
                        onmouseover="this.src='images/index_deco/character/category_con_on.png'">
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
               <img src="images/icons/icon-close2.png" alt="CLOSE">
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
                        <a href="product/list.store"> <img
                           src="images/index_deco/mobile/search-apeach.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"> <img
                           src="images/index_deco/mobile/search-con.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="images/index_deco/mobile/search-frodo.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="images/index_deco/mobile/search-jayg.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="images/index_deco/mobile/search-muzi.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="images/index_deco/mobile/search-neo.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="images/index_deco/mobile/search-ryan.png">
                        </a>
                     </div>
                  </div>
                  <div class="liroll_character">
                     <div
                        style="width: 10%; height: 100%; font-size: 18px; text-align: center; padding-top: 20px; padding-bottom: 10px; margin-left: 10px; margin-right: 10px;"
                        id="lightfont_black_de">
                        <a href="product/list.store"
                           style="border: 1px solid transparent; font-size: 18px;"
                           id="lightfont_black_de"> <img
                           src="images/index_deco/mobile/search-tube.png">
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
                                                      .width(), _length = $(this).length,

                                                $
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
   <!-- Slider -->
   <!-- <section class="section-slide">
      <div></div>
   </section> -->

   <!-- Banner -->
   <div style="padding-top: 20px;"></div>

   <!-- Product -->
   <section class="bg0 p-b-140"
      style="padding-top: 6%; padding-bottom: 10%;">
      <div class="container">
         <decorator:body />
      </div>
   </section>

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
            </div>
         </div>
      </div>
   </footer>

   <!-- Back to top -->
   <div class="page_up" id="myBtn" style="display: none;">TOP</div>

   <!-- Modal1 -->


   <!--===============================================================================================-->
   <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script src="vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script src="vendor/bootstrap/js/popper.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script src="vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function() {
         $(this).select2({
            minimumResultsForSearch : 20,
            dropdownParent : $(this).next('.dropDownSelect2')
         });
      })
   </script>
   <!--===============================================================================================-->
   <script src="vendor/daterangepicker/moment.min.js"></script>
   <script src="vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
   <script src="vendor/slick/slick.min.js"></script>
   <script src="js/slick-custom.js"></script>
   <!--===============================================================================================-->
   <script src="vendor/parallax100/parallax100.js"></script>
   <script>
      $('.parallax100').parallax100();
   </script>
   <!--===============================================================================================-->
   <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
   <script src="vendor/isotope/isotope.pkgd.min.js"></script>
   <!--===============================================================================================-->
   <script src="vendor/sweetalert/sweetalert.min.js"></script>
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
   <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
   <script src="js/main_idx.js"></script>

   <script type="text/javascript">
      $("#all").hover(function() {
         $(this).attr('class', 'cate_main_click');
         $("#toy").attr('class', 'cate_main_notclick')
         $("#cloth").attr('class', 'cate_main_notclick')
         $("#tech").attr('class', 'cate_main_notclick')
      });
      $("#toy").hover(function() {
         $(this).attr('class', 'cate_main_click');
         $("#all").attr('class', 'cate_main_notclick')
         $("#cloth").attr('class', 'cate_main_notclick')
         $("#tech").attr('class', 'cate_main_notclick')
      });
      $("#cloth").hover(function() {
         $(this).attr('class', 'cate_main_click');
         $("#all").attr('class', 'cate_main_notclick')
         $("#toy").attr('class', 'cate_main_notclick')
         $("#tech").attr('class', 'cate_main_notclick')
      });
      $("#tech").hover(function() {
         $(this).attr('class', 'cate_main_click');
         $("#all").attr('class', 'cate_main_notclick')
         $("#toy").attr('class', 'cate_main_notclick')
         $("#cloth").attr('class', 'cate_main_notclick')
      });
   </script>
   <script type="text/javascript">
      $("#all").hover(function() {
         $("#all_ul").show()
         $("#toy_ul").hide()
         $("#cloth_ul").hide()
         $("#tech_ul").hide()
      }, function() {
         $("#toy_ul").hide()
         $("#cloth_ul").hide()
         $("#tech_ul").hide()
      });
      $("#toy").hover(function() {
         $("#toy_ul").show()
         $("#all_ul").hide()
         $("#cloth_ul").hide()
         $("#tech_ul").hide()
      }, function() {
         $("#all_ul").hide()
         $("#cloth_ul").hide()
         $("#tech_ul").hide()
      });
      $("#cloth").hover(function() {
         $("#cloth_ul").show()
         $("#all_ul").hide()
         $("#toy_ul").hide()
         $("#tech_ul").hide()
      }, function() {
         $("#all_ul").hide()
         $("#toy_ul").hide()
         $("#tech_ul").hide()
      });
      $("#tech").hover(function() {
         $("#tech_ul").show()
         $("#all_ul").hide()
         $("#toy_ul").hide()
         $("#cloth_ul").hide()
      }, function() {
         $("#all_ul").hide()
         $("#toy_ul").hide()
         $("#cloth_ul").hide()
      });
   </script>
   <script type="text/javascript">
      $(".cate_sub_notclick").hover(function() {
         $(this).attr('class', 'cate_sub_click');
      }, function() {
         $(this).attr('class', 'cate_sub_notclick');
      });
   </script>
   <script type="text/javascript">
      $("#rion")
            .hover(
                  function() {
                     $("#friend_img_rion")
                           .attr("src",
                                 "images/index_deco/character/category_rion_on.png")
                     $(".friend_name_rion").css('font-weight', '700')
                  },
                  function() {
                     $("#friend_img_rion")
                           .attr("src",
                                 'images/index_deco/character/category_rion_off.png')
                     $(".friend_name_rion").css('font-weight', '200')
                  });
      $("#apeach")
            .hover(
                  function() {
                     $("#friend_img_apeach")
                           .attr("src",
                                 'images/index_deco/character/category_apeach_on.png')
                     $(".friend_name_apeach").css('font-weight', '700')
                  },
                  function() {
                     $("#friend_img_apeach")
                           .attr("src",
                                 'images/index_deco/character/category_apeach_off.png')
                     $(".friend_name_apeach").css('font-weight', '200')
                  });
   </script>
   <script type="text/javascript">
   $('#new_main_block').click(function() {
      $('.new_block').attr('aria-hidden','false')
      $('.all_block').attr('aria-hidden','true')
      $('.wish_block').attr('aria-hidden','true')
      $('.main_block_list').css('transform','translate3d(0px, 0px, 0px)')
      
   })
   $('#wish_main_block').on('click',function() {
      $('.wish_block').attr('aria-hidden','false')
      $('.new_block').attr('aria-hidden','true')
      $('.all_block').attr('aria-hidden','true')
      $('.main_block_list').css('transform','translate3d(-1120px, 0px, 0px)')
   })
   $('#all_main_block').on('click',function() {
      $('.all_block').attr('aria-hidden','false')
      $('.new_block').attr('aria-hidden','true')
      $('.wish_block').attr('aria-hidden','true')
      $('.main_block_list').css('transform','translate3d(-2340px, 0px, 0px)')
   })
   </script>
</body>
</html>