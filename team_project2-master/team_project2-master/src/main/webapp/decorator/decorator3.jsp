<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="url" value="${pageContext.request.requestURL}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title><decorator:title/></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" type="text/css"
	href="../fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
<!-- ... -->
<link rel="stylesheet" type="text/css"
	href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../vendor/slick/slick.css">
<!--=============================================================================== ================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main_cyj.css">
<link rel="stylesheet" type="text/css" href="../css/idx_cyj.css">
<!--===============================================================================================-->
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans">
<link rel="shortcut icon" href="//t1.kakaocdn.net/kakaofriends_global/static/img/favicon.ico" type="image/x-ico">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,200,300,900&display=swap" rel="stylesheet">
<!-- ... -->
</head>
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
	font-size: 25px;
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
	font-weight: 100;	
	color: black;
	width: 100%;
	font-size: 18px;
}
a.noul:hover {
	text-decoration: none;
	color: #b2b2b2;
}

</style>
</head>
<decorator:head />
</head>
<body class="animsition">

	<!-- Header -->
	<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop" >
			<!-- Topbar -->

			<div class="wrap-menu-desktop" >
				<nav class="limiter-menu-desktop container" >

					<!-- Logo desktop -->
				<div style="width: 75%;">
					<div style="width: 210px;">
						<a href="../index.store" class="logo" id="boldfont_white" > 
							FRIEND STORE
						</a>
					</div>
				</div>
				

					<!-- Menu desktop -->
					<div class="menu-desktop" style="width: 25%; ">
						<ul class="main-menu" >
							<li><a href="characterInfo.store" id="lightfont_white" 
							<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">
							style="text-decoration: underline;"</c:if>
							>캐릭터 소개</a></li>
							<!-- 							
								<li class="label1" data-label1="hot"><a
								href="shoping-cart.html" id="lightfont_white" >매장 안내</a></li>
								 -->
							<li style="margin-left: 46px;"><a
								href="storeInfo.store" id="lightfont_white" 
							<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">
							style="text-decoration: underline;"</c:if>
								>매장 안내</a></li>
						</ul>
					</div>

					<!-- Icon header -->

				</nav>
			</div>
			</div>
			<!-- Header Mobile -->
		<div class="wrap-header-mobile" style="position: absolute;"> 
			<!-- Logo moblie -->
			<div style="width: 95%;">
				<div style="width: 210px;">
					<a href="../index.store" class="logo" id="boldfont_white" > 
							FRIEND STORE
						</a>
				</div>
			</div>
						
			<!-- Icon header -->

			<!-- Button show menu -->
			<div style="width: 5%;">
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
			</div>
		</div>

		

		<!-- Menu Mobile -->
		<div class="menu-mobile" style="z-index: 100; display: none; padding-top: 64px; position: absolute;">
			<div class="main-menu-m" style="padding-left: 15px;"> 
				<div><a href="characterInfo.store" id="lightfont_white" 
				<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">style="text-decoration: underline;"</c:if>
				>캐릭터 소개</a></div>
				<br>
				<div><a href="storeInfo.store" id="lightfont_white" 
				<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">style="text-decoration: underline;"</c:if>
				>매장 안내</a></div>
			</div>
		</div>
	</header>
	</c:if>
	<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop" >
			<!-- Topbar -->


			<div class="wrap-menu-desktop" >
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
				<div style="width: 75%;">
					<div style="width: 210px;">
						<a href="../index.store" class="logo" id="boldfont_black_de" > 
							FRIEND STORE
						</a>
					</div>
				</div>
				
				

					<!-- Menu desktop -->
					<div class="menu-desktop" style="width: 25%; ">
						<ul class="main-menu" >
							<li><a href="characterInfo.store" id="lightfont_black_de" 
							<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">
							style="text-decoration: underline;"</c:if>
							>캐릭터 소개</a></li>
							<!-- 							
								<li class="label1" data-label1="hot"><a
								href="shoping-cart.html" id="lightfont_white" >매장 안내</a></li>
								 -->
							<li style="margin-left: 46px;"><a
								href="storeInfo.store" id="lightfont_black_de" 
							<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">
							style="text-decoration: underline;"</c:if>
								>매장 안내</a></li>
						</ul>
					</div>

					<!-- Icon header -->

				</nav>
			</div>
			</div>
			<!-- Header Mobile -->
		<div class="wrap-header-mobile" style="position: absolute;"> 
			<!-- Logo moblie -->
			<div style="width: 95%; float: left;">
				<div style="width: 210px;">
					<a href="../index.store" class="logo" id="boldfont_black_de" > 
							FRIEND STORE
						</a>
				</div>
			</div>
						
			<!-- Icon header -->

			<!-- Button show menu -->
			<div style="width: 10%; float: right;">
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
			</div>
		</div>

		

		<!-- Menu Mobile -->
		<div class="menu-mobile" style="z-index: 100; display: none; padding-top: 64px; position: absolute;">
			<div class="main-menu-m" style="padding-left: 15px;"> 
				<div><a href="characterInfo.store" id="lightfont_black_de" 
				<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">style="text-decoration: underline;"</c:if>
				>캐릭터 소개</a></div>
				<br>
				<div><a href="storeInfo.store" id="lightfont_black_de" 
				<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">style="text-decoration: underline;"</c:if>
				>매장 안내</a></div>
			</div>
		</div>

		<!-- Modal Search -->
		<!-- <div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search"
						placeholder="Search...">
				</form>
			</div>
		</div> -->
	</header>
	</c:if>
	<!-- Cart -->
	<!-- <div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2"> Your Cart </span>

				<div
					class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								White Shirt Pleat </a> <span class="header-cart-item-info"> 1
								x $19.00 </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Converse All Star </a> <span class="header-cart-item-info"> 1
								x $39.00 </span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Nixon Porter Leather </a> <span class="header-cart-item-info">
								1 x $17.00 </span>
						</div>
					</li>
				</ul>

				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="shoping-cart.html"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart </a> <a href="shoping-cart.html"
							class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out </a>
					</div>
				</div>
			</div>
		</div>
	</div> -->



	<!-- Slider -->
	<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">
	<section class="section-slide" style="position: relative;">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1"
					style="background-image: url('../images/storeinfo_sildeimg/bg_storeInfo_01_W_180219.jpg'); ">
					<!-- <div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInDown" data-delay="0">
								<span class="ltext-101 cl2 respon2"> Women Collection
									2018 </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">NEW SEASON
								</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="zoomIn" data-delay="1600">
								<a href="product.html"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now </a>
							</div>
						</div>
					</div> -->
				</div>

				<div class="item-slick1"
					style="background-image: url('../images/storeinfo_sildeimg/bg_storeInfo_02_W.jpg');">
					<!-- <div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rollIn" data-delay="0">
								<span class="ltext-101 cl2 respon2"> Men New-Season </span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">Jackets &
									Coats</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="slideInUp" data-delay="1600">
								<a href="product.html"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now </a>
							</div>
						</div>
					</div> -->
				</div>

				<div class="item-slick1"
					style="background-image: url('../images/storeinfo_sildeimg/bg_storeInfo_03_W.jpg');">
					<!-- <div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-101 cl2 respon2"> Men Collection 2018
								</span>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">New
									arrivals</h2>
							</div>

							<div class="layer-slick1 animated visible-false"
								data-appear="rotateIn" data-delay="1600">
								<a href="product.html"
									class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Shop Now </a>
							</div>
						</div>
					</div> -->
				</div>
				<div class="item-slick1"
					style="background-image: url('../images/storeinfo_sildeimg/bg_storeInfo_04_W.jpg'); ">
				</div>
				<div class="item-slick1"
					style="background-image: url('../images/storeinfo_sildeimg/bg_storeInfo_05_W.jpg'); ">
				</div>
			</div>
		</div>
	</section>
	</c:if>
	<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">
	<section class="section-slide" style="position: relative;">
		<div class="wrap-slick1" >
		<div class="slick1">
			<div class="item-slick1"
					style="background-image: url('../images/characterinfo_sildeimg/bg_charInfo_kr_W.png'); ">
			</div>
		</div>
		</div>
	</section>
	</c:if>


	<!-- Banner -->



	<!-- Product -->
	<section style="margin-bottom: 10px; margin-top: 180px;">
		<div class="container" >
		<decorator:body />
		</div>
		<div class="container" >
		<c:if test="${url == 'http://localhost:8080/kakaofriends/info/characterInfo.store' }">
		<a href="http://localhost:8080/kakaofriends/info/storeInfo.store">
		<img class="mo" src="../images/characterinfo_footer/banner_storeInfo_kr_W.png" height="100%" width="100%">
		<img class="mo2" src="../images/characterinfo_footer/banner_storeInfo_kr_M.png" height="100%" width="100%">
		</a>
		</c:if>
		<c:if test="${url == 'http://localhost:8080/kakaofriends/info/storeInfo.store' }">
		<a href="http://localhost:8080/kakaofriends/info/characterInfo.store">
		<img class="mo" src="../images/storeinfo_footer/banner_charInfo_kr_W.png" height="100%" width="100%">
		</a>
		</c:if>
		</div>
	</section>
	<style type="text/css">
	@media (max-width: 856px){
	img.mo {
		display: none;
	}
	}
	@media (max-width: 856px){
	img.mo2 {
			display: block;
	}
	}
	@media (min-width: 856px){
	img.mo2 {
		display: none;
	}
	}
	</style>

	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container"> 
				<a href="#" style="font-size: 18px; text-decoration: none; " class="stext-107 cl7 noul">개인정보처리방침 </a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="font-size: 18px; text-decoration: none; " class="stext-107 cl7 noul">이용약관 </a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="font-size: 18px; text-decoration: none; " class="stext-107 cl7 noul">제휴문의 </a>
				<br><br><br>
			<div class="">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<p class="stext-107 cl7 size-700">
					카카오아이엑스 사업자등록번호 : 354-86-00070<br>
					통신판매업 신고번호 : 2017-서울강남-02573<br>
					대표이사 : 권승조<br>
					주소 : 서울특별시 강남구 테헤란로 521 파르나스타워, 27층<br>
					고객센터 : 1577-6263 / 평일 10시 ~ 18시<br>
					<br>
					Copyright © KAKAO IX CORP.
				<!-- 	<div class="p-t-27">
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

			<!-- <div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1"> <img
						src="images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a> <a href="#" class="m-all-1"> <img
						src="images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div> 

				<p class="stext-107 cl6 txt-center">
					Copyright &copy;
					<script>document.write(new Date().getFullYear());</script>
					All rights reserved | Made with <i class="fa fa-heart-o"
						aria-hidden="true"></i> by <a href="https://colorlib.com"
						target="_blank">Colorlib</a> &amp; distributed by <a
						href="https://themewagon.com" target="_blank">ThemeWagon</a>

				</p>
			</div>
		</div>
		-->
	</footer>


	<!-- Back to top -->
	<div class="page_up" id="myBtn" style="display: none;">TOP</div>

	<!-- Modal1
	<!--
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="images/icons/icon-close.png" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3"
										data-thumb="images/product-detail-01.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-01.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-02.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-02.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3"
										data-thumb="images/product-detail-03.jpg">
										<div class="wrap-pic-w pos-relative">
											<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

											<a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="images/product-detail-03.jpg"> <i
												class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight
								Jacket</h4>

							<span class="mtext-106 cl2"> $58.79 </span>

							<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
								pharetra viverra. Nam vitae luctus ligula. Mauris consequat
								ornare feugiat.</p>
								
						
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Size</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">Color</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="num-product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button
											class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart</button>
									</div>
								</div>
							</div>

							
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
	</div>
 -->
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
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
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
	<!--===============================================================================================-->
	<script src="../vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
	<!--===============================================================================================-->
	<script src="../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>
	
	
</body>
</html>