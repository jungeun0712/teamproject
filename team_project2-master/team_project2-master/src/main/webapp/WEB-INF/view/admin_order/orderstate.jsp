<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]주문 상태 관리</title>
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
	function listdo(page){
		document.searchform.pageNum.value=page;
		document.searchform.submit();
	}
</script>
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
<form action="orderstate.store" method="post" name="selectform">
<input type="hidden" name="selectvalue" value="${param.selectvalue}">
</form>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title" id="my_b_b">[관리자]주문 상태 관리</div>
			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${admin_ordercount }</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			
				<div class="admin_order_filter_select" style="padding-right: 230px;">
					<div class="admin_order_filter_box">
						<div class="dropdown" style="width: 230px; height: 50px; margin-bottom: 25px;">
							<div class="select"  id="my_ll_b">
								<c:if test="${empty param.selectvalue}">전체</c:if>
								<c:if test="${!empty param.selectvalue}">
								${param.selectvalue}
								</c:if>
								<i class="fa fa-chevron-up"></i>
							</div>
							<input type="hidden" name="filter_box_one">
							<ul class="dropdown-menu ">
								<li><a class="my_ll_b" id="전체" >전체</a></li>
								<li><a class="my_ll_b" id="미결제">미결제</a></li>
								<li><a class="my_ll_b" id="결제확인">결제확인</a></li>
								<li><a class="my_ll_b" id="배송준비중">배송준비중</a></li>
								<li><a class="my_ll_b" id="배송중">배송중</a></li>
								<li><a class="my_ll_b" id="배송완료">배송완료</a></li>
								<li><a class="my_ll_b" id="주문확정">주문확정</a></li>
								<li><a class="my_ll_b" id="반품/교환">반품/교환</a></li>
								<li><a class="my_ll_b" id="취소">취소</a></li>
							</ul>
						</div>
					</div>
				</div> 
			</div>
			<div class="admin_list_no">
						<c:if test="${admin_ordercount == 0 }">
				<div class="admin_list">
				<!-- count == 0 -->
				<div id="my_ll_b">아직 주문된 내역이 없습니다.</div>
			</div>
			</c:if>
				<!-- count > 0  -->
				<c:if test="${admin_ordercount > 0 }">
				<ul class="admin_list_no_ul">
					<li class="order_num" id="my_bb_b" style="font-size: 20px;">주문 번호</li>
					<li class="item_num_2" id="my_bb_b" style="font-size: 20px;">주문 상품</li>
					<li class="order_date" id="my_bb_b" style="font-size: 20px;">주문 일자</li>
					<li class="order_state" id="my_bb_b" style="font-size: 20px;">주문 상태</li>
				</ul>
				<c:forEach var="order" items="${admin_orderlist }" varStatus="idx">
				<div class="order_list1">
					<a class="order_list2" href="orderlistpage.store?orderno=${order.orderno }"
						style="padding-left: 0; color: black;"> <span
						class="order_list1_span">주문번호</span> <span class="order_list1_num"
						id="my_bb_b" style="font-size: 15px">${order.orderno }</span>
					</a>
					<hr class="moblie_line">
					<div class="order_list3">
						<div class="order_list3_item">
							<a class="order_list3_img"> <span> <img
									style="width: 100%; height: auto;"
									src="../images/product/${order.itemfile1url }" alt="상품명">
							</span>
							</a>
							<div class="order_list_content">
								<div>
									<div class="item_name_2" id="my_ll_b">${order.itemname }</div>
									<div class="price_quant" id="my_ll_b">
										<span>${order.price }</span>원/ <span>${order.quantity }</span>개
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order_list4_1" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style=" display: inline-block;">
							<fmt:formatDate value="${order.orderdate }" pattern="yyyy-MM-dd HH:mm"/>
							</div>
					</div>
					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style=" display: inline-block;">
							<br>
							<c:choose>
								<c:when test="${order.orderstate==0}">미결제</c:when>
								<c:when test="${order.orderstate==1}">결제확인</c:when>
								<c:when test="${order.orderstate==2}">배송준비중</c:when>
								<c:when test="${order.orderstate==3}">배송중</c:when>
								<c:when test="${order.orderstate==4}">배송완료</c:when>
								<c:when test="${order.orderstate==5}">주문확정</c:when>
								<c:when test="${order.orderstate==6}">반품/교환</c:when>
								<c:when test="${order.orderstate==7}">취소</c:when>
							</c:choose>
							<br><br>
							<c:if test="${order.orderstate!=0}">
							<button class="order_state_btn" id="my_ll_w" style="font-size: 18px;"
							onclick="location.href='orderstateUpdate.store?orderno=${order.orderno}&orderstate=0'">미결제</button>
							</c:if>
							<c:if test="${order.orderstate!=1}">
							<button class="order_state_btn" id="my_ll_w" style="font-size: 18px;"
							onclick="location.href='orderstateUpdate.store?orderno=${order.orderno}&orderstate=1'">결제확인</button>
							</c:if>
							<c:if test="${order.orderstate!=2}">
							<button class="order_state_btn" id="my_ll_w" style="font-size: 18px;"
							onclick="location.href='orderstateUpdate.store?orderno=${order.orderno}&orderstate=2'">배송준비중</button>
							</c:if>
							<br class="desktop_br">
							<c:if test="${order.orderstate!=3}">
							<button class="order_state_btn" id="my_ll_w" style="font-size: 18px;"
							onclick="location.href='orderstateUpdate.store?orderno=${order.orderno}&orderstate=3'">배송중</button>
							</c:if>
							<c:if test="${order.orderstate!=4}">
							<button class="order_state_btn" id="my_ll_w" style="font-size: 18px;"
							onclick="location.href='orderstateUpdate.store?orderno=${order.orderno}&orderstate=4'">배송완료</button>
							</c:if>
							<c:if test="${order.orderstate!=5}">
							<button class="order_state_btn" id="my_ll_w" style="font-size: 18px;"
							onclick="location.href='orderstateUpdate.store?orderno=${order.orderno}&orderstate=5'">주문확정</button>
							</c:if>
							</div>
					</div>
				</div>
				</c:forEach>
				
			</div>
			<div class="list_footer">
				<div class="page_block">

					<c:if test="${pageNum > 1 }">
						<div class="arrow_box">
							<div class="arrow_pre"
								onclick="javascript:listdo('${pageNum-1 }')"></div>
						</div>
					</c:if>
					<c:if test="${pageNum <= 1 }">
						<div class="arrow_box">
							<div class="arrow_pre"></div>
						</div>
					</c:if>
					<span class="page_nums">
						<form action="change_return_order_list.store" method="post"
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
					<div class="arrow_box">
						<div class="arrow_next" onclick="javascript:listdo('${pageNum+1 }')"></div>
					</div>
					</c:if>
					<c:if test="${pageNum > 1 }">
					<div class="arrow_box">
						<div class="arrow_next"></div>
					</div>
					</c:if>
				</div>
			</div>
			</c:if>
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