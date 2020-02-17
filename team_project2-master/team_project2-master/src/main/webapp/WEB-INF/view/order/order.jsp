<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 페이지</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function openDaumZipAddress() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
				// 예제를 참고하여 다양한 활용법을 확인해 보세요.
				jQuery("#address").val(data.roadAddress);
			}
		}).open();
	}
</script>
<style type="text/css">
#my_b_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 42px;
}
#my_b_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 42px;
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
.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
.my_bb_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 25px;
}
.my_ll_r {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: red;
	font-size: 16px;
}
#ex_chk1 {
	width: 25px;
	height: 25px;
}
#ex_chk2 {
	width: 25px;
	height: 25px;
}
#ex_chk3 {
	width: 25px;
	height: 25px;
}
.check_payment {
	position: relative;
	width: 100%;
	display: inline-block;
	width: 25px;
	height: 25px;
	margin-bottom: auto;
}
.check_payment input[name=paymentchk] {
	position: absolute;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
}
.check_payment input[name=paymentchk]+label {
	display: inline-block;
	position: relative;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}
.check_payment input[name=paymentchk]:checked+label {
	background: url(../images/icons/check_icon_on.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}
.check_payment input[name=paymentchk]+label {
	background: url(../images/icons/check_icon_off.png);
	width: 25px;
	height: 25px;
	background-size: 25px 25px;
}
.order_continue_or_break {
	position: fixed;
	bottom: 0px;
	width: 100%;
	height: 17.3333vw;
	background-color: rgba(60, 64, 75, 0.95);
	text-align: center;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	z-index: 999999;
	transition: bottom 300ms ease 0s;
}
@media ( min-width : 769px) {
	.order_continue_or_break {
		padding-top: 120px;
		position: static;
		height: 60px;
		z-index: unset;
		background: unset;
	}
}
.purchase_chk {
	position: relative;
	margin: 0px;
	padding: 0px 0px 40px;
	border-bottom: 1px solid rgb(227, 229, 232);
}
.search {
	width: 100%;
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-size: 20px;
	background-image: url(../images/product/ico-header-search.png);
	background-position: 10px 15px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}
</style>
</head>
<body>
	<div id="order_item_list">
		<form:form action="order.store" method="post"
			modelAttribute="orderform" name="f">
			<!-- 비회원 -->
			<c:if test='${empty sessionScope.loginUser}'>

				<!-- 주문 상품 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span id="my_b_b">01 주문 상품</span>
				</h3>
				<div class="select_item_list" style="height: 243;">
					<div style="margin-bottom: 40px;">
						<ul>
						<c:if test="${sessionScope.CART.itemSetList!=null }">
							<c:forEach var="cart" items="${sessionScope.CART.itemSetList}"
								varStatus="stat">
								<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								<li class="select_item_list1">
									<div class="select_item_list1_img">
										<span class="img_span"> <img
											src="../images/product/${cart.item.itemfile1url}"
											alt="${cart.item.itemname}" style="width: 100px;"></span>
										<div class="item_option">
											<strong class="item_name">${cart.item.itemname}</strong>
											<!-- <p class="space_p"></p> -->
											<span class="item_option2" id="my_l_b">
												<span><fmt:formatNumber pattern="#,###원"
														value="${cart.price * cart.quantity}"/></span>
											</span>
									<span class="quantity_chk" id="my_l_b">
										<span>/${cart.quantity}개</span>
									</span> 
										</div>
									</div>
									<c:set var="tot" value="${tot+(cart.quantity * cart.price)}" />
								</li>
							</c:forEach>
							</c:if>
						<c:if test="${sessionScope.CART.itemSetList==null }">
							<c:forEach var="cart" items="${orderitems}"
								varStatus="stat">
								<input type="hidden" name="itemnum" value="${cart.item.itemnum}">
								<li class="select_item_list1">
									<div class="select_item_list1_img">
										<span class="img_span"> <img
											src="../images/product/${cart.item.itemfile1url}"
											alt="${cart.item.itemname}" style="width: 100px;"></span>
										<div class="item_option">
											<strong class="item_name">${cart.item.itemname}</strong>
											<!-- <p class="space_p"></p> -->
											<span class="item_option2" id="my_l_b">
												<span><fmt:formatNumber pattern="#,###원"
														value="${cart.price * cart.quantity}"/></span>
											</span>
									<span class="quantity_chk" id="my_l_b">
										<span>/${cart.quantity}개</span>
									</span> 
										</div>
									</div>
									<c:set var="tot" value="${tot+(cart.quantity * cart.price)}" />
								</li>
							</c:forEach>
							</c:if>
						</ul>
						<ul class="listinfo_total_price">
							<li class="total_info"><strong class="total_price"
								id="my_ll_b">상품가</strong>
								<p class="total_price_1" id="my_ll_b">
									<span id="my_ll_b"><fmt:formatNumber value="${tot}" pattern="#,###원"/></span>
								</p></li>
							<!-- <li class="total_info"><strong class="total_price"
								id="my_l_b">배송비</strong>
								<p class="total_price_1" id="my_l_b">
									<span>무료</span>
								</p></li> -->
							<li class="total_info"><strong class="total_price"
								id="my_bb_b" style="font-size: 22px;">총합</strong>
								<p class="total_price_1" id="my_bb_b" style="font-size: 22px;">
									<span id="my_bb_b"><fmt:formatNumber value="${tot}" pattern="#,###원"/></span>
								</p></li>
						</ul>
					</div>
				</div>
				<!-- 결제 정보 -->


				<!-- 배송지정보 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span id="my_b_b">02 배송지 정보</span>
				</h3>
				<div class="recipient_info_chk">
					<div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt"  id="my_ll_b">
								이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" id="my_ll_b"
										placeholder="이름 입력" error="0" align="left" padding="15"
										path="username" value="" style="width: 100%;"/>
									<form:errors path="username" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt"  id="my_ll_b">전화번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" id="my_ll_b"
										placeholder="번호 입력" error="0" align="left" padding="15" 
										path="phonenum" value="" style="width: 100%;" />
									<form:errors path="phonenum" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt"  id="my_ll_b">이메일
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt my_ll_b"
										placeholder="이메일" error="0" align="left" padding="15"
										path="userid" value="" style="width: 100%;"/>
									<form:errors path="userid" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>

						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt"  id="my_ll_b">주소찾기
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input
										class="input-text__CustomText-sc-14n8vry-1 search llGwgt my_ll_b" 
										placeholder="도로명 주소" error="0" align="left" padding="15"
										path="address" value="" style="width: 100%;"
										onclick="openDaumZipAddress()" />
									<form:errors path="address" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt"  id="my_ll_b">나머지
								주소</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" id="my_ll_b"
										placeholder="나머지 주소" error="0" align="left" padding="15"
										path="restaddress" value="" style="width: 100%;" />
									<form:errors path="restaddress" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="paychk">
					<div class="purchase_chk"></div>
					<h3 class="select_item_chk" id="my_b_b">
						&nbsp;&nbsp;<span  id="my_b_b">03 결제 정보</span>
					</h3>
					<div>
						<div>
							<div class="topay_1">
								<ul class="topay_space">
									<li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_ll_b">상품가</strong>
										<div class="order_item_price_all order_item_price" id="my_ll_b">
											<span id="my_ll_b"><fmt:formatNumber value="${tot}" type="currency"
													currencySymbol="" />원</span>
										</div></li>
								<!-- <li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_l_b">배송비</strong>
										<div class="order_item_price_all" id="my_l_b">
											<span>무료</span>
										</div></li>
									<li class="pay_list_space pay_list_space_all"><strong
										class="point pay_info_list" id="my_l_b">포인트 <span
											class="point_op" id="my_l_b">(OP)</span>
									</strong>
										<div class="point_bank" id="my_l_b">
											<span><form:input path="usepoint" value="0"/></span>
										</div></li>  -->
									<li class="pay_list_space"><strong
										class="final_order_price pay_info_list" id="my_bb_b">최종
											결제 금액</strong>
										<div class="final_order_price1 order_item_price_all"
											>
											<span id="my_bb_b"><fmt:formatNumber value="${tot}" type="currency"
													currencySymbol="" />원</span>
										</div></li>
								</ul>
								<input type="hidden" name="totprice" value="${tot }"  />
								<form:hidden path="usepoint"/>
							</div>
						</div>
					</div>
				</div>


			</c:if>
			<c:if test='${!empty sessionScope.loginUser}'>
				<!--  회원 -->
				<!-- 주문 상품 -->
				<h3 class="select_item_chk" >
					&nbsp;&nbsp;<span id="my_b_b">01 주문 상품</span>
				</h3>
				<div class="select_item_list" style="height: 243;">
					<div style="margin-bottom: 40px;">
						<%-- <form:hidden path="orderitems" value="${sessionScope.orderitems}"/> --%>
						<ul>
							<c:forEach var="orderitem" items="${orderitems}" varStatus="stat">
							<input type="hidden" name="itemnum" value="${orderitem.item.itemnum}">
								<li class="select_item_list1">
									<div class="select_item_list1_img">
										<span class="img_span"> <img
											src="../images/product/${orderitem.item.itemfile1url}"
											alt="${orderitem.item.itemname}" style="width: 100px;"></span>
										<div class="item_option">
											<span class="item_name" id="my_ll_b" >${orderitem.item.itemname}</span>
											<!-- <p class="space_p"></p> -->
											<span class="item_option2" id="my_ll_b">
												<span><fmt:formatNumber
														value="${orderitem.price * orderitem.quantity}"
														pattern="#,###원" /></span>
											</span>
											<!-- <span class="quantity_chk" id="my_l_b"> -->
										<!-- <span>수량: </span>  -->
										<span  id="my_ll_b">/ ${orderitem.quantity}개</span>
									<!-- </span>  --><c:set var="tot"
										value="${tot+(orderitem.quantity * orderitem.price)}" />
										</div>
									</div>
									
								</li>
							</c:forEach>
						</ul>
						<%-- <form:hidden path="orderlist" value="${orderitem}"/> --%>
						<ul class="listinfo_total_price">
							<li class="total_info"><strong class="total_price"
								id="my_ll_b">상품가</strong>
								<p class="total_price_1" id="my_ll_b">
									<span id="my_ll_b"><fmt:formatNumber value="${tot}" pattern="#,###원"/></span>
								</p></li>
							<!-- <li class="total_info"><strong class="total_price"
								id="my_l_b">배송비</strong>
								<p class="total_price_1" id="my_l_b">
									<span>무료</span>
								</p></li> -->
							<li class="total_info"><strong class="total_price"
								id="my_bb_b" style="font-size: 22px;">총합</strong>
								<p class="total_price_1" id="my_bb_b" style="font-size: 22px;">
									<span id="my_bb_b"><fmt:formatNumber value="${tot}" pattern="#,###원"/></span>
								</p></li>
						</ul>
					</div>
				</div>
				<!-- 결제 정보 -->


				<!-- 배송지정보 -->
				<h3 class="select_item_chk">
					&nbsp;&nbsp;<span id="my_b_b">02 배송지 정보</span>
				</h3>
				<div class="recipient_info_chk">
					<div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">
								이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름 입력"  align="left" padding="15" id="my_ll_b"
										path="username" value="${sessionScope.loginUser.username}"
										style="width: 100%;" readonly="${!empty sessionScope.loginUser?'true':'false'}" />
									<font color="red"><form:errors path="username" /></font>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">전화번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" id="my_ll_b"
										placeholder="번호 입력" error="0" align="left" padding="15"
										path="phonenum" value="" style="width: 100%;" />
									<font color="red"><form:errors path="phonenum" /></font>

								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">이메일
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" id="my_ll_b"
										placeholder="이메일" error="0" align="left" padding="15"
										path="userid" value="${sessionScope.loginUser.userid}"
										style="width: 100%;"   readonly="${!empty sessionScope.loginUser?'true':'false'}" />	
									<font color="red"><form:errors path="userid" /></font>
								</div>
							</div>
						</div>

						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">주소찾기
							</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input
										class="input-text__CustomText-sc-14n8vry-1 search  llGwgt my_ll_b"
										placeholder="도로명 주소" error="0" align="left" padding="15"
										path="address" value="" style="width: 100%;" id="address"
										onclick="openDaumZipAddress()" />
									<form:errors path="address" cssClass="my_ll_r" element="div" />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">나머지
								주소</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" id="my_ll_b"
										placeholder="나머지 주소" error="0" align="left" padding="15"
										path="restaddress" value="" style="width: 100%;" />
									<form:errors path="restaddress" cssClass="my_ll_r"
										element="div" />
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="paychk">
					<div class="purchase_chk"></div>
					<h3 class="select_item_chk" id="my_b_b">
						&nbsp;&nbsp;<span id="my_b_b">03 결제 정보</span>
					</h3>
					<div>
						<div>
							<div class="topay_1">
								<ul class="topay_space">
									<li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_ll_b">상품가</strong>
										<div class="order_item_price_all order_item_price" >
											<span  id="my_ll_b">
											<fmt:formatNumber value="${tot}" pattern="#,###원"/>
											<input type="hidden" value="${tot }" id="fn_type1_price">
											</span>
										</div></li>
										<%-- <form:hidden path="tot" value="${tot}" id="fn_type1_price" /> --%>
									<!-- <li class="pay_list_space pay_list_space_all"><strong
										class="pay_info_list" id="my_l_b">배송비</strong>
										<div class="order_item_price_all" id="my_l_b">
											<span>무료</span>
										</div></li> -->
									<li class="pay_list_space pay_list_space_all"><strong
										class="point pay_info_list"id="my_ll_b">포인트 <span
											class="point_op" id="my_ll_b"  >
											(<fmt:formatNumber value="${SessionScope.totalpoint }" pattern="#,###P"/>)
											</span>
									</strong>
										<div class="point_bank" >
											<span id="my_ll_b" style="font-size: 22px;">
											<input name="usepoint" type="text"   class="my_ll_b"
											id="fn_type2_price" style="text-align: right;"  value="0"
											onkeyup="javascript:sub_tot(this)" numberOnly/>P
											</span>
										</div></li>
									<li class="pay_list_space"><strong
										class="final_order_price pay_info_list" id="my_bb_b">최종
											결제 금액</strong>
										<div class="final_order_price1 order_item_price_all"
											id="my_bb_b">
											<span id="my_bb_b" >
											<input type="text" style="text-align: right;"
											 id="fn_total" 
											 value="<fmt:formatNumber value="${tot}" pattern="#,###"/>" 
											 name="totprice" class="my_bb_b"
											 readonly="readonly" name="usepoint" />원
											 
											</span>
											<form:hidden path="totprice" />
											<form:hidden path="usepoint"/>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</c:if>
			<div class="pay-methods__PaySelectWrap-sc-9x7kbv-0 gnUPDE">
				<h4
					class="pay-methods__SubTitlePayMethod-sc-9x7kbv-9 eXCEHT sub-title__SubTitle-sc-1kh702x-0 hEmcBO">결제수단
					선택</h4>
				<div class="pay-methods__PayLabelWrap-sc-9x7kbv-1 bTGpxc">
					<label
						class="pay-methods__LabelKakaopay-sc-9x7kbv-3 hGROIq pay-methods__PayLabel-sc-9x7kbv-2 fGXiOr"
						for="kakaopay">카카오페이<input id="kakaopay" type="radio"
						value="kakaopay" checked=""></label><label
						class="pay-methods__LabelCard-sc-9x7kbv-4 gmaalp pay-methods__PayLabel-sc-9x7kbv-2 fGXiOr"
						for="bankbook">무통장 입금<input id="bankbook" type="radio"
						value="bankbook"></label>

					<script>
						$(function(){
							$("#selectpay").val(1)
						})
						$("#kakaopay").click(function() {
							$("#selectpay").val(1)
						})
						$("#bankbook").click(function() {
							$("#selectpay").val(2)
						})
					</script>
					<form:hidden path="selectpay" value="" />
				
				</div>
				<p
					class="pay-methods__KakaopayHelp-sc-9x7kbv-7 jxRlNC pay-methods__Help-sc-9x7kbv-6 zEfhD">
					<strong>카카오페이</strong>로 간편하고 안전하게 결제!
				</p>

				<p
					class="pay-methods__CreditcardHelp-sc-9x7kbv-8 eQJwuJ pay-methods__Help-sc-9x7kbv-6 zEfhD">
					무통장으로 결제!</p>
					
				<div id="pay_method_or_2" style="margin-top : 20px">
										<div class="pay_select">
											<div class="input_info">
												<span style="font-weight: bold;">입금정보</span>
											</div>
											<div class="all_bank_info">
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">입금은행</span> 
														<span class="bank_account">국민은행: 807-24-0257-128 [박하영]</span>
													</div>
												</div>
												<div class="input_bank_info">
													<div class="bank_div">
														<span class="input_bank">입금자명</span> 
														<span class="bank_account"> 
															<form:input placeholder="입금자명 입력하세요" path="payname"/><span></span>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div><br>	
			</div>
			
			<div class="purchase__PayButtonWrap-n1s40m-4 gpTPcQ">
				<button
					class="purchase__PayButton-n1s40m-0 gnuFcY button__Button-sc-1knyx3t-0 fjMMAF"
					type="button" onclick="javascript:document.f.submit();">
					결제하기
					<div id="paypal-container"
						class="purchase__PaypalContainer-n1s40m-2 cOvGPB"></div>
				</button>
			</div>
		</form:form>
	</div>
				<script>
			//3자리 단위마다 콤마 생성
			function addCommas(x) {
			    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
			//모든 콤마 제거
			function removeCommas(x) {
			    if(!x || x.length == 0) return "";
			    else return x.split(",").join("");
			}
			$("input:text[numberOnly]").on("keyup", function() {
			    $(this).val(addCommas($(this).val().replace(/[^0-9]/g,"")));
			});
				function sub_tot() {
					var sum1 = parseInt($("#fn_type1_price").val() || 0 ); 
					var sum2 = parseInt($("#fn_type2_price").val() || 0 ); 
					var sub = sum1-sum2;
					var totp = ${totalpoint};
					if (sum2>totp){
						$("#fn_type2_price").val(totp);
						sub = sum1-totp;
					}else{
						$("#fn_type2_price").val(sum2);
					}
					sub = sub+"";
				    $("#fn_total").val(addCommas(sub.replace(/[^0-9]/g,"")));
					//$("#fn_total").val(sub);
					
				}
			</script>
	<script>
		$(function() {
			$(".pay-methods__CreditcardHelp-sc-9x7kbv-8").hide()
			$("#pay_method_or_2").hide()
		})
		$(".pay-methods__LabelKakaopay-sc-9x7kbv-3").click(function() { // 카카오페이
			$(this).removeClass("dvFqbk")
			$(".pay-methods__LabelCard-sc-9x7kbv-4").removeClass("cDurlB")
			$(this).addClass("hGROIq")
			$(".pay-methods__LabelCard-sc-9x7kbv-4").addClass("gmaalp")
			$(".pay-methods__KakaopayHelp-sc-9x7kbv-7").show()
			$(".pay-methods__CreditcardHelp-sc-9x7kbv-8").hide()
			$("#pay_method_or_2").hide()
		})
		$(".pay-methods__LabelCard-sc-9x7kbv-4").click(function() { // 무통장
			$(this).removeClass("gmaalp")
			$(".pay-methods__LabelKakaopay-sc-9x7kbv-3").removeClass("hGROIq")
			$(".pay-methods__LabelKakaopay-sc-9x7kbv-3").addClass("dvFqbk")
			$(this).addClass("cDurlB")
			$(".pay-methods__KakaopayHelp-sc-9x7kbv-7").hide()
			$(".pay-methods__CreditcardHelp-sc-9x7kbv-8").show()
			$("#pay_method_or_2").show()
		})
	</script>
</body>
</html>