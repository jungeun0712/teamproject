<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]고객센터 관리</title>
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
<script>
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
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]고객센터 관리-FAQ 목록</span>
				<button class="admin_store_write" id="my_ll_w"
					onclick="location.href='./help_write.store?select=faq'">FAQ 등록</button>
			</div>
			
			<c:if test="${faqcount == 0 }">
				<div class="admin_list_no" style="margin-top: 42px;">
					<div class="admin_list">
					<!-- count == 0 -->
						<div id="my_ll_b">작성된 공지사항이 없습니다</div>
					</div>
				</div>
			</c:if>
			<c:if test="${faqcount != 0 }">
			<ul class="admin_order_filter">
				<li> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">총</span> <span class="admin_order_filter_count"
					id="my_ll_b">${faqcount}</span> <span
					class="admin_order_filter_str admin_order_filter_count"
					id="my_ll_b">건</span>
				</li>
			
				<li class="admin_order_filter_select" style="padding-right: 230px;">
						
					<div class="admin_order_filter_box">
					<form name="selectform" action="faq_list.store" method="post">
						<div class="dropdown"
							style="width: 230px; height: 40px; margin-bottom: 10px;">
							<input type="hidden" name="selectvalue" value="">
							<div class="select">
								<span id="my_ll_b">
								<c:if test='${empty param.selectvalue}'>
								전체</c:if>
								<c:if test='${!empty param.selectvalue}'>
									${param.selectvalue}
								</c:if></span> <i class="fa fa-chevron-up"></i>
							</div>
							
							<ul class="dropdown-menu">
								<li><a class="my_ll_b" id="one">전체</a></li>
								<li><a class="my_ll_b" id="one">배송</a></li>
								<li><a class="my_ll_b" id="two">교환/반품/환불</a></li>
								<li><a class="my_ll_b" id="threee">기타</a></li>
								<li><a class="my_ll_b" id="four">상품</a></li>
								<li><a class="my_ll_b" id="five">주문결제</a></li>
								<li><a class="my_ll_b" id="six">취소/반품/교환</a></li>
							</ul>
						</div>
							</form>
							</div>
					</li>
				
				</ul>
			<script>
	function listdo(page){
		document.searchform.pageNum.value = page;
		document.searchform.submit(); //페이지 눌러도 검색창 파라미터 유지
	}
</script> 
			<div class="admin_list_no">
				<!-- count > 0  -->
				<ul class="admin_list_no_ul">
					<li class="notice_num" id="my_bb_b" style="font-size: 20px;">번호</li>
					<li class="notice_title" id="my_bb_b"
						style="font-size: 20px; width: 31vw; text-align: left;">제목</li>
					<li class="notice_date" id="my_bb_b" style="font-size: 20px;padding-right:7px;">항목</li>
					<li class="notice_manage" id="my_bb_b" style="font-size: 20px;">관리</li>
				</ul>
				<c:forEach var="faqlist" items="${faqlist}" varStatus="stat">
				<input type="hidden" name="pageNum" value="1" />
				<input type="hidden" name="faqno" value="${faqlist.qnano}">
				<div class="order_list1" style="height: 70px;">
					<a class="store_list" onclick="return false;"
						style="padding-left: 0; color: black; width: 14vw;"> <span
						class="order_list1_span"></span> <span class="order_list1_num"
						id="my_ll_b" style="margin-left: 60px;">${stat.index+1}</span>
						<c:set var="faqcount" value="${faqcount -1}" />
					</a>
					<hr class="moblie_line">
					<div class="store_list" style="text-align: center;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block; width: 40vw; text-align: left;">
							<a href="help_detail.store?select=faq&no=${faqlist.qnano}">
							${faqlist.q_subject}</a></div>
					</div>
					<div class="store_list"
						style="text-align: center; width: 14vw; margin-left: auto;">
						<div class="order_list2_date" id="my_ll_b"
							style="display: inline-block;">
								<c:if test="${faqlist.filter eq '0'}">전체</c:if>
								<c:if test="${faqlist.filter eq '1'}">배송</c:if>
								<c:if test="${faqlist.filter eq '2'}">교환/반품/환불</c:if>
								<c:if test="${faqlist.filter eq '3'}">기타</c:if>
								<c:if test="${faqlist.filter eq '4'}">상품</c:if>
								<c:if test="${faqlist.filter eq '5'}">주문결제</c:if>
							</div>
					</div>

					<div class="order_list4_2" style="text-align: center;">
						<div class="order_list2_state" id="my_ll_b"
							style="display: inline-block;">
							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_update.store?select=faq&no=${faqlist.qnano}'">수정</button>

							<button class="admin_store_update" id="my_ll_w"
								onclick="location.href='./help_delete.store?select=faq&no=${faqlist.qnano}'">삭제</button>
						</div>
					</div>
				</div>
				</c:forEach>
				
			<!-- <div class="list_footer">
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
			</div> -->
				<div class="list_footer" style="border-top: 1px solid;">
						<div class="page_block">

							<c:if test="${pageNum > 1 }">
								<div class="arrow_box_new">
									<div class="arrow_pre_new"
										onclick="javascript:listdo(${pageNum-1 })"></div>
								</div>
							</c:if>
							<c:if test="${pageNum <= 1 }">
								<div class="arrow_box_new">
									<div class="arrow_pre_new"></div>
								</div>
							</c:if>
							<span class="page_nums"> <!--  <form action="order_item_in.store" method="post" name="f">  -->
								<c:forEach var="a" begin="${qnastartpage}" end="${qnaendpage}">
									<c:if test="${pageNum==a}">
										<a href="javascript:listdo(${a})" class="clicka"
											id="my_bb_20b">${a}</a>
									</c:if>
									<c:if test="${pageNum!=a}">
										<a href="javascript:listdo(${a})" id="my_ll_b">${a}</a>
									</c:if>
								</c:forEach> <!--  </form>  -->
							</span>
						
							<c:if test="${pageNum < qnamaxpage}">
								<div class="arrow_box_new">
									<div class="arrow_next_new"
										onclick="javascript:listdo(${pageNum+1})"></div>
								</div>
							</c:if>
							<c:if test="${pageNum >= qnamaxpage}">
								<div class="arrow_box_new">
									<div class="arrow_next_new"></div>
								</div>
							</c:if>
						</div>
					</div>
		</div>
		</c:if>
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