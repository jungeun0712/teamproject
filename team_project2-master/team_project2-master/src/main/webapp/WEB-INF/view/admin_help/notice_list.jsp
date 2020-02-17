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
/* .admin_list_no li{
 margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
    } */
</style>
<script type="text/javascript">
   function listdo(page){
      document.searchform.pageNum.value=page;
      document.searchform.submit();
   }
</script>
</head>
<body>
	<div class="admin_order_list">
		<div class="admin_order_header">
			<div class="admin_order_title">
				<span id="my_b_b">[관리자]고객센터 관리-공지사항 목록</span>
				<button class="admin_store_write" id="my_ll_w"
					onclick="location.href='./help_write.store?select=notice'">공지사항
					등록</button>
			</div>
			<c:if test="${noticecount == 0 }">
				<div class="admin_list_no" style="margin-top: 42px;">
					<div class="admin_list">
						<!-- count == 0 -->
						<div id="my_ll_b">작성된 공지사항이 없습니다</div>
					</div>
				</div>
			</c:if>
			<c:if test="${noticecount != 0 }">
				<div class="admin_order_filter">
					<span> <span
						class="admin_order_filter_str admin_order_filter_count"
						id="my_ll_b">총</span> <span class="admin_order_filter_count"
						id="my_ll_b">${noticecount}</span> <span
						class="admin_order_filter_str admin_order_filter_count"
						id="my_ll_b">건</span>
					</span>
				</div>
				<div class="admin_list_no">
					<!-- count >   -->
					<a class="admin_list_no_ul"> <span class="notice_num"
						id="my_bb_b" style="font-size: 20px;">번호</span> <span
						class="notice_title" id="my_bb_b"
						style="font-size: 20px; width: 33vw; text-align: left;">제목</span>
						<span class="notice_date" id="my_bb_b" style="font-size: 20px;">작성일자</span>
						<span class="notice_manage" id="my_bb_b" style="font-size: 20px;">관리</span>
					</a>
					<c:forEach var="noticelist" items="${noticelist}" varStatus="stat">
						<input type="hidden" name="pageNum" value="1" />
						<input type="hidden" name="faqno" value="${noticelist.qnano}">
						<div class="order_list1" style="height: 70px;">
							<a class="store_list" onclick="return false;"
								style="padding-left: 0; color: black; width: 14vw;"> <span
								class="order_list1_span"></span> <span class="order_list1_num"
								id="my_ll_b" style="margin-left: 60px;">${stat.index+1}</span> <c:set
									var="noticecount" value="${noticecount -1}" />
							</a>
							<hr class="moblie_line">
							<div class="store_list" style="text-align: center;">
								<div class="order_list2_date" id="my_ll_b"
									style="display: inline-block; width: 40vw; text-align: left;">
									<a
										href="help_detail.store?select=notice&no=${noticelist.qnano}">
										${noticelist.q_subject}</a>
								</div>
							</div>
							<div class="store_list"
								style="text-align: center; width: 14vw; margin-left: auto;">
								<div class="order_list2_date" id="my_ll_b"
									style="display: inline-block;">
									<fmt:formatDate value="${noticelist.boarddate}"
										pattern="yyyy-MM-dd" />
								</div>
							</div>

							<div class="order_list4_2" style="text-align: center;">
								<div class="order_list2_state" id="my_ll_b"
									style="display: inline-block;">
									<button class="admin_store_update" id="my_ll_w"
										onclick="location.href='./help_update.store?select=notice&no=${noticelist.qnano}'">수정</button>

									<button class="admin_store_update" id="my_ll_w"
										onclick="location.href='./help_delete.store?select=notice&no=${noticelist.qnano}'">삭제</button>
								</div>
							</div>
						</div>
					</c:forEach>

					<!-- 	<div class="list_footer">
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
								<c:forEach var="a" begin="${noticestartpage}" end="${noticeendpage}">
									<c:if test="${pageNum==a}">
										<a href="javascript:listdo(${a})" class="clicka"
											id="my_bb_20b">${a}</a>
									</c:if>
									<c:if test="${pageNum!=a}">
										<a href="javascript:listdo(${a})" id="my_ll_b">${a}</a>
									</c:if>
								</c:forEach> <!--  </form>  -->
							</span>
							<c:if test="${pageNum < noticemaxpage}">
								<div class="arrow_box_new">
									<div class="arrow_next_new"
										onclick="javascript:listdo(${pageNum+1})"></div>
								</div>
							</c:if>
							<c:if test="${pageNum >= noticemaxpage}">
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

</body>
</html>