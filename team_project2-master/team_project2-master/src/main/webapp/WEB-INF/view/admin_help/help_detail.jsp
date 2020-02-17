<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리-글 상세보기</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<style type="text/css">
.table {
	display: table;
}

.tr {
	display: table-row;
}

.th, .td {
	display: table-cell;
}

.th {
	font-weight: bold;
	text-align: center;
}
/* 김정은 20.01.14 */
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

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
</style>
</head>
<body>
	<script>
	$(function(){
		var a = ${help.boardcode ==1}
		if(a){
			$("#select2").hide()
		}
	})
</script>
	<div class="product-register">
		<span class="product_register_div1">[관리자]고객센터 <c:if
				test="${help.boardcode==2}">FAQ </c:if> <c:if
				test="${help.boardcode==1}">공지사항 </c:if>글 상세보기
		</span>
	</div>
	<%-- <form:form modelAttribute="item" action="item-write.store"
		enctype="multipart/form-data" name="f"> --%>
	<div class="product-name">
		<span class="p-name" id="my_ll_b">작성항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name"
					value="${help.boardcode==1?'공지사항':'FAQ'}" readonly error="0"
					align="left" padding="15" name="itemname">
			</div>
		</div>
	</div>
	<div class="product-name" id="select2">
		<span class="p-name" id="my_ll_b">항목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" error="0" align="left" padding="15"
					name="itemname" value="<c:if test="${help.filter eq '0'}">전체</c:if><c:if test="${help.filter eq '1'}">배송</c:if><c:if test="${help.filter eq '2'}">교환/반품/환불</c:if><c:if test="${help.filter eq '3'}">기타</c:if><c:if test="${help.filter eq '4'}">상품</c:if><c:if test="${help.filter eq '5'}">주문결제</c:if>" readonly>
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name" id="my_ll_b">제목</span>
		<div class="input-name">
			<div class="input-text-name">
				<input class="i-t-name" error="0" align="left" padding="15"
					name="itemname" readonly value="${help.q_subject}">
			</div>
		</div>
	</div>

	<div class="product-name" id="faq-content">
		<span class="p-name" id="my_ll_b">내용</span>
		<div class="input-name">
			<div class="input-text-name">
				<div class="detail-content" style="height : 100%;"> 
					${help.q_content}
				</div>
			</div>
		</div>
	</div>
	<div class="product-name">
		<span class="p-name" id="my_ll_b">첨부파일</span>
		<div class="input-name">
			<c:if test="${!empty help.qnafileurl}">
				<a class="i-t-name" href="../help/img/${help.qnafileurl}">${help.qnafileurl}</a>
			</c:if>
			<c:if test="${empty help.qnafileurl}">
				<input class="i-t-name" error="0" align="left" padding="15"
				 readonly value="첨부파일 없음">
			</c:if>
		</div>
	</div>
	<div class="product-button">
		<button class="c-button b" type="button"
			onclick="javascript:history.back(-1)">이전으로 돌아가기</button>
		<c:if test="${help.boardcode==1}">
			<button class="p-button b" type="button"
				onclick="location.href='help_update.store?select=notice&no=${help.qnano}'">수정하기</button>
			<button class="p-button b" type="button"
				onclick="location.href='help_delete.store?select=notice&no=${help.qnano}'">삭제하기</button>
		</c:if>
		<c:if test="${help.boardcode==2}">
			<button class="p-button b" type="button"
				onclick="location.href='help_update.store?select=faq&no=${help.qnano}'">수정하기</button>
			<button class="p-button b" type="button"
				onclick="location.href='help_delete.store?select=faq&no=${help.qnano}'">삭제하기</button>
		</c:if>

	</div>
	<%-- </form:form> --%>
</body>
</html>