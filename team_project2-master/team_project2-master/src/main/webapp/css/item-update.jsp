<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function setCategory2(){
	form = document.search;
	if(document.search.category1.value == ""){
		form.category2.length = 1;
		form.category2.option[1] = new Option("하위 카테고리 선택");
		form.category2.options[1].value = "1";
	}
	if(document.search.category1.value == "1"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("판매량순");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("신상품순");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("낮은 가격순");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("높은 가격순");
		form.category2.options[4].value = "4";
	}
	if(document.search.category1.value == "2"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("치즈프렌즈");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("원터 원더랜드");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("트와이스 에디션");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("폼폼 프렌즈");
		form.category2.options[4].value = "4";
		form.category2.options[5] = new Option("포레스트 라이언");
		form.category2.options[5].value = "5";
		form.category2.options[6] = new Option("어텀스토리");
		form.category2.options[6].value = "6";
		form.category2.options[7] = new Option("허니프렌즈");
		form.category2.options[7].value = "7";
		form.category2.options[8] = new Option("레이지선데이");
		form.category2.options[8].value = "8";
		form.category2.options[9] = new Option("러블리 어피치");
		form.category2.options[9].value = "9";
	}
	if(document.search.category1.value == "3"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("미니인형");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("중형인형");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("대형인형");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("키체인인형");
		form.category2.options[4].value = "4";
		form.category2.options[5] = new Option("피규어/브릭");
		form.category2.options[5].value = "5";
	}
	if(document.search.category1.value == "4"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("쿠션/방석");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("컵/텀블러");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("주방용품");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("미용/욕실용품");
		form.category2.options[4].value = "4";
		form.category2.options[5] = new Option("생활소품/잡화");
		form.category2.options[5].value = "5";
		form.category2.options[6] = new Option("펫 용품");
		form.category2.options[6].value = "6";
		form.category2.options[7] = new Option("탈취/방향제");
		form.category2.options[7].value = "7";
	}
	if(document.search.category1.value == "5"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("신발");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("파우치/지갑/가방");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("패션소품");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("우산");
		form.category2.options[4].value = "4";
		form.category2.options[5] = new Option("시즌잡화");
		form.category2.options[5].value = "5";
	}
	if(document.search.category1.value == "6"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("필기구");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("필통/케이스");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("노트/메모");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("파일");
		form.category2.options[4].value = "4";
		form.category2.options[5] = new Option("스티커");
		form.category2.options[5].value = "5";
		form.category2.options[6] = new Option("데스크 소품");
		form.category2.options[6].value = "6";
		form.category2.options[7] = new Option("카드/엽서");
		form.category2.options[7].value = "7";
		form.category2.options[8] = new Option("선물 포장");
		form.category2.options[8].value = "8";
	}
	if(document.search.category1.value == "7"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("여성");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("남성");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("키즈");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("속옷");
		form.category2.options[4].value = "4";
		form.category2.options[5] = new Option("양말");
		form.category2.options[5].value = "5";
	}
	if(document.search.category1.value == "8"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("여성");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("남성");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("키즈");
		form.category2.options[3].value = "3";
	}
	if(document.search.category1.value == "9"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("여행");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("스포츠");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("물놀이");
		form.category2.options[3].value = "3";
	}
	if(document.search.category1.value == "10"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("노트북 액세서리");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("소형 전자");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("에어팟 케이스");
		form.category2.options[3].value = "3";
		form.category2.options[4] = new Option("에어팟 액세서리");
		form.category2.options[4].value = "4";
	}
	if(document.search.category1.value == "11"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("핸드폰 케이스");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("핸드폰 액세서리");
		form.category2.options[2].value = "2";
		form.category2.options[3] = new Option("충전기");
		form.category2.options[3].value = "3";
	}
	if(document.search.category1.value == "12"){
		form.category2.length = 1;
		form.category2.options[1] = new Option("스낵");
		form.category2.options[1].value = "1";
		form.category2.options[2] = new Option("음료");
		form.category2.options[2].value = "2";
	}
}
</script>
<meta charset="UTF-8">
<title>[관리자]상품 수정</title>
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
	<span  id="my_b_b">[관리자]상품 수정</span>
</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">상품유형</span>
				<div class="input-name">
					<form name="search">
						<select class="select-box" style="padding-left: 0.8vw;" name="category1" onchange="setCategory2()" id="my_ll_b">
							<option value="" id="my_ll_b">상위 카테고리 선택</option>
							<option value="1" id="my_ll_b">전체</option>
							<option value="2" id="my_ll_b">테마 기획전</option>
							<option value="3" id="my_ll_b">토이</option>
							<option value="4" id="my_ll_b">리빙</option>
							<option value="5" id="my_ll_b">잡화</option>
							<option value="6" id="my_ll_b">문구</option>
							<option value="7" id="my_ll_b">의류</option>
							<option value="8" id="my_ll_b">파자마</option>
							<option value="9" id="my_ll_b">여행/레져</option>
							<option value="10" id="my_ll_b">생활테크</option>
							<option value="11" id="my_ll_b">폰 액세서리</option>
							<option value="12" id="my_ll_b">식품</option>
						</select>
						<div class="input-name">
						<select class="select-box" style="padding-left: 0.8vw;"  name="category2" id="my_ll_b">
							<option value="" id="my_ll_b">하위 카테고리 선택</option>
						</select>
						</div>
					</form>
				</div>
			</div>
<form:form modelAttribute="item" action="item-write.store" enctype="multipart/form-data" name="f">
<input type="hidden" name="category1" value="">
<input type="hidden" name="category2" value="">
			<div class="product-name">
				<span class="p-name" id="my_ll_b">상품명</span>
				<div class="input-name">
					<div class="input-text-name">
						<input class="i-t-name" id="my_ll_b"
						placeholder="상품명" error="0" align="left" padding="15" name="itemname" value="">
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">비밀번호</span>
				<div class="input-name">
					<div class="input-text-name">
						<input type="password" class="i-t-name"  id="my_ll_b"
						placeholder="비밀번호" error="0" align="left" padding="15" name="pass" value="">
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">상품가격</span>
				<div class="input-name">
					<div class="input-text-name">
						<input class="i-t-name" id="my_ll_b"
						placeholder="상품가격" error="0" align="left" padding="15" name="price" value="">
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품사진1</span>
				<div class="input-name">
					<input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" name="file1" value="">
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품사진2</span>
				<div class="input-name">
					<input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" name="file2" value="">
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품사진3</span>
				<div class="input-name">
					<input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" name="file3" value="">
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">상품상세내용</span>
				<div class="input-name">
					<div class="input-text-name">
						<textarea class="detail-content" id="my_ll_b"
						placeholder="상품상세내용" height="177" name="detail-content"></textarea>
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">상품내용</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:textarea path="content" rows="15" cols="80" />
						<script>CKEDITOR.replace("content",{filebrowserImageUploadUrl : "imgupload.store"});</script>
					</div>
				</div>
			</div>
			
			<div class="product-button">
				<button id="my_bb_b" class="c-button b" type="button" onclick="location.href='../admin/product-list.store'">취소</button>
				<button id="my_bb_w" class="p-button b" type="button" onclick="location.href='../admin/product-list.store'">수정</button>
			</div>
</form:form>
</body>
</html>