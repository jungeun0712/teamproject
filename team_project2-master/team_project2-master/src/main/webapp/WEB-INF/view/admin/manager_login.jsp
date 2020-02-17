<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
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
</style>
</head>
<body>
	<div class="product-register">
		<span id="my_b_b">[관리자] 로그인</span>
	</div>
	<form:form modelAttribute="user" method="post"
		action="manager_login.store">
		<input type="hidden" name="username" value="" />
		<spring:hasBindErrors name="user">
			<font color="red"> 
				<c:forEach items="${errors.globalErrors}" var="error">
					<spring:message code="${error.code}" />
				</c:forEach>
			</font>
		</spring:hasBindErrors>
		<div class="store_write_body">
			<div class="store_write_edit">
				<div class="store_write_input">
					<div class="input_img" style="text-align: center;">
						<div>
							<img src="../images/de949ff9b7fa2bbe3201629de359c597.gif"
								width="300" height="300">
						</div>
					</div>
				</div>
				<div class="product-name">
					<span class="p-name" id="my_ll_b">아이디</span>
					<div class="input-name">
						<div class="input-text-name">
							<form:input class="i-t-name" id="my_ll_b" placeholder="아이디 입력"
								path="userid" />
							<font color="red"><form:errors path="userid" /></font>
						</div>
					</div>
				</div>
				<div class="product-name">
					<span class="p-name" id="my_ll_b">비밀번호</span>
					<div class="input-name">
						<div class="input-text-name">
							<form:password class="i-t-name" id="my_ll_b"
								placeholder="비밀번호 입력" path="password" />
							<font color="red"><form:errors path="password" /></font>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="product-button">
			<input type="submit" id="my_bb_w" class="p-button b" value="로그인">&nbsp;&nbsp;
			<input type="button" id="my_bb_b" class="c-button b" value="회원가입"
				onclick="location.href='manager_Entry.store'">
		</div>
	</form:form>
</body>
</html>