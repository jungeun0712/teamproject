<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]매장 안내 삭제</title>
<style type="text/css">
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

#my_bb_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
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

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
</style>
</head>
<body>
	<form:form modelAttribute="storeinfo" action="store_delete.store"
		enctype="multipart/form-data">
		<div class="store_write_header" id="my_b_b">[관리자] 매장 안내 삭제</div>
		<form:hidden path="storeno" />
		<div class="store_write_body">
			<div class="store_write_edit">
				<div class="store_write_input">
					<div class="input_img" style="text-align: center;">
						<div>
							<img src="../images/product/jj1XC.gif" width="300" height="300">
						</div>
						<div>
							<span id="my_bb_b">삭제 하시겠습니까?</span>
						</div>
					</div>
				</div>
				<div class="store_write_input">
					<span class="input_label" id="my_ll_b">비밀번호</span>
					<div class="input_storename"
						style="border: 1px solid rgb(227, 229, 232);">
						<input type="password" class="storename" id="my_ll_b"
							placeholder="비밀번호를 입력해주세요" name="pw_chk" value="">
						<form:errors path="pw_chk" cssClass="my_ll_r"
							cssStyle="padding-left:7vw;" element="div" />
						<spring:hasBindErrors name="storeinfo">
							<font color="red"> <c:forEach
									items="${errors.globalErrors}" var="error">
									<spring:message code="${error.code}" />
								</c:forEach>
							</font>
						</spring:hasBindErrors>
					</div>
				</div>
			</div>
		</div>
		<div class="store_write_footer">
			<div class="btn_block">
				<button class="btn_cancel" id="my_bb_b"
					onclick="javascript:history.back()">취소</button>
				<button class="btn_save" id="my_bb_w"
					onsubmit="location.href='./delete.store'">삭제</button>
			</div>
		</div>
	</form:form>
</body>
</html>