<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
<c:choose>
	<c:when test="${param.status == null }">주문내역</c:when>
	<c:when test="${param.status == 'receive' }">주문 접수</c:when>
	<c:when test="${param.status == 'in-shipping' }">배송 중</c:when>
	<c:when test="${param.status == 're-order' }">취소/반품/교환</c:when>
</c:choose>
</title>
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

#my_bb_20b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: black;
	font-size: 20px;
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

.page_block {
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
}

.arrow_box_new {
    display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    box-sizing: border-box;
    width: 30px;
    height: 30px;
    cursor: pointer;
    background-color: rgb(60, 64, 75);
    border-radius: 15px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(237, 237, 237);
    border-image: initial;
    margin: 0px 10px;
}

.arrow_pre_new {
	width: 10px;
    height: 17px;
    background-image:  url('../images/icons/icon-prev.png');
    background-size: 10px;
    margin: 0px 0px 0px -3px;
}

.arrow_pre_new:after {
	content: "";
    position: absolute;
    width: 0px;
    height: 0px;
    top: -2px;
    border-width: 4px;
    border-style: solid;
    border-color: white;
    border-image: initial;
}

.page_nums {
	display: flex;
	flex-direction: column;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 37px;
	height: 30px;
	cursor: pointer;
}

.arrow_next_new {
	width: 10px;
    height: 17px;
    background-size: 10px;
    background-image: url('../images/icons/icon-next.png');
    margin: 0px 0px 0px 3px;
}

.arrow_next_new:after {
	content: "";
    position: absolute;
    width: 0px;
    height: 0px;
    left: -2px;
    border-width: 4px;
    border-style: solid;
    border-color: white;
    border-image: initial;
}

.page_nums .clicka {
    letter-spacing: -0.23px;
    color: rgb(0, 0, 0);
    height: 19px;
    font-weight: bold;
    margin-bottom: 0px;
    border-bottom: 1px solid black;
}
.page_nums a {
    letter-spacing: -0.23px;
    color: rgb(212, 215, 225);
    height: 19px;
    margin-bottom: 3px;
}

</style>
<script type="text/javascript">
$(function(){
	   $(".dropdown-menu li").click(function(){
	      console.log($(this).children('a').text())
	      $("input[name=selectvalue]").val($(this).children('a').text())
	      selectform.submit();
	   })
	})


</script>
</head>
<body>
<form action="orderlistpage.store" method="post" name="selectform">
<input type="hidden" name="selectvalue" value="${param.selectvalue}">
</form>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title" id="my_b_b">
			<c:choose>
				<c:when test="${param.status == null }">주문내역</c:when>
				<c:when test="${param.status == 'receive' }">주문 접수</c:when>
				<c:when test="${param.status == 'in-shipping' }">배송 중</c:when>
				<c:when test="${param.status == 're-order' }">취소/반품/교환</c:when>
			</c:choose>
			</div>
			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${orderlist_my_count }</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
				<!-- 주문내역(전체)일 경우만 표시할것 select 설정 -->
				<c:if test="${param.status == null }" >
				<div class="admin_order_filter_select" style="padding-right: 230px; padding-bottom: 10px;">
					<div class="admin_order_filter_box">
						<div class="dropdown" style="width: 230px; height: 40px; margin-bottom: 10px;">
							<div class="select" id="my_ll_b" style="    padding: 5px 0px 0px 10px;">
								<c:if test="${empty param.selectvalue}">전체</c:if>
								<c:if test="${!empty param.selectvalue}">
								${param.selectvalue}
								</c:if><i class="fa fa-chevron-up"></i>
							</div>
							<input type="hidden" name="filter_box_one">
							<input type="hidden" name="order">
							<ul class="dropdown-menu ">
								<li><a class="my_ll_b" id="전체" >전체</a></li>
								<li><a class="my_ll_b" id="미결제">미결제</a></li>
								<li><a class="my_ll_b" id="결제확인">결제확인</a></li>
								<li><a class="my_ll_b" id="배송준비중">배송준비중</a></li>
								<li><a class="my_ll_b" id="배송중">배송중</a></li>
								<li><a class="my_ll_b" id="주문확정">주문확정</a></li>
								<li><a class="my_ll_b" id="반품/교환">반품/교환</a></li>
								<li><a class="my_ll_b" id="취소">취소</a></li>
							</ul>
						</div>
					</div>
				</div>
				</c:if>
			</div>
			<c:if test="${orderlist_my_count > 0}">
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 20px; padding-left: 0px;">주문 번호</li>
					<li class="item_num" id="my_bb_b" style="font-size: 20px;">주문 상품</li>
					<li class="order_date" id="my_bb_b" style="font-size: 20px;">주문 일자</li>
					<li class="order_state" id="my_bb_b" style="font-size: 20px;padding-right: 0px;padding-left: 80px;">주문 상태</li>
				</ul>
				<c:forEach var="orderlist" items="${orderlist_my }">
				<div class="order_list1">
					<a class="order_list2" href="ordernum.store?orderno=${orderlist.orderno }"
						style="padding-left: 0; color: black;"> <span
						class="order_list1_span">주문번호</span> <span class="order_list1_num"
						id="my_bb_b" style="font-size: 15px">${orderlist.orderno }</span>
					</a>
					<hr class="moblie_line">
					<div class="order_list3">
						<div class="order_list3_item">
							<a class="order_list3_img"> <span> <img
									style="width: 100%; height: auto;"
									src="../images/product/${orderlist.itemfile1url }" alt="상품명">
							</span>
							</a>
							<div class="order_list_content">
								<div>
									<div class="item_name" id="my_ll_b">${orderlist.itemname }</div>
									<div class="price_quant" id="my_ll_b">
										<span><fmt:formatNumber value="${orderlist.price }" pattern="#,###원"/></span>/<span>${orderlist.quantity }</span>개
									</div>
								</div>
							</div>
						</div>
					</div>
					<c:if test="${orderlist.orderstate!=4}">
					<div class="order_list4_1" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">
							<fmt:formatDate value="${orderlist.orderdate }" pattern="yyyy-MM-dd HH:mm"/>
							</div>
					</div>
					</c:if>
					<c:if test="${orderlist.orderstate==4}">
					<div class="order_list4_1" style="text-align: center; padding-right: 0px;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">
							<fmt:formatDate value="${orderlist.orderdate }" pattern="yyyy-MM-dd HH:mm"/>
							</div>
					</div>
					</c:if>
					<c:if test="${orderlist.orderstate!=4}">
					<div class="order_list4_2_fin" 
					style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block; width: 85px;"> 
							<br>
							<c:choose>
								<c:when test="${orderlist.orderstate==0}">미결제</c:when>
								<c:when test="${orderlist.orderstate==1}">결제확인</c:when>
								<c:when test="${orderlist.orderstate==2}">배송<br>준비중</c:when>
								<c:when test="${orderlist.orderstate==3}">배송중</c:when>
								<c:when test="${orderlist.orderstate==5}">주문확정</c:when>
								<c:when test="${orderlist.orderstate==6}">교환/반품</c:when>
								<c:when test="${orderlist.orderstate==7}">취소</c:when>
							</c:choose>
							<br><br>
							<c:choose>
							<c:when test="${orderlist.orderstate == 0}">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='orderlist_cancel.store?orderno=${orderlist.orderno}'">취소</button>
							</c:when>
							<c:when test="${orderlist.orderstate == 1}">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='orderlist_cancel.store?orderno=${orderlist.orderno}'">취소</button>
							</c:when>
							<c:when test="${orderlist.orderstate == 2}">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='orderlist_cancel.store?orderno=${orderlist.orderno}'">취소</button>
							</c:when>
							<c:when test="${orderlist.orderstate == 3}">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='orderlist_cancel.store?orderno=${orderlist.orderno}'">취소</button>
							</c:when>
							<c:when test="${orderlist.orderstate == 5}"></c:when>
							<c:when test="${orderlist.orderstate == 6}"></c:when>
							<c:when test="${orderlist.orderstate == 7}"></c:when>
							</c:choose>
							</div>
					</div>
					</c:if>
					<c:if test="${orderlist.orderstate==4}">
					<div class="order_list4_2_fin" 
					style="text-align: center; margin-left: 0px; margin-right: 0px;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block;"> 
							<br>
							<c:choose>
								<c:when test="${orderlist.orderstate==4}">배송 완료</c:when>
							</c:choose>
							<br><br>
							<c:choose>
							<c:when test="${orderlist.orderstate == 4}">
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='change_return_order.store'">교환/반품 신청</button>
							<button class="admin_store_update" id="my_ll_w" 
							onclick="location.href='orderlist_final.store?orderno=${orderlist.orderno}'">주문확정</button>
							</c:when>
							</c:choose>
							</div>
					</div>
					</c:if>
				</div>
				</c:forEach>
			</div>
			
			<div class="list_footer" style="border-top: 1px solid;">
				<div class="page_block">

					<c:if test="${pageNum > 1 }">
						<div class="arrow_box_new">
							<div class="arrow_pre_new"
								onclick="javascript:listdo('${pageNum-1 }')"></div>
						</div>
					</c:if>
					<c:if test="${pageNum <= 1 }">
						<div class="arrow_box_new">
							<div class="arrow_pre_new"></div>
						</div>
					</c:if>
					<span class="page_nums">
						<form action="orderlistpage.store" method="post"
							name="f">
							<input type="hidden" name="pageNum" value="1" />
							<c:forEach var="a" begin="${startpage }" end="${endpage }">
								<c:if test="${param.pageNum==a }">
									<a href="javascript:listdo('${a }')" class="clicka"
										id="my_bb_20b">${a }</a>
								</c:if>
								<c:if test="${param.pageNum!=a }">
									<a href="javascript:listdo('${a }')" id="my_ll_b">${a }</a>
								</c:if>
							</c:forEach>

						</form>
					</span>
					<c:if test="${pageNum <= 1 }">
					<div class="arrow_box_new">
						<div class="arrow_next_new" onclick="javascript:listdo('${pageNum+1 }')"></div>
					</div>
					</c:if>
					<c:if test="${pageNum > 1 }">
					<div class="arrow_box_new">
						<div class="arrow_next_new"></div>
					</div>
					</c:if>
				</div>
			</div>
			</c:if>
			<c:if test="${orderlist_my_count==0}">
				<div class="admin_list" style="border-top: 1px solid black;">
				<!-- count == 0 -->
				<div id="my_ll_b">아직 내역이 없습니다.</div>
			</div>
			</c:if>
			</div>
		</div>
	<script type="text/javascript">
						var cnt = 0;
						function filterbox() {
							if (cnt == 0) {
								$(".admin_order_filter_box").css("display",
										"flex")
								cnt++
							} else {
								$(".admin_order_filter_box").css("display",
										"none")
								cnt--
							}
						}
					</script>
</body>
</html>