<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]환불/교환/반품 신청서 관리</title>
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
</style>
<script type="text/javascript">
	function listdo(page) {
		document.f.pageNum.value = page;
		document.f.submit();
	}
</script>
</head>
<body>
	<div class="admin_order_list" style="margin-bottom: 0px;">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]환불/교환/반품 신청서 관리</span>
			</div>

			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${chgcount }</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			</div>
		</div>
		<div class="admin_list_no">
			<!-- count > 0  -->
			<ul class="admin_list_no_ul">
				<li class="out_num" id="my_bb_b"
					style="text-align: center; width: 20vw;">주문번호</li>
				<li class="item_num" id="my_bb_b"
					style="text-align: center; width: 15vw;">신청날짜</li>
				<li class="item_name" id="my_bb_b"
					style="text-align: center; width: 10vw;">요청사유</li>
				<li class="item_amount" id="my_bb_b"
					style="text-align: center; width: 10vw;">관리</li>
			</ul>
			<c:forEach var="chg" items="${chglist }">
				<ul class="order_list1">
					<li class="out_num_1"
						style="text-align: center; width: 20vw; font-size: 20px;"><a
						href="./change_return_order_info.store?chg_no=${chg.chg_no }"
						id="my_bb_20b">${chg.chg_orderno }</a></li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 15vw;"><fmt:formatDate
							value="${chg.chg_chkdate }" pattern="yyyy-MM-dd HH:mm" /></li>
					<li class="item_name_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">${chg.chg_reseon}</li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						<button class="admin_store_update" id="my_ll_w"
							onclick="location.href='./chg_state_yn.store?chg_no=${chg.chg_no}&yn=1'">거절</button>
						<button class="admin_store_update" id="my_ll_w"
							onclick="location.href='./chg_state_yn.store?chg_no=${chg.chg_no}&yn=2'">수락</button>&nbsp;&nbsp;&nbsp;
					</li>
				</ul>
			</c:forEach>
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
</body>
</html>