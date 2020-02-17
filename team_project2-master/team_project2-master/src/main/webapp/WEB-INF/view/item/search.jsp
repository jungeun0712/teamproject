<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>

<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css" href="../css/idx_cyj.css">
<link rel="stylesheet" type="text/css"
   href="../fonts/iconic/css/material-design-iconic-font.min.css">
   <link rel="stylesheet" type="text/css"
   href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<script>
	$(document).ready(function() {
		$("input:checkbox").on('click', function() {
			if ($(this).prop('checked')) {
				var listnum = $(this).val();
				$.ajax("" + $(this).val(), {
					success : function(data) {//콜백함수
						/* alert("나의 리스트에 저장하였습니다.") */
					},
					error : function(e) {
						/* alert("나의 리스트에 저장하는 것에 실패하였습니다.") */
					}
				})
				$(this).parent().removeClass("wish_btn")
				$(this).parent().addClass("wish_btn").addClass("on")
			} else {
				var listnum = $(this).val();
				$.ajax("" + $(this).val(), {
					success : function(data) {//콜백함수
						/* alert("나의 리스트에서 삭제하였습니다.") */
					},
					error : function(e) {
						/* alert("나의 리스트에 삭제하는 것에 실패하였습니다.") */
					}
				})
				$(this).parent().removeClass("wish_btn").removeClass("on")
				$(this).parent().addClass("wish_btn")
			}

		});
	});
</script>
	<div id="mArticle">
		<h1 class="search-result__Keywords-sc-1y2po8m-0 itJrQV">
			‘<strong style="color: black;"> <c:if
					test='${empty param.keyword}'>
			---
			</c:if> <c:if test='${!empty param.keyword}'>
			${param.keyword}</c:if></strong>’<span>검색결과</span>
		</h1>
		<hr class="search-result__Separator-sc-1y2po8m-1 hrcZyO">
		<div class="list__InfoBlock-sc-2o92ux-2 grUkHt" style="height: 86px;">
			<div>
				<span class="list__Text-sc-2o92ux-3 koZTSa" lang="kr">총 </span><span
					class="list__Total-sc-2o92ux-4 cGwKcg list__Text-sc-2o92ux-3 kfNYFC">4</span><span
					class="list__Text-sc-2o92ux-3 koZTSa" lang="kr">개</span>
			</div>
			<div class="list__CheckBox-sc-2o92ux-5 eBQTEi"></div>
			<div
				style="display: inline-block; position: relative; float: right; padding-left: 645px;">
				<div class="dropdown" style="width: 200px; height: 50px;">
					<div class="select">
						<span>선택하세요</span> <i class="fa fa-chevron-up"></i>
					</div>
					<input type="hidden" name="order">
					<ul class="dropdown-menu">
						<li id="신상품순">신상품순</li>
						<li id="판매량순">판매량순</li>
						<li id="낮은가격순">낮은가격순</li>
						<li id="높은가격순">높은가격순</li>
					</ul>
				</div>
			</div>


			<div style="display: inline-block; position: relative; float: right;">
				<div class="dropdown" style="width: 200px; height: 50px;">
					<div class="select">
						<span>캐릭터를 선택하세요</span> <i class="fa fa-chevron-up"></i>
					</div>
					<input type="hidden" name="character">
					<ul class="dropdown-menu">
						<li id="전체"><img
							src="../images/product/category_group_off.png"
							onmouseover="this.src='../images/product/category_group_on.png';"
							onmouseout="this.src='../images/product/category_group_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;전체</li>
						<li id="라이언"><img
							src="../images/product/category_rion_off.png"
							onmouseover="this.src='../images/product/category_rion_on.png';"
							onmouseout="this.src='../images/product/category_rion_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;라이언</li>
						<li id="어피치"><img
							src="../images/product/category_apeach_off.png"
							onmouseover="this.src='../images/product/category_apeach_on.png';"
							onmouseout="this.src='../images/product/category_apeach_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;어피치</li>
						<li id="무지"><img
							src="../images/product/category_muzi_off.png"
							onmouseover="this.src='../images/product/category_muzi_on.png';"
							onmouseout="this.src='../images/product/category_muzi_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;무지</li>
						<li id="프로도"><img
							src="../images/product/category_frodo_off.png"
							onmouseover="this.src='../images/product/category_frodo_on.png';"
							onmouseout="this.src='../images/product/category_frodo_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;프로도</li>
						<li id="네오"><img src="../images/product/category_neo_off.png"
							onmouseover="this.src='../images/product/category_neo_on.png';"
							onmouseout="this.src='../images/product/category_neo_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;네오</li>
						<li id="튜브"><img
							src="../images/product/category_tube_off.png"
							onmouseover="this.src='../images/product/category_tube_on.png';"
							onmouseout="this.src='../images/product/category_tube_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;튜브</li>
						<li id="데이지"><img
							src="../images/product/category_jayz_off.png"
							onmouseover="this.src='../images/product/category_jayz_on.png';"
							onmouseout="this.src='../images/product/category_jayz_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;제이지</li>
						<li id="콘"><img src="../images/product/category_con_off.png"
							onmouseover="this.src='../images/product/category_con_on.png';"
							onmouseout="this.src='../images/product/category_con_off.png';"
							style="width: 25%; height: 25%;">&nbsp;&nbsp;콘</li>
					</ul>
				</div>
			</div>
		</div>


		<div class="list__ListWrap-sc-2o92ux-0 hEvDtU">
			<ul class="item-list__Ul-sc-1c138kz-2 iOsrvN" itemtype="search">
				<li class="item__Li-sc-1eldrmh-0 lnYegB" itemtype="search"><div>
						<a href="/kr/products/6572" class="item__Link-sc-1eldrmh-8 xJJuU"><span
							class="item__ThumbnailWrap-sc-1eldrmh-1 hWTFwr" itemtype="search"><span
								class="img__Wrap-tev7mj-0 hmRzec"><img
									class="img__Image-tev7mj-1 elMFjf"
									src="https://t1.daumcdn.net/friends/prod/product/20200122102329470_8809681706971_AW_03.jpg?type=thumb&amp;opt=R255x255@2xa"
									alt="상품 이미지"></span></span><strong
							class="item__ItemTitle-sc-1eldrmh-2 cYMYfE" itemtype="search">메가바디필로우_리틀라이언</strong>
							<p class="item__Price-sc-1eldrmh-3 gTnMRv" itemtype="search">
								<span class="item__ScreenOut-sc-1eldrmh-5 gPRlEQ">금액</span><span>94,000</span>원
							</p>
							</a>
								<div class="wish_check" itemtype="new">
												<input id="all_item1" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item1"> </label>
								</div>
					</div></li>
				<li class="item__Li-sc-1eldrmh-0 lnYegB" itemtype="search"><div>
						<a href="/kr/products/6498" class="item__Link-sc-1eldrmh-8 xJJuU"><span
							class="item__ThumbnailWrap-sc-1eldrmh-1 hWTFwr" itemtype="search"><span
								class="img__Wrap-tev7mj-0 hmRzec"><img
									class="img__Image-tev7mj-1 elMFjf"
									src="https://t1.daumcdn.net/friends/prod/product/20191220153614378_8809681705073_AW_00.jpg?type=thumb&amp;opt=R255x255@2xa"
									alt="상품 이미지"></span></span><strong
							class="item__ItemTitle-sc-1eldrmh-2 cYMYfE" itemtype="search">치즈
								에어팟케이스 라이언</strong>
							<p class="item__Price-sc-1eldrmh-3 hCHOCe" itemtype="search">
								<span class="item__ScreenOut-sc-1eldrmh-5 gPRlEQ">금액</span><span>19,000</span>원
							</p>
							<div class="item__LabelWrap-sc-1eldrmh-6 bycDdO"></div></a>
						<div class="wish_check" itemtype="new">
												<input id="all_item2" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item2"> </label>
								</div>
					</div></li>
				<li class="item__Li-sc-1eldrmh-0 lnYegB" itemtype="search"><div>
						<a href="/kr/products/6539" class="item__Link-sc-1eldrmh-8 xJJuU"><span
							class="item__ThumbnailWrap-sc-1eldrmh-1 hWTFwr" itemtype="search"><span
								class="img__Wrap-tev7mj-0 hmRzec"><img
									class="img__Image-tev7mj-1 elMFjf"
									src="https://t1.daumcdn.net/friends/prod/product/20200117143700245_8809681705967_AW_00.jpg?type=thumb&amp;opt=R255x255@2xa"
									alt="상품 이미지"></span></span><strong
							class="item__ItemTitle-sc-1eldrmh-2 cYMYfE" itemtype="search">피규어주차번호판_리틀라이언</strong>
							<p class="item__Price-sc-1eldrmh-3 hCHOCe" itemtype="search">
								<span class="item__ScreenOut-sc-1eldrmh-5 gPRlEQ">금액</span><span>15,000</span>원
							</p>
							<div class="item__LabelWrap-sc-1eldrmh-6 bycDdO"></div></a>
							<div class="wish_check" itemtype="new">
												<input id="all_item3" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item3"> </label>
								</div>
					</div></li>
				<li class="item__Li-sc-1eldrmh-0 lnYegB" itemtype="search"><div>
						<a href="/kr/products/6528" class="item__Link-sc-1eldrmh-8 xJJuU"><span
							class="item__ThumbnailWrap-sc-1eldrmh-1 hWTFwr" itemtype="search"><span
								class="img__Wrap-tev7mj-0 hmRzec"><img
									class="img__Image-tev7mj-1 elMFjf"
									src="https://t1.daumcdn.net/friends/prod/product/20200102182723911_8809681706049_AW_00.jpg?type=thumb&amp;opt=R255x255@2xa"
									alt="상품 이미지"></span></span><strong
							class="item__ItemTitle-sc-1eldrmh-2 cYMYfE" itemtype="search">에어팟프로
								케이스 핑거링세트 리틀라이언</strong>
							<p class="item__Price-sc-1eldrmh-3 hCHOCe" itemtype="search">
								<span class="item__ScreenOut-sc-1eldrmh-5 gPRlEQ">금액</span><span>18,000</span>원
							</p>
							<div class="item__LabelWrap-sc-1eldrmh-6 bycDdO"></div></a>
							<div class="wish_check" itemtype="new">
												<input id="all_item4" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item4"> </label>
								</div>
					</div></li>
				<li class="item__Li-sc-1eldrmh-0 lnYegB" itemtype="search"><div>
						<a href="/kr/products/6528" class="item__Link-sc-1eldrmh-8 xJJuU"><span
							class="item__ThumbnailWrap-sc-1eldrmh-1 hWTFwr" itemtype="search"><span
								class="img__Wrap-tev7mj-0 hmRzec"><img
									class="img__Image-tev7mj-1 elMFjf"
									src="https://t1.daumcdn.net/friends/prod/product/20200102182723911_8809681706049_AW_00.jpg?type=thumb&amp;opt=R255x255@2xa"
									alt="상품 이미지"></span></span><strong
							class="item__ItemTitle-sc-1eldrmh-2 cYMYfE" itemtype="search">에어팟프로
								케이스 핑거링세트 리틀라이언</strong>
							<p class="item__Price-sc-1eldrmh-3 hCHOCe" itemtype="search">
								<span class="item__ScreenOut-sc-1eldrmh-5 gPRlEQ">금액</span><span>18,000</span>원
							</p>
							<div class="item__LabelWrap-sc-1eldrmh-6 bycDdO"></div></a>
							<div class="wish_check" itemtype="new">
												<input id="all_item5" type="checkbox" data-toggle="tooltip"
													data-placement="top" title="찜하기"<%-- <c:if test="${jjimcount>0}">checked="checked"</c:if> --%>>
												<label for="all_item5"> </label>
								</div>
					</div></li>

			</ul>
		</div>
		<!-- <div class="list__NoResultWrap-sc-2o92ux-10 VoEDc">
			<img
				src="https://t1.kakaocdn.net/friends/new_store/2.0/common/img_empty_ryan.png"
				class="list__Ryan-sc-2o92ux-11 eAdJPe">
			<p class="list__NoResult-sc-2o92ux-12 iAVQFJ">검색 결과가 없습니다.</p>
			<p class="list__NoResultDesc-sc-2o92ux-13 bVnFan">다른 검색어를 입력하시거나,</p>
			<p class="list__NoResultDesc-sc-2o92ux-13 irscIi">철자 및 띄어쓰기를
				확인해주세요.</p>
		</div> -->
	</div>
</body>
</html>