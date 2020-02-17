<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]상품 재고 관리</title>
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
    font-size: 22px;
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
      document.selectform.pageNum.value=page;
      document.selectform.submit();
   }
</script>
<script type="text/javascript">
$(function(){
	   $(".dropdown-menu li").click(function(){
	      console.log($(this).children('a').text())
	      $("input[name=selectvalue]").val($(this).children('a').text())
	      console.log($(this).children('a').text())
	      $("input[name=select_2_value]").val($(this).children('a').text())
	      selectform.submit();
	   })
	})
</script>
</head>
<body>
<form action="order_item_list.store" method="post" name="selectform">
<input type="hidden" name="selectvalue" value="${param.selectvalue}">
<input type="hidden" name="pageNum" value="1">
</form>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]상품 재고 관리</span>
			<%-- <div style="float: right; height: 100%; width: 13vw;">
				<div class="dropdown" style="width: 200px; height: 40px;">
					<div class="select" style="padding: 0;padding-left: 10px;">
						<span id="my_ll_b">
						<c:if test="${empty param.select_2_value}">정렬 순</c:if>
								<c:if test="${!empty param.select_2_value}">
								${param.select_2_value}
								</c:if>
						</span> <i class="fa fa-chevron-up"></i>
					</div>
					<input type="hidden" name="order">
					<ul class="dropdown-menu">
					<li><a class="my_ll_b" id="수량순">수량순</a></li>
					<li><a class="my_ll_b" id="상품번호순">상품번호순</a></li>
					<li><a class="my_ll_b" id="가나다순">가나다순</a></li>
					</ul>
				</div>
				</div> --%>
	
			<div style="float: right; height: 100%; width: 13vw;">
				<div class="dropdown" style="width: 200px; height: 40px;">
					<div class="select" style="padding: 0;padding-left: 10px;">
						<span id="my_ll_b">
						<c:if test="${empty param.selectvalue}">재고 상태</c:if>
								<c:if test="${!empty param.selectvalue}">
								${param.selectvalue}
								</c:if>
						</span> <i class="fa fa-chevron-up"></i>
					</div>
					<input type="hidden" name="order">
					<ul class="dropdown-menu">
					<li><a class="my_ll_b" id="불량품">불량품</a></li>
					<li><a class="my_ll_b" id="정품">정품</a></li>
					</ul>
				</div>
				</div>
			</div>		</div>
			<div class="admin_order_filter"></div>
			<div class="admin_list_no">
				<!-- count > 0  -->

				<ul class="admin_list_no_ul">
					<!-- <li class="out_num" id="my_bb_b" style="font-size: 20px;">재고번호</li> -->
					<li class="item_num" id="my_bb_b" style="font-size: 20px;">상품번호</li>
					<li class="item_name" id="my_bb_b" style="font-size: 20px;">상품명</li>
					<li class="item_amount" id="my_bb_b" style="font-size: 20px;">수량</li>
					<li class="out_price" id="my_bb_b" style="font-size: 20px;">재고상태</li>
				</ul>
				<c:forEach var="w" items="${keeplist}">
				<ul class="order_list1">
					<%-- <li class="out_num_1" id="my_ll_b" style="text-align: center; width: 10vw;">
						${w.whousingnum}
					</li> --%>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						${w.itemnum}
					</li>
					<li class="item_name_1" id="my_ll_b"
						style="text-align: center; width: 20vw;">
						${w.itemname}
					</li>
					<li class="out_num_1" id="my_ll_b"
						style="text-align: center; width: 10vw;">
						${w.whousingquant}
					</li>
					<li class="out_num_1" style="text-align: center; width: 15vw;">
						<span id="my_ll_b">
						<c:if test="${w.state==0 }">정품</c:if>
						<c:if test="${w.state==1 }">불량</c:if>
						</span>
					</li>
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
					<span class="page_nums" style="    width: 22vw;">
						<form action="order_item_list.store" method="post"
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