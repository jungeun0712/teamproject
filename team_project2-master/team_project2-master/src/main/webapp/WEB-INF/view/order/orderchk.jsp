<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 확인 페이지</title>
<style type="text/css">
#my_b_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 28px;
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
</style>
</head>
<body>
	<div id="order_item_list">
		<form class="order_item_list_padding">
		<!-- 주문 상품 -->
			<h3 class="select_item_chk" id="my_b_b">
				&nbsp;&nbsp;<span>주문 상품 확인</span> 
			</h3>
			<div class="select_item_list" style="height: 243;">
				<div>
					<ul>
						<li class="select_item_list1">
							<div class="select_item_list1_img">
								<span class="img_span"> 
								<img src="../images/product/ryan_license_plate.jpg"
									alt="피규어주차판_리틀라이언" style="width: 100px;"></span>
								<div class="item_option">
									<strong class="item_name">피규어주차번호판_리틀라이언</strong>
									<p class="space_p"></p>
									<div class="item_option2" id="my_l_b">
										<span>15,000</span><span>원</span>
									</div>
								</div>
							</div>
							<div class="quantity_chk" id="my_l_b">수량: 1개</div>
						</li>
					</ul>
					<ul class="listinfo_total_price">
						<li class="total_info">
							<strong class="total_price" id="my_l_b">상품가</strong>
							<p class="total_price_1" id="my_l_b">
								<span>15,000원</span>
							</p>
						</li>
						<li class="total_info">
							<strong class="total_price" id="my_l_b">배송비</strong>
							<p class="total_price_1" id="my_l_b">
								<span>무료</span>
							</p>
						</li>
						<li class="total_info">
							<strong class="total_price" id="my_l_b">총합</strong>
							<p class="total_price_1" id="my_l_b">
								<span>15,000원</span>
							</p>
						</li>
					</ul>
				</div>
			</div>
			<!-- 결제 정보 -->
			<div class="paychk">
				<div class="purchase_chk"></div>
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span> 결제 정보</span>
				</h3>
				<div>
					<div>
						<div class="topay_1">
						<ul class="topay_space">
							<li class="pay_list_space pay_list_space_all">
								<strong class="pay_info_list" id="my_l_b">상품가</strong>
							<div class="order_item_price_all order_item_price" id="my_l_b">
								<span>15,000원</span>
							</div>
							</li>
							<li class="pay_list_space pay_list_space_all">
								<strong class="pay_info_list" id="my_l_b">배송비</strong>
							<div class="order_item_price_all" id="my_l_b">
								<span>무료</span>
							</div>
							</li>
							<li class="pay_list_space pay_list_space_all">
								<strong class="point pay_info_list" id="my_l_b">포인트
									<span class="point_op" id="my_l_b">(OP)</span>
								</strong>
								<div class="point_bank" id="my_l_b">
									<span>1,000P</span>
								</div>
							</li>
							<li class="pay_list_space">
								<strong class="final_order_price pay_info_list" id="my_l_b">최종 결제 금액</strong>
								<div class="final_order_price1 order_item_price_all" id="my_bb_b">
									<span>14,000원</span>
								</div>
							</li>
						</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="address_chk"></div>
			<!-- 배송지정보 -->
				<h3 class="select_item_chk" id="my_b_b">
					&nbsp;&nbsp;<span>배송지 정보</span> 
				</h3>
			<div class="recipient_info_chk">
				<div>
					<div class="order_info" id="my_l_b">
						받으시는분 <input type="text" class="order_info_list_chk" value="박하영" readonly />
					</div>
					<div class="order_info" id="my_l_b">
						주소 <input class="order_info_list_chk" value="서울시 은평구 진관동 aa동 bbb호" readonly />
					</div>
					<div class="order_info" id="my_l_b">
						전화번호 <input class="order_info_list_chk" value="010-1234-5678" readonly />
					</div>
					<div class="order_info" id="my_l_b">
						이메일 <input class="order_info_list_chk" value="hyp3221@naver.com" readonly />
					</div>
				</div>
			</div>
			<div class="order_continue_or_break">
				<input type="button" value="쇼핑계속하기" id="order my_l_b" class="jWeebG">
				&nbsp;&nbsp;
				<input type="button" value="주문내역확인" id="order my_l_b" class="jWeebG">
			</div>
		</form>
	</div>
</body>
</html>