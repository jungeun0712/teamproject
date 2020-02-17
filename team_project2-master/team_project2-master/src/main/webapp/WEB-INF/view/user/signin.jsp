<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오페이지 - 로그인</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div id="mSub">
		<div class="visual_intro login_intro">
			<div class="inner_intro">
				<h2 id="kakaoBody" class="tit_intro">
					<em class="emph_tit">오늘도 힘차게!!</em> 로그인을 해주세요
				</h2>
			</div>
		</div>
	</div>
	<div id="mArticle">
		<div class="cont_login">
			<div class="group_login"></div>
			<div class="group_btn">
				<!-- <form action="" name="kakao"> -->
					<fieldset>
						<legend class="screen_out">카카오 계정으로 로그인</legend>
						<button type="button" onclick="location.href='${kakao_url}'"
							class="btn_signup bg_yellow">
							<span class="ico_newfriends_v1 ico_kakao"></span><span
								class="txt_signup">카카오 계정으로 로그인</span>
						</button>
					</fieldset>
				<!-- </form> -->
			</div>
			<div class="group_attention">
				<strong class="tit_attention">고객님께 안내 드립니다.</strong>
				<ul class="list_attention">
					<li>카카오프렌즈 고객님께 다양한 혜택을 드리고자 카카오프렌즈 회원가입 서비스를 도입하게 되었습니다.<br>
						카카오프렌즈는 회원가입시 최소한의 정보만 수집합니다.
					</li>
					<li>기존 구매 고객님께서는 카카오 계정 로그인 후 추가정보를 입력 해주시면 구매이력과 주문 정보 등의
						서비스를 동일하게 이용할 수 있습니다.</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>