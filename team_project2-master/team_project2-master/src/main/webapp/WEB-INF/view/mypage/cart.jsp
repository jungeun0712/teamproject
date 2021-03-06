<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style type="text/css">
.empty_basket { /* 장바구니에 상품이 없을 때 */
	height: 300px;
	padding: 0px;
	background: rgb(255, 255, 255);
	border-top: 1px solid rgb(227, 229, 232);
	border-bottom: 1px solid rgb(227, 229, 232);
}

.empty_basket_msg { /* 장바구니에 상품이 없을때 뜨는 메세지 div */
	width: 258px;
	height: 44px;
	font-size: 15px;
	line-height: 1.47;
	letter-spacing: -0.19px;
	padding-top: 80px;
	padding-bottom: 25px;
	color: rgb(154, 154, 158);
	margin: 0px auto;
	padding-bottom: 80px;
	text-align: center;
}

.pop_list_link {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 9.5vw;
	height: 2.5vw;
	background-color: rgb(60, 64, 75);
	margin: auto;
	border-radius: 4px;
	color: #fff;
}

.pop_link {
	width: 100px;
	height: 16px;
	font-size: 12px;
	line-height: normal;
	text-align: center;
	letter-spacing: -0.2px;
	margin: 0px;
	color: #fff;
}
/* .del_btn{
	width: 15px;
	height: 15px;
} */
input.sel_delete {
	background: url("../images/icons/delete.png" ) no-repeat;
	border: none;
	max-width: 100%;
	height: auto;
	cursor: pointer;
}

#ex_chk + label {
	display: block;
	width: 25px;
    height: 25px;
	text-indent: -9999em;
	font-size: 1px;
	background-image: url(../images/icons/check_icon_off.png);
	background-position: center;
	background-repeat: no-repeat;
	background-position:center center/57%;
	border-radius: 3px;
	outline: none;
}

@media ( min-width : 769px) {
	#ex_chk + label {
		background-size: 100%;
	}
}

#ex_chk:checked+label{
	background: url(../images/icons/check_icon_on.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}
.bHdxYH {
    width: 4.93333vw;
    height: 4.93333vw;
    text-indent: -999em;
    font-size: 1px;
    background: url(../images/product/btn_remove.png) center center / 3.73333vw no-repeat;
}
.BTcrB {
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    padding-bottom: 1.73333vw;
}
@media (min-width: 769px){
.bHdxYH {
   position: relative;
    width: 13px;
    height: 13px;
    background-size: 13px;
    top: 43%;
    transform: translateY(-70%);
    right: 0px;
    left: 658px;
}
.BTcrB {
    width: 304px;
    padding: 0px;
}
}


</style>
<script type="text/javascript">
	function allchkbox(allchk) {
		$("input[name=itemchks]").prop("checked", allchk.checked)
	}
</script>
</head>
<body>
<div id="kakaoWrap">
		<div class="cart_log">장바구니</div>
	
	<c:if test="${(!empty cart && (fn:length(cart.itemSetList)!=0)) || !empty cartdb}">
	<c:if test="${empty cartdb && fn:length(cart.itemSetList) > 0}">
		<div class="check_all">
			<div class="checks"> 
				<input type="checkbox" id="ex_chk" name="allchk" onchange="allchkbox(this)"
				checked> 
				<label for="ex_chk" style="margin-bottom: 20px;">전체</label> 
			</div>
			<div class="checks_delete">
				<span class="selects">1개 선택&nbsp;</span>
				<button type="button" class="delete_btn"></button>
			</div>
		</div>
		<div>
			<div class="admin_list_no">
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 15px;">상품명</li>
					<li class="item_num" id="my_bb_b" style="font-size: 15px;">옵션</li>
					<li class="order_date" id="my_bb_b" style="font-size: 15px;">수량</li>
					<li class="order_state" id="my_bb_b" style="font-size: 15px;">상품금액</li>
				</ul>
				<c:forEach var="cart" items="${cart.itemSetList}" varStatus="stat">
				<div class="order_list1">
					<div class="order_list3">
						<div class="order_list3_item">
							<div class="checks"> 
								<input type="checkbox" id="ex_chk1" name="itemchks" checked>
								<label for="ex_chk1"></label>
							</div>
							<a class="order_list3_img"> 
								<span onclick="location.href='../item/product_detail.store?no=${cart.item.itemnum}'"><img
									style="width: 100%; height: auto;"
									src="../images/product/${cart.item.itemfile1url}"
									alt="상품명"> </span>
							</a>
							<div class="order_list_content">
								<div class="BTcrB">
									<div class="item_name" id="my_ll_b">${cart.item.itemname}</div>
									<button class="basket-item__RemoveButton-sc-1bhrte-7 bHdxYH" onclick="clickdelete(${cart.item.itemnum}, '${cart.item.itemname}', ${stat.index})"></button>
									<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								</div>
							</div>
						</div>
					</div>
					<div class="option_select"
						style="padding-top: 50px; padding-left: 30px;">
						<!-- <select style="width: 150px;">
							<option>(IX/XS)치즈 피규어 케이스 어피치</option>
							<option>(I11Pro)치즈 피규어 케이스 어피치</option>
							<option>(I11ProMax)치즈 피규어 케이스 어피치</option>
						</select> -->
					</div>
					<hr class="moblie_line">
					<div class="order_list4_1"
						style="text-align: center; padding-right: 50px; padding-left: 40px;">
						<div>
							<input type="number" value="${cart.quantity}" style="border-bottom: 1px #000 solid;width: 115px; text-align: -webkit-center;">
						</div>
					</div>
					<div class="order_list4_2">
						<div class="item_price">
						<!--  style="padding-right: 30px;" -->
							<span><fmt:formatNumber value="${cart.price}" type="currency" currencySymbol="" /></span><span>원</span>
							<%-- <span><input type="button" class="sel_delete" id="sel_delete${stat.index}"></span> --%>
						</div>
					</div>
				</div>
				<c:set var="tot" value="${tot+(cart.quantity * cart.price)}"/>
				</c:forEach>
				
				<div class="count" style="color : #000;">
					<div class="count_block">
						<span class="all_order_price"
							style="padding-left: 500px; padding-top: 18px;">총 주문 금액</span> <span
							class="price" style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />
							원</span>
					</div>
					<div class="count_block">
						<span class="all_order_price_plus"
							style="padding-left: 500px; padding-top: 18px;">배송비</span> <span
							class="shipping_fee"
							style="padding-top: 12px; padding-right: 15px;">무료</span>
					</div>
					<div class="count_block">
						<span class="all_payment_price"
							style="padding-left: 500px; padding-top: 18px;">총 결제 금액</span> 
							<span class="all_count_price"
							style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />원
							</span>
							
					</div>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${empty cart}"> <!--  회원 장바구니 -->
		<div class="check_all">
			<div class="checks"> 
				<input type="checkbox" id="ex_chk" name="allchk" onchange="allchkbox(this)"> 
				<label for="ex_chk" style="margin-bottom: 20px;">전체</label> 
			</div>
			<div class="checks_delete">
				<span class="selects">1개 선택&nbsp;</span>
				<button type="button" class="delete_btn"></button>
			</div>
		</div>
		<div>
			<div class="admin_list_no">
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 15px;">상품명</li>
					<li class="item_num" id="my_bb_b" style="font-size: 15px;">옵션</li>
					<li class="order_date" id="my_bb_b" style="font-size: 15px;">수량</li>
					<li class="order_state" id="my_bb_b" style="font-size: 15px;">상품금액</li>
				</ul>
				<c:forEach var="cart" items="${cartdb}" varStatus="stat">
				<div class="order_list1">
					<div class="order_list3">
						<div class="order_list3_item">
							<div class="checks"> 
								<input type="checkbox" id="ex_chk1" name="itemchks">
								<label for="ex_chk1"></label>
							</div>
							<a class="order_list3_img"> 
								<span onclick="location.href='../item/product_detail.store?no=${cart.item.itemnum}'"><img
									style="width: 100%; height: auto;"
									src="../images/product/${cart.item.itemfile1url}"
									alt="상품명"> </span>
							</a>
							<div class="order_list_content">
								<div class="BTcrB">
									<div class="item_name" id="my_ll_b">${cart.item.itemname}</div>
									<button class="basket-item__RemoveButton-sc-1bhrte-7 bHdxYH" onclick="clickdelete(${cart.item.itemnum}, '${cart.item.itemname}', 0)"></button>
									<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								</div>
							</div>
						</div>
					</div>
					<div class="option_select"
						style="padding-top: 50px; padding-left: 30px;">
						<!-- <select style="width: 150px;">
							<option>(IX/XS)치즈 피규어 케이스 어피치</option>
							<option>(I11Pro)치즈 피규어 케이스 어피치</option>
							<option>(I11ProMax)치즈 피규어 케이스 어피치</option>
						</select> -->
					</div>
					<hr class="moblie_line">
					<div class="order_list4_1"
						style="text-align: center; padding-right: 50px; padding-left: 40px;">
						<div>
							<input type="number" value="${cart.quantity}" style="border-bottom: 1px #000 solid;width: 115px; text-align: -webkit-center;">
						</div>
					</div>
					<div class="order_list4_2">
						<div class="item_price">
						<!--  style="padding-right: 30px;" -->
							<span><fmt:formatNumber value="${cart.price}" type="currency" currencySymbol="" /></span><span>원</span>
							<%-- <span><input type="button" class="sel_delete" id="sel_delete${stat.index}"></span> --%>
								
						</div>
					</div>
				</div>
				<c:set var="tot" value="${tot+(cart.quantity * cart.price)}"/>
				</c:forEach>
				
				<div class="count" style="color : #000;">
					<div class="count_block">
						<span class="all_order_price"
							style="padding-left: 500px; padding-top: 18px;">총 주문 금액</span> <span
							class="price" style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />
							원</span>
					</div>
					<div class="count_block">
						<span class="all_order_price_plus"
							style="padding-left: 500px; padding-top: 18px;">배송비</span> <span
							class="shipping_fee"
							style="padding-top: 12px; padding-right: 15px;">무료</span>
					</div>
					<div class="count_block">
						<span class="all_payment_price"
							style="padding-left: 500px; padding-top: 18px;">총 결제 금액</span> 
							<span class="all_count_price"
							style="padding-top: 12px; padding-right: 15px;">
							<fmt:formatNumber value="${tot}" type="currency" currencySymbol="" />원
							</span>
							
					</div>
				</div>
			</div>
		</div>
		</c:if>
		<div class="laCToX" style="margin: auto;">
			<input type="button" value="주문하기" id="order" style="margin: auto;" onclick="location.href='../order/order.store'">
		</div>
		
		</c:if>
	</div>

	<br><br>
	
	<c:if test="${(empty cart || fn:length(cart.itemSetList) == 0) && empty cartdb}">
	<div class="empty_basket">
		<div class="empty_basket_msg">
			아직 관심 상품이 없네요!
			<br>
			귀여운 프렌즈 상품을 추천드릴게요
			<br><br>
		</div> 
			<a class="pop_list_link" href="../item/list.store">
				<span class="pop_link">인기 상품 보기</span>
			</a>
	</div>
	</c:if>
	<script>
	function clickdelete(itemnum, itemname, index){ // 행 삭제
		$.ajax({// itemnum, userid, quantity, price
			url : "cartdelete.store",
			type : "POST",
			dataType: 'text',
			data : {
				itemnum : itemnum,
				itemname : itemname,
				index : index,
			},success : function(data){
				alert(data)
				location.href="cart.store";
			}, error : function(e){
				console.log(e.status)
			}
			
		})
		return false;

	}
	</script>
</body>
</html>