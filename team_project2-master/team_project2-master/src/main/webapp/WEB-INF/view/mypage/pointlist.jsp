<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 리스트</title>
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
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div id="mArticle">
		<div class="header__HeaderBlock-sc-1dshs32-0 dfiGDm">
			<div class="header__HeaderWrapper-sc-1dshs32-2 hKoDIE">
				<div class="header__Text1-sc-1dshs32-3 hfzjYP" id="my_ll_b">사용 가능한 포인트</div>
				<div class="header__Text2-sc-1dshs32-4 guPJbr" id="my_b_b">
					<span><fmt:formatNumber value="${totalpoint}" pattern="#,###P" /></span>
				</div>
				<!-- <div class="header__Text3-sc-1dshs32-5 hQeOUi">
					이번 달 만료 예정 포인트 <span>0</span>P 입니다.
				</div> -->
			</div>
		</div>
		<div class="list__Header-j7zqmn-0 cKOECY">
			<span class="list__HeaderTitle-j7zqmn-1 fusTrl" id="my_bb_20b">포인트 사용 내역</span><span
				class="list__HeaderInfo-j7zqmn-2 iNARBl"><!-- 최근 1년 내역만 확인할 수
				있습니다. --></span>
		</div>
		<div class="list__ContentWrapper-j7zqmn-3 kpgujp">
			<ul class="table-head__Block-sc-1fwkjri-0 dIVlFl">
				<li class="table-head__Li-sc-1fwkjri-1 iXUmoy" width="108" id="my_bb_20b">일자</li>
				<li class="table-head__Li-sc-1fwkjri-1 iXUmoy" width="108" id="my_bb_20b">상세
					내역</li>
				<li class="table-head__Li-sc-1fwkjri-1 iXUmoy" id="my_bb_20b" style="width: 160px;">적립/사용</li>
			</ul>
			<c:forEach var="point" items="${pointlist }">
			<div class="list__ContentBlock-j7zqmn-5 gxBnDY">
				<div class="list__LeftBox-j7zqmn-8 kDyDdZ">
					<span class="list__Title-j7zqmn-6 kgzyNS" id="my_ll_b" >${point.pointtext }</span><span
						class="list__InDate-j7zqmn-7 kTuShr" id="my_ll_b" style="font-size: 16px"><fmt:formatDate value="${point.pointdate }" pattern="yyyy-MM-dd HH:mm"/></span>
				</div>
				<c:if test="${point.point > 0}">
				<span class="list__Amount-j7zqmn-9 geikNB" id="my_ll_b" style="color: #1f6fff;">
				<span><fmt:formatNumber value="${point.point }" pattern="#,###P"/></span>
				</span>
				</c:if>
				<c:if test="${point.point < 0}">
				<span class="list__Amount-j7zqmn-9 geikNB" id="my_ll_b" style="color: red;" >
				<span><fmt:formatNumber value="${point.point }" pattern="#,###P"/></span>
				</span>
				</c:if>
			</div>
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
						<form action="pointlist.store" method="post"
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
</body>
</html>