<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
</style>
<!-- mypage_cyj.css -->
</head>
<body>
	<div class="mypage_header">
		<div>
			<span class="mypage_name" id="my_b_b">${sessionScope.kname}</span> <span
				class="mypage_email"> <span class="mypage_imgemail"></span> <span
				id="my_l_b">${sessionScope.kemail }</span>
			</span>
		</div>
		<a href="../mypage/orderupdate.store" class="mem_update" id="my_l_b">배송지수정</a>
	</div>
	<div class="mypage_list">
		<a href="orderlistpage.store?status=receive" class="list_1"> <span class="list_2" id="my_bb_b">${count_receive}</span>
			<div>
				<span class="list_3" id="my_ll_b">주문 접수</span> <span
					class="next_img"></span>
			</div>
		</a> <a href="orderlistpage.store?status=in-shipping" class="list_1"> <span class="list_2" id="my_bb_b">${count_inshipping}</span>
			<div>
				<span class="list_3" id="my_ll_b">배송 중</span> <span class="next_img"></span>
			</div>
		</a> <a href="orderlistpage.store?status=re-order" class="list_1"> <span class="list_2" id="my_bb_b">${count_reorder}</span>
			<div>
				<span class="list_3" id="my_ll_b">취소/반품/교환</span> <span
					class="next_img"></span>
			</div>
		</a> <a href="../mypage/pointlist.store" class="list_4"> <span class="list_2" id="my_bb_b">
		<c:if test="${count_point>0 }">
		<fmt:formatNumber value="${count_point }" pattern="#,###P"/>
		</c:if> 
		<c:if test="${count_point<=0 }">
		<fmt:formatNumber value="0" pattern="#,###P"/>
		</c:if> 
		</span>
			<div>
				<span class="list_3" id="my_ll_b">사용가능한 포인트</span> <span
					class="next_img" ></span>
			</div>
		</a>
	</div>
<!-- 	<div class="moblie_list">
		<a class="moblie_list1" href="orderlistpage.store">
		<span class="moblie_list2" id="my_ll_b">주문내역</span>
		<div class="moblie_list3">
		<span class="moblie_img"></span>
		</div>
		</a>
		<a class="moblie_list1" href="contactpage.store">
		<span class="moblie_list2" id="my_ll_b">1 : 1 문의</span>
		<div class="moblie_list3">
		<span class="moblie_img"></span>
		</div>
		</a>
		<a class="moblie_list1" href="pointlistpage.store">
		<span class="moblie_list2" id="my_ll_b">사용가능한 포인트</span>
		<div class="moblie_list3">
		<span class="moblie_list2" id="my_bb_b" style="font-size: 20px;">1,000&nbsp;P</span>
		<span class="moblie_img"></span>
		</div>
		</a>
	</div> -->
	<div class="desktop_list">
	<div class="order_list">
	<span class="order_list_t" id="my_bb_b">주문내역</span>
	<button class="order_list_b" id="my_ll_b" onclick="location.href='orderlistpage.store'">
	더보기
	</button>
	</div>
	<c:if test="${count_all==0 }">
	<div class="order_content">
	<div class="order_content_e" id="my_ll_b">아직 주문하신 내역이 없어요</div>
	</div>
	</c:if>
	<c:if test="${count_all>0 }">
	<ul class="admin_list_no_ul" style="    border-top: 1px solid black;">
					<li class="order_num" id="my_bb_b" style="font-size: 20px;">주문 번호</li>
					<li class="item_num_2" id="my_bb_b" style="font-size: 20px;">주문 상품</li>
					<li class="order_date" id="my_bb_b" style="font-size: 20px;">주문 일자</li>
	</ul>
	<c:forEach var="order" items="${orderlist }" end="2">
				<div class="order_list1">
					<a class="order_list2" href="ordernum.store?orderno=${order.orderno }"
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
				</div>
				</c:forEach>
				<div style="    border-bottom: 1px solid black;"></div>
	</c:if>
	<div>
		<div class="order_list">
		<span class="order_list_t" id="my_bb_b">1 : 1 문의</span>
		<button class="order_list_b" id="my_ll_b" onclick="location.href='contactpage.store'">더보기</button>
		</div>
		<c:if test="${! empty contactlist}">
		<ul class="admin_list_no_ul" style="    border-top: 1px solid black;">
		<!-- 			<li class="order_num" id="my_bb_b" style="font-size: 20px;">주문 번호</li> -->
					<li class="item_num_2" id="my_bb_b" style="font-size: 20px;">문의 제목</li>
					<!-- <li class="order_date" id="my_bb_b" style="font-size: 20px;">주문 일자</li> -->
	</ul>
	<c:forEach var="contact" items="${contactlist }" end="2">
				<div class="order_list1">
					<%-- <a class="order_list2" href="ordernum.store?orderno=${contactlist.orderno }"
						style="padding-left: 0; color: black;"> <span
						class="order_list1_span">주문번호</span> <span class="order_list1_num"
						id="my_bb_b" style="font-size: 15px">${order.orderno }</span>
					</a> --%>
					<hr class="moblie_line">
					<div class="order_list3">
						<div class="order_list3_item">
							<a class="order_list2"> <span>
							${contact.q_subject }
							</span>
							</a>
							<%-- <div class="order_list_content">
								<div>
									<div class="item_name_2" id="my_ll_b">${order.itemname }</div>
									<div class="price_quant" id="my_ll_b">
										<span>${order.price }</span>원/ <span>${order.quantity }</span>개
									</div>
								</div>
							</div> --%>
						</div>
					</div>
					
				</div>
				</c:forEach>
				</c:if>
				<c:if test="${empty contactlist}">
				<div class="order_content">
		<div class="order_content_e" id="my_ll_b">아직 문의 하신 내용이 없어요</div>
		</div>
		</c:if>
	</div>
	</div>
</body>
</html>