<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]환불/교환/반품 신청서 정보 확인</title>
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
#my_ll_g {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: graytext;
	font-size: 20px;
}
.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
#input_ch_re {
   width: 100%;
   box-sizing: border-box;
   border: none;
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   border-radius: 0px;
   font-size: 20px;
   background-color: white;
   background-size: 0px;
   background-image: none;
   background-position: 0px;
   background-repeat: no-repeat;
   padding: 12px 15px;
   -webkit-transition: width 0.4s ease-in-out;
   transition: width 0.4s ease-in-out;
   font-weight: 100;
   color: black;
}
</style>
</head>
<body>
<div class="store_write_header" id="my_b_b">[관리자]환불/교환/반품 신청서 정보 확인</div>
	<div class="store_write_body">
		<div class="store_write_edit">
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">주문번호</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename my_ll_b" id="input_ch_re"
					 	readonly="readonly" name="name" value="${chg.chg_orderno }">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">주문 날짜</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="datetime" class="storename " id="my_ll_b"
						readonly="readonly" name="date" value="<fmt:formatDate value="${chg.chg_orderdate }" pattern="yyyy-MM-dd"/>">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">연락처</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename my_ll_b" id="input_ch_re"
						readonly="readonly" name="tel" value="${chg.chg_tel }">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">상품명</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename my_ll_b" id="input_ch_re"
						readonly="readonly" name="item_name" value="${chg.chg_itemname }">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">요청 사유</span>
				
				<div class="input_checkname"
					style="border: 1px solid white; float: left;" >
					<input style="float: left; margin: 0.3vw;" type="radio" class="checkname" 
					<c:if test="${chg.chg_reseon=='고객변심' }">checked</c:if> name="chg_reseon" value="고객변심" disabled="disabled">
					<div id="my_ll_g" style="height: 100%; float: left; margin: 0.3vw;" >고객변심</div>
				</div>
				<div class="input_checkname"
					style="border: 1px solid white; float: left;" >
					<input style="float: left; margin: 0.3vw;" type="radio" class="checkname" name="chg_reseon" 
					<c:if test="${chg.chg_reseon=='상품불량' }">checked</c:if> value="상품불량" disabled="disabled" >
					
					<div id="my_ll_g" style="height: 100%; float: left; margin: 0.3vw;">상품불량</div>
				</div>
				<div class="input_checkname"
					style="border: 1px solid white; float: left;" >
					<input style="float: left; margin: 0.3vw;" type="radio" class="checkname" 
					<c:if test="${chg.chg_reseon=='오배송' }">checked="checked"</c:if> name="chg_reseon" value="오배송" disabled="disabled">
					<div id="my_ll_g" style="height: 100%; float: left; margin: 0.3vw;">오배송</div>
				</div>
				<div class="input_checkname"
					style="border: 1px solid white; float: left;" >
					<input style="float: left; margin: 0.3vw;" type="radio" class="checkname" 
					<c:if test="${chg.chg_reseon=='상품파손' }">checked="checked"</c:if> name="chg_reseon" value="상품파손" disabled="disabled">
					<div id="my_ll_g" style="height: 100%; float: left; margin: 0.3vw;">상품파손</div>
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">상세 사유</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<textarea class="storename" id="my_ll_b" rows="15"
						readonly="readonly" name="mapurl">${chg.chg_detail }</textarea>
				</div>
			</div>
		</div>
	</div>
	<div class="store_write_footer">
	<div class="btn_block">
	<button class="btn_cancel" id="my_bb_b" onclick="location.href='./chg_state_yn.store?chg_no=${chg.chg_no}&yn=1'">거절</button>
	<button class="btn_save" id="my_bb_w" onclick="location.href='./chg_state_yn.store?chg_no=${chg.chg_no}&yn=2'">수락</button>
	</div>
	</div>
</body>
</html>