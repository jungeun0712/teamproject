<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜</title>
<!-- <link rel="stylesheet" type="text/css" href="../css/idx_cyj.css"> -->
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
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
	function listdo(page) {
		document.f.pageNum.value = page;
		document.f.submit();
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input:checkbox").on('click', function() {
			if (!$(this).prop('checked')) {
			} else {
				var pickno = $(this).val();
				//alert(pickno);
				$.ajax("wishlist_delete.store?pickno=" + pickno, {
					success : function(data) {//콜백함수
						/* alert("나의 리스트에서 삭제하였습니다.") */
						location.href="wishlist.store";
					},
					error : function(e) {
						alert("나의 리스트에 삭제하는 것에 실패하였습니다.") 
					}
				})
			}

		});
	});
	</script>
</head>
<body>
	<div class="admin_order_list" style="margin-bottom: 0px;">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">찜</span>
			</div>
				<c:if test="${wishlistcount == 0 }">
		<div class="admin_list_no">
				<div class="admin_list">
				<!-- count == 0 -->
				<div id="my_ll_b">아직 찜한 내역이 없습니다.</div>
			</div>
			</div>
			</c:if>
		</div>
	
			<!-- count > 0  -->
			<c:if test="${wishlistcount > 0 }">
			<div class="admin_order_filter">
				<span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${wishlistcount }</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</span>
			</div>
		<div class="admin_list_no">
			<ul class="admin_list_no_ul">
				<li class="out_num" id="my_bb_b"
					style="text-align: center; width: 20vw;">상품 명</li>
				<li class="item_num" id="my_bb_b"
					style="text-align: center; width: 26vw;">상품 금액</li>
			</ul>
			<c:forEach var="wish" items="${wishlist }">
				<ul>
						<li class="basket-item__Wrap-sc-1bhrte-0 evybcA"><div class="wish_check wish_btn" style="position: inherit;"><input
							class="check-box__CheckBox-sc-1qo7hxm-0 izsgpp" type="checkbox" value="${wish.pickno }"
							id="checkbox${wish.itemnum }" name="itemchks"> 
							<label class="check-box__CheckBoxChecker-sc-1qo7hxm-1 dejnuF"
							for="checkbox${wish.itemnum }"></label> <input type="hidden" name="itemnum"
							value="1"></div>
							<div class="basket-item__ImageWrap-sc-1bhrte-2 euYbXx">
								<a class="link_thumb basket-item__ImageLink-sc-1bhrte-1 guGymS"
									href="../item/product-detail.store"><span
									class="thumbnail__ThumbnailWrap-sc-1ev0rt3-0 bfspSz"
									itemtype="basket"><span
										class="img__Wrap-tev7mj-0 hmRzec"><img
											class="img__Image-tev7mj-1 elMFjf"
											src="../images/product/${wish.itemfile1url }"
											alt="상품 이미지"></span></span></a>
							</div>
							<div class="basket-item__ItemInfoWrap-sc-1bhrte-3 fDGlIr">
								<div class="basket-item__Div-sc-1bhrte-4 gNIdPH" style="    width: 60vw;margin-left: 5vw;">
									<div class="basket-item__ItemTitleArea-sc-1bhrte-5 BTcrB">
										<div class="basket-item__ItemTitle-sc-1bhrte-6 bnlBze" id="my_ll_b" style="    width: 60vw;">
										${wish.itemname }
										</div>
									</div>
									<div class="basket-item__ItemPriceArea-sc-1bhrte-8 dVWwMq">
										<span id="my_ll_b"><fmt:formatNumber value="${wish.price }" pattern="#,###원"/></span>
									</div>
								</div>
							</div></li>
					</ul>
			</c:forEach>
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
						<form action="wishlist.store" method="post"
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
		</div>
		</c:if>
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