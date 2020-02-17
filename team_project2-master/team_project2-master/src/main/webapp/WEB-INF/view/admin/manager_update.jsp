<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 정보수정</title>
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
	font-weight: 700;
	color: black;
	font-size: 20px;
}

#my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

#my_l_b1 {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: white;
	font-size: 16px;
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

input[type="text"] {
	border: 1px solid #ccc;
	padding-top: 3px;
    padding-bottom: 3px;
}

.profile {
	flex: 1 1 0%;
	padding-top: 3vw;
}

.update_btn {
	font-size: 4.8vw;
	text-align: center;
	background-color: #fff;
	width: 100%;
	height: 100%;
}

@media ( min-width : 769px) {
	.update_btn {
		font-size: 15px;
		font-weight: bolder;
		width: 270px;
		height: 60px;
		color: black;
		background-color: #fff;
		border-radius: 4px;
		border: 1px solid lightgrey;
	}
}

.cancle_btn {
	font-size: 4.8vw;
	text-align: center;
	width: 100%;
	height: 100%;
}

@media ( min-width : 769px) {
	.cancle_btn {
		font-size: 15px;
		font-weight: bolder;
		width: 270px;
		height: 60px;
		background-color: rgba(60, 64, 75, 0.95);
		border-radius: 4px;
	}
}

#my_l_b_1 {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 700;
	font-size: 18.5px;
	color: black;
}

#my_l_b_2 {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 700;
	font-size: 18.5px;
	color: white;
}

#my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

.profile_update {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	background-color: rgb(255, 255, 255);
}

@media ( min-width : 769px) {
	.profile_update {
		margin-top: 25px;
		padding: 50px 15px 150px;
	}
}
</style>
</head>
<body>
	<div class="product-register">
		<span id="my_b_b">[관리자] 정보 수정</span>
	</div>
	<form:form modelAttribute="user" method="post"
		action="manager_update.store">
		<spring:hasBindErrors name="user">
			<font color="red"> 
				<c:forEach items="${errors.globalErrors}" var="error">
					<spring:message code="${error.code}" />
				</c:forEach>
			</font>
		</spring:hasBindErrors>
		<div class="product-name">
			<span class="p-name" id="my_bb_b">아이디</span>
			<div class=" p-name" id="my_ll_b">
			<form:input path="userid" readonly="true"/>
				<font color="red">
					<form:errors path="userid" />
				</font>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_bb_b">이름</span>
			<div class="p-name" id="my_ll_b">
			<form:input path="username"  />
				<font color="red">
					<form:errors path="username"/>
				</font>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_bb_b">연락처</span>
			<div class="p-name" id="my_ll_b">
			<form:input path="phonenum"  />
				<font color="red">
					<form:errors path="phonenum"/>
				</font>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_bb_b">비밀번호</span>
			<div class="p-name" id="my_ll_b">
			<form:password path="password"  />
				<font color="red">
					<form:errors path="password" />
				</font>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_bb_b">성별</span>
			<div class="input-name">
				<div id="my_ll_b" class="p-name">
				<c:if test="${user.gender == 1}">
					<form:input path="gender" value="남자"/>
				</c:if>
				<c:if test="${user.gender == 2}">
					<form:input path="gender" value="여자"/>
				</c:if>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_bb_b">프로필</span>
			<div class="profile">
				<form:input type="file" path="profile"/>
			</div>
		</div>
		<div class="profile_update">
			<input type="button" value="수정" id="my_l_b_1" class="update_btn"
				onclick="location.href='manager_info.store?userid=${user.userid}'">&nbsp;&nbsp; 
			<input type="button" value="취소" id="my_l_b_2" class="cancle_btn" 
				onclick="location.href='manager_update.store?userid=${user.userid}'">
		</div>
	</form:form>
</body>
</html>