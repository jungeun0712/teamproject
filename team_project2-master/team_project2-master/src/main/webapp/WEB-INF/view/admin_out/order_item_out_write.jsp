<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]상품 출고 등록</title>
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

	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]상품 출고 등록</span>
			</div>

			<div class="admin_order_filter"></div>
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="out_num" id="my_bb_b" style="font-size: 20px;">출고
						번호</li>
					<li class="item_num" id="my_bb_b" style="font-size: 20px;">상품
						번호</li>
					<li class="item_name" id="my_bb_b" style="font-size: 20px;">상품명</li>
					<li class="item_amount" id="my_bb_b" style="font-size: 20px;">수량</li>
					<li class="out_price" id="my_bb_b" style="font-size: 20px;">출고
						가격(개당)</li>
					<li class="out_price" id="my_bb_b" style="font-size: 20px">출고등록</li>
				</ul>
				<c:forEach var="whousing" items="${outwhousing}">
				<form:form modelAttribute="whousing" action="order_item_out_write.store" method="post">
				<input type="hidden" name="whousing_code" value="2">
				<input type="hidden" name="itemnum" value="${whousing.itemnum}">
			<ul class="order_list1">
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
					<input type="text" id="my_ll_b" name="whousingnum" 
					value="${whousing.whousingnum}" disabled="disabled" style="width: 100%; text-align: center;">
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
					<input type="text" id="my_ll_b" name="itemnum" value="${whousing.itemnum}"
					disabled="disabled" style="width: 100%; text-align: center;">
				</li>
				<li class="item_name_1" id="my_ll_b" style=" text-align: center; width: 20vw;">
					<input type="text" id="my_ll_b" name="itemname" value="${whousing.itemname}"
					disabled="disabled" style="width: 112%; text-align: center;">
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 10vw;">
					<input type="text" id="my_ll_b" name="whousingquant"
					value="0" style="width: 100%; text-align: center;">
				</li>
				<li class="out_num_1" id="my_ll_b" style=" text-align: center; width: 15vw;">
					<input type="text" id="my_ll_b" name="whousingprice"
					value="${whousing.price}" style="width: 62%; text-align: center;">
				</li>
				<li class="out_num_1" id="my_ll_b"
					style="text-align: center; width: 10vw;"><input
					type="submit" class="btn_save" id="my_ll_w"
					style=
					"border-radius: 10px; width: 5vw;" value="등록"></li>
			</ul>	
				</form:form>
			</c:forEach>
				
				<div class="out_write_footer">
				<div class="list_footer2">
					<div class="page_block">
						<div class="arrow_box">
							<div class="arrow_pre"></div>
						</div>
						<span class="page_nums">
							<div>1</div>
						</span>
						<div class="arrow_box">
							<div class="arrow_next"></div>
						</div>
					</div>
				</div>
					<!-- <div class="btn_block">
						<button class="btn_cancel" id="my_bb_b"
							onclick="javascript:history.back()">취소</button>
						<button class="btn_save" id="my_bb_w"
							onclick="location.href='./order-item-out.store'">등록</button>
					</div> -->
				</div>
			</div>
		</div>
	</div>

	
	<script type="text/javascript">
		var cnt = 0;
		function filterbox() {
			if (cnt == 0) {
				$(".admin_order_filter_box").css("display", "flex")
				cnt++
			} else {
				$(".admin_order_filter_box").css("display", "none")
				cnt--
			}
		}
	</script>
</html>