<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원가입</title>
<style type="text/css">
input[type=text1] {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

textarea {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

#my_b_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 36px;
}

#my_l_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 16px;
}

#my_bb_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 25px;
}

#my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

#my_ll_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: white;
	font-size: 20px;
}

#my_bb_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 25px;
}

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

.checks {
	position: relative;
}

.checks input[type="radio"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.checks input[type="radio"]+label {
	display: inline-block;
	position: relative;
	padding-left: 30px;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.checks input[type="radio"]+label:before {
	content: '';
	position: absolute;
	left: 0;
	top: -4px;
	width: 21px;
	height: 21px;
	text-align: center;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 100%;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}

.checks input[type="radio"]+label:active:before, .checks input[type="radio"]:checked+label:active:before
	{
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px
		rgba(0, 0, 0, 0.1);
}

.checks input[type="radio"]:checked+label:before {
	background: #E9ECEE;
	border-color: #adb8c0;
}

.checks input[type="radio"]:checked+label:after {
	content: '';
	position: absolute;
	top: 1px;
	left: 5px;
	width: 13px;
	height: 13px;
	background: #99a1a7;
	border-radius: 100%;
	box-shadow: inset 0px 0px 10px rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<div class="product-register">
		<span id="my_b_b">[관리자] 회원가입</span>
	</div>
	<form:form modelAttribute="user" method="post"
		action="manager_Entry.store" enctype="multipart/form-data">
		<spring:hasBindErrors name="user">
			<font color="red"> <c:forEach items="${error.globalErrors}"
					var="error">
					<spring:message code="${error.code}" />
				</c:forEach>
			</font>
		</spring:hasBindErrors>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">아이디</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:input class="i-t-name" id="my_ll_b" placeholder="아이디 입력"
						error="0" align="left" padding="15" name="m_id" path="userid" />
					<font color="red"><form:errors path="userid" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">이름</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:input class="i-t-name" id="my_ll_b" placeholder="이름 입력"
						error="0" align="left" padding="15" name="m_name" path="username" />
					<font color="red"><form:errors path="username" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">비밀번호</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:input type="password" class="i-t-name" id="my_ll_b"
						placeholder="비밀번호 입력" error="0" align="left" padding="15"
						name="pass" path="password" />
					<font color="red"><form:errors path="password" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">연락처</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:input class="i-t-name" id="my_ll_b" placeholder="연락처 입력"
						error="0" align="left" padding="15" name="pass" path="phonenum" />
					<font color="red"><form:errors path="phonenum" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">프로필사진</span>
			<div class="input-name">
				<form:input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" path="profile" value=""/>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">성별</span>
			<div class="input-name">
				<div class="input-text-name" style="margin-top: 1vw;">
					<div style="display: inline-block;">
						<form:radiobutton name="chk_info" value="1"
							style="display:inline-block; width: 1.5vw; height: 1.5vw;"
							path="gender" />
						<span id="my_ll_b" style="padding-left: 1vw;">남</span>
					</div>
					<div style="display: inline-block; padding-left: 10vw;">
						<form:radiobutton name="chk_info" value="2"
							style="display: inline-block; width: 1.5vw; height: 1.5vw;"
							path="gender" />
						<span id="my_ll_b" style="padding-left: 1vw;">여</span>
					</div>
				</div>
			</div>
		</div>
		<div class="product-button">
			<input type="button" id="my_bb_b" class="c-button b" value="취소"
				onclick="location.href='manager_index.store'"> 
			<input type="submit" id="my_bb_w" class="p-button b" value="회원가입">
		</div>
	</form:form>
</body>
</html>