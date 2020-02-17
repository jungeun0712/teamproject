<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 수정</title>
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

.my_ll_r {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: red;
	font-size: 15px;
}

@media ( min-width : 769px) {
	.product-button-1 {
		border-top: 1px solid rgb(227, 229, 232);
		padding: 50px 15px 150px;
	}
}

.product-button-1 {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	background-color: rgb(255, 255, 255);
}
</style>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function openDaumZipAddress() {

    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        	jQuery("#address").val(data.roadAddress);
        }
    }).open();
	
}
</script>
</head>
<body>
<form:form action="orderupdate.store" method="post" modelAttribute="addr">
	<div class="product-register">
		<span id="my_b_b">배송지 수정</span>
	</div>
	<div class="store_write_body">
		<div class="store_write_edit">
			<div class="store_write_input">
				<div class="input_img" style="text-align: center;">
					<div>
						<img src="../images/1028612757_IcDn3PSN_fdb8d16974d8cd0ef0dc115d76fe1df482124c5b.gif" width="300" height="300">
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">주소</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:input class="i-t-name my_ll_b" id="address" placeholder="도로명 주소를 입력해주세요" error="0"
							align="left" padding="15" path="address" value="${addr.address }" onclick="openDaumZipAddress()"/>
					</div>
				<form:errors path="address" cssClass="my_ll_r" element="div" />
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">나머지 주소</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:input class="i-t-name" id="my_ll_b" placeholder="상세 주소를 입력해주세요"
							error="0" align="left" padding="15" path="restaddress" value="${addr.restaddress }"/>
					</div>
				<form:errors path="restaddress" cssClass="my_ll_r" element="div" />
				</div>
			</div>
		</div>
	</div>

		<div class="product-button-1">
			<button id="my_bb_b" class="c-button b" type="button"
				onclick="location.href='../mypage/myindex.store'">취소</button>
			<input id="my_bb_w" class="p-button b" type="submit" value="수정">
		</div>
		</form:form>
</body>
</html>