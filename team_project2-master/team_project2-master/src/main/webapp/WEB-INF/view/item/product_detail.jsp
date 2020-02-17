
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세보기</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<style>
p > img{
 width : 1107px
}
</style>
</head>
<body>

	<div id="mArticle" class="main">
		<div
			class="product-detail__Wrap-pjqp4o-0 glrYHS location-change-enter-done">
			<header style="height: 77vw;">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox"
						style="width: 100%; height: 100vw;">
						<!-- Slide One - Set the background image for this slide in the line below -->
						<div class="carousel-item active"
							style="margin: auto; background-color: #FFF;">
							<div id="test" style="width: 100%; height: auto">
								<img src="../images/product/${item.itemfile1url}" class="pic"
									style="width: 100%;">
							</div>
						</div>
						<div class="carousel-item"
							style="margin: auto; background-color: #FFF;">
							<div id="test" style="width: 100%; height: auto">
								<img src="../images/product/${item.itemfile2url}" class="pic"
									style="width: 100%;">
							</div>
						</div>
						<div class="carousel-item"
							style="margin: auto; background-color: #FFF;">
							<div id="test" style="width: 100%; height: auto">
								<img src="../images/product/${item.itemfile3url}" class="pic"
									style="width: 100%;">
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</header>
			<div class="detail-header__Detail-vk2zi5-0 eoPXCl">
				<h2 class="detail-header__Title-vk2zi5-1 iREAVG"
					style="font-weight: bold;line-height: 81px;font-size: 62px;">
					${item.itemname}</h2>
				<div class="detail-header__PriceWrap-vk2zi5-13 eYsRXP">
					<p class="detail-header__Price-vk2zi5-2 gBmHgl">
						<span><fmt:formatNumber value="${item.price}" type="currency" currencySymbol="" /></span>원
					</p>
					<div class="hearticon p-t-25">
						
						<a href="#" class="" id="heart"> 
							<c:if test='${item.wishcheck==1}'>
							<img class="icon-heart1" src="../images/icons/icon-heart-01.png" alt="ICON" style="display:none;">
							<img class="icon-heart2 select" src="../images/icons/icon-heart-02.png" alt="ICON" style="">
							</c:if>
							<c:if test='${item.wishcheck==0}'>
							<img class="icon-heart1" src="../images/icons/icon-heart-01.png" alt="ICON" style="">
							<img class="icon-heart2" src="../images/icons/icon-heart-02.png" alt="ICON" style="display:none;">
							</c:if>
						</a>
					</div>
				</div>
				<div class="detail-header__ReviewStartWrap-vk2zi5-14 dvwRmq">
					<div class="total__PointsWrap-sc-1q7bk51-2 iNxZsY">
						<fmt:parseNumber var="avg" value="${reviewavg}" integerOnly="true"/>
						<c:forEach var="i" begin="1" end="${avg}">
							<span class="star-points__Star-sc-1binrym-1 fnAzHX"
							itemtype="title"></span>
						</c:forEach>
						<c:forEach var="i" begin="${avg+1}" end="5">
							<span class="star-points__Star-sc-1binrym-1 ImZfG"
							 itemtype="title"></span>
						</c:forEach>
					</div>
					<span class="totalCount">(${reviewcount})</span>
				</div>
			</div>
			<div class="detail-contents__Contents-a2e1v2-0 oVMuJ">
								${item.itemcontent}
			</div>
		
			<h3 class="detail-contents__Title-a2e1v2-2 dwXJQx">세부정보</h3>
			<div class="detail-contents__WrapContentDetail-a2e1v2-4 Joofx">
					${item.itemcontent2}
			</div>


			<!-- <hr class="detail-contents__Hr-a2e1v2-9 iDwsHw"> -->
			<div class="review__Wrap-yivm8l-0 itdkzt">
				<div class="total__HeaderWrap-sc-1q7bk51-0 ekNiY">
					<h3 class="total__Title-sc-1q7bk51-1 cLVfUZ"
						style="font-weight: bold;">리뷰 ${reviewcount}개</h3>
					<div class="total__PointsWrap-sc-1q7bk51-2 iNxZsY">
						
						<c:forEach var="i" begin="1" end="${avg}">
							<span class="star-points__Star-sc-1binrym-1 fnAzHX"
							itemtype="title"></span>
						</c:forEach>
						<c:forEach var="i" begin="${avg+1}" end="5">
							<span class="star-points__Star-sc-1binrym-1 ImZfG"
							 itemtype="title"></span>
						</c:forEach>
						<span class="total__Points-sc-1q7bk51-3 dDoKnT">${reviewavg!=0?reviewavg:0}</span>
						<span class="total__Perfect-sc-1q7bk51-4 cIfwlK">5</span>
					</div>
				</div>
				<!-- 리뷰버튼 클릭시 1. 로그인이 되어있는가. 2. 로그인이 되어있으면 구매내역에 주문 확정을 눌렀는가
				 조건을 만족하면 리뷰 페이지로 이동 -->
				<!-- <button class="review__NewReview-yivm8l-1 js-show-modal3 fQZhjJ">리뷰를
					남겨주세요</button> -->
				<c:if test='${check == 1}'>
				<button class="review__NewReview-yivm8l-1 fQZhjJ" onclick="location.href='review.store?no=${param.no}'">리뷰를
					남겨주세요</button>
				</c:if>
				<c:if test='${check != 1}'>
				<button class="review__NewReview-yivm8l-1 fQZhjJ" onclick="writecheck()">리뷰를
					남겨주세요</button>
				</c:if>
				<script>
					function writecheck(){
						if (confirm("주문 확정을 해야 리뷰를 작성할 수 있습니다.\n주문확정을 하러 가시겠습니까?") == true){    //확인
						    location.href="../mypage/orderlistpage.store"
						}else{   //취소
						    return;
						}
					}
				</script>
				<c:if test='${empty item.reviewlist}'>
					<div class="list__Wrap-sc-7txpwb-0 jSEjVi" style="height : 80px">
					</div>
				</c:if>	
				<c:if test='${!empty item.reviewlist}'>	
				<div class="list__Wrap-sc-7txpwb-0 jSEjVi">
					<c:choose>
					<c:when test="${param.sort eq 'up'}">
						<button class="list__SortButton-sc-7txpwb-7 kdxpsC"
						onclick="sort(1)" name="sort1">최신순</button>
						<button class="list__SortButton-sc-7txpwb-7 hICAfU"
						onclick="sort(2)" name="sort2">도움순</button>
					</c:when>
					<c:otherwise>
					<button class="list__SortButton-sc-7txpwb-7 hICAfU"
						onclick="sort(1)" name="sort1">최신순</button>
					<button class="list__SortButton-sc-7txpwb-7 kdxpsC"
						onclick="sort(2)" name="sort2">도움순</button>
					</c:otherwise>	
					</c:choose>	
					<ul class="list__Ul-sc-7txpwb-1 gxJvJD">
						<c:forEach var="reviewlist" items="${item.reviewlist}" varStatus="stat">
						<input type="hidden" name="reviewno" value="${reviewlist.reviewno}"> 
						<li class="list__Li-sc-7txpwb-2 jeZgoZ">
							<div class="list__TitleWrap-sc-7txpwb-9 kURoIF">
								<strong class="list__Title-sc-7txpwb-3 jwXKlH">
								${fn:substring(reviewlist.userid, 0, 4)}****</strong>
							</div>
							<div class="list__StarWrap-sc-7txpwb-8 hTSHGu">
									<fmt:parseNumber var="reavg" value="${reviewlist.itemavg}" integerOnly="true"/>
									<c:forEach var="i" begin="1" end="${reavg}">
										<span class="star-points__Star-sc-1binrym-1 gDTuiP"></span>
									</c:forEach>
									<c:forEach var="i" begin="${reavg+1}" end="5">
										<span class="star-points__Star-sc-1binrym-1 QDUaj"></span>
									</c:forEach>
								<p class="list__Date-sc-7txpwb-4 kdmaDe">
								<fmt:formatDate value="${reviewlist.reviewdate}" pattern="yyyy-MM-dd"/>
								</p>
							</div>
							<div class="list__Comments-sc-7txpwb-5 bFtzpx">${reviewlist.reviewcontent}</div>
							<div class="list__RecommendWrap-sc-7txpwb-12 hURYlD">
								<c:if test='${!empty reviewlist.uplist }'>
								 <c:forEach var="uplist" items="${reviewlist.uplist}">
								 <c:choose>
									<c:when test='${sessionScope.loginUser.userid eq uplist.userid}'>
										<button class="list__RecommendReviewButton-sc-7txpwb-6 hWuFcD"
											id="recommend${stat.index}" onclick="recommend(${stat.index}, ${reviewlist.reviewno},  '${reviewlist.userid}')">
											도움돼요 <span id="reviewcount">${reviewlist.upcount }</span><span>명</span> <!--  누르면 추천 증가하게 ajax으로 -->
											<!--  hWuFcD 누르면 이걸로       jOEcHV기본-->
										</button>
									</c:when>
									<c:when test='${sessionScope.loginUser.userid ne uplist.userid}'>
										<button class="list__RecommendReviewButton-sc-7txpwb-6 jOEcHV"
											id="recommend${stat.index}" onclick="recommend(${stat.index}, ${reviewlist.reviewno},  '${reviewlist.userid}')">
											도움돼요 <span id="reviewcount">${reviewlist.upcount }</span><span>명</span> <!--  누르면 추천 증가하게 ajax으로 -->
											<!--  hWuFcD 누르면 이걸로       jOEcHV기본-->
										</button>
									</c:when>
									
									<c:otherwise>
										<button class="list__RecommendReviewButton-sc-7txpwb-6 jOEcHV"
										id="recommend${stat.index}" onclick="recommend(${stat.index}, ${reviewlist.reviewno},  '${reviewlist.userid}')">
										도움돼요 <span id="reviewcount">${reviewlist.upcount }</span><span>명</span> <!--  누르면 추천 증가하게 ajax으로 -->
										<!--  hWuFcD 누르면 이걸로       jOEcHV기본-->
										</button>
									</c:otherwise>
									</c:choose>
								</c:forEach>
								</c:if>
								<c:if test='${empty reviewlist.uplist }'>
									<button class="list__RecommendReviewButton-sc-7txpwb-6 jOEcHV"
										id="recommend${stat.index}" onclick="recommend(${stat.index}, ${reviewlist.reviewno}, '${reviewlist.userid}')">
										도움돼요 <span id="reviewcount">${reviewlist.upcount}</span><span>명</span> <!--  누르면 추천 증가하게 ajax으로 -->
										<!--  hWuFcD 누르면 이걸로       jOEcHV기본-->
										</button> 
								</c:if>
								
								<p class="list__RecommendCountPc-sc-7txpwb-13 jxBTIN">
								<span id="reviewcount1">${reviewlist.upcount}</span>명에게 도움이됐어요</p>
							
							</div></li>
							</c:forEach>
							
						
					</ul>
				</div>
			
				<div class="pagination__PageBlock-sc-1ju5sar-0 krWiaZ">
					<div class="pagination__ArrowBox-sc-1ju5sar-2 yQNxU">
						<div class="pagination__Arrow-sc-1ju5sar-3 kvIcKT"></div>
					</div>
					<span class="pagination__Page-sc-1ju5sar-1 hzoUKy"><div>1</div></span>
					<div class="pagination__ArrowBox-sc-1ju5sar-2 yQNxU">
						<div class="pagination__Arrow-sc-1ju5sar-3 gjKkF"></div>
					</div>
				</div>
				</c:if>
			</div>
			
			<!--  하단 고정 구매창 -->
			<div class="bottom-bar__BottomWrap-sc-11z5au4-1 hZwLyu">
				<div class="no-option__Wrap-z0m2t2-1 jUxlri">
					<div class="sc-htpNat KtFsv quantity__Wrap-sc-1gmaz1h-0 iOmWyG">
						<button type="button"
							class="quantity__ButtonDec-sc-1gmaz1h-3 ghClOy quantity__Button-sc-1gmaz1h-1 bYohjK"></button>
						<input type="number" class="quantity__Text-sc-1gmaz1h-2 kFuewO"
							value="1" name="quantityval">
						<button type="button"
							class="quantity__ButtonInc-sc-1gmaz1h-4 eUcjHH quantity__Button-sc-1gmaz1h-1 bYohjK"></button>
					</div>
					<div class="no-option__Price-z0m2t2-0 hCwYWR">
						<span class="no-option__Label-z0m2t2-2 kMgbXi" >총 상품금액</span><span id="allprice">
						<fmt:formatNumber value="${item.price}" type="currency" currencySymbol="" /></span>원
					</div>
				</div>

				<div class="bottom-bar__Wrap-sc-11z5au4-0 eyQXYE">
					<form method="get" action="../order/order.store" name="f">
						<input type="hidden" name="oitemnum" value="${item.itemnum}">
						<input type="hidden" name="oquantity" value="">
						<input type="hidden" name="oprice" value="">
					</form>
					<button type="button"
						class="direct-purchase__Purchase-sc-1jgpcp-0 iipgZi" onclick="javasccript:document.f.submit()">바로구매</button> <!--   js-show-modal2일단지움 -->
					<c:if test="${item.cartcheck == 1}">
						<button type="button"
						class="sc-bwzfXH hnazCY button-oulv2u-0 eGyuxj" image="cart">장바구니 <!--   js-show-modal2일단지움 -->
						담기</button>                           
					</c:if>	                             
					<c:if test="${item.cartcheck == 0}">
					<button type="button"
						class="sc-bwzfXH hnazCY button-oulv2u-0 qSzXk" image="cart">장바구니 <!--   js-show-modal2일단지움 -->
						담기</button>                           
					</c:if>
					<${item.cartcheck}
					<!--  장바구니랑 바로 구매 누르면 가입 유도 팝업창 뜸
													간편 회원 구매 누르면 로그인 후 이화면으로 돌아옴 돌아오면 장바구니 버튼이 클릭(담긴걸로)되어있음 -->
				</div>
			</div>
			<!--  하단 고정 구매창 끝 -->

			<!-- <div class="go-to-top__Top-n6i3r9-0 doqAlS">TOP</div> -->
		</div>
	</div>
	<script>
		function recommend(num, rno, userid) {
			if ($("#recommend" + num).hasClass("hWuFcD") === true) { // 추천해제
			
				$.ajax({// upno, reviewno, userid, upcnt
					url : "reviewdown.store",
					type : "POST",
					dataType: 'text',
					data : {
						reviewno : rno,
						
					},success : function(data){
						/* alert(data)
						location.reload(); */
						alert(data)
						$("#reviewcount").text(Number($("#reviewcount").text())-1)
						$("#reviewcount1").text(Number($("#reviewcount1").text())-1)
						$("#recommend" + num).removeClass("hWuFcD")
						$("#recommend" + num).addClass("jOEcHV")
						return;
						
					}, error : function(e){
						console.log(e)
					}
				})
				
				return;
			}
			
			$.ajax({// upno, reviewno, userid, upcnt
				url : "reviewup.store",
				type : "POST",
				dataType: 'text',
				data : {
					reviewno : rno,
					userid : userid,
				},success : function(data){
					/* alert(data)
					location.reload(); */
					if(data =="로그인을 한사람만 추천을 누를수 있습니다" || data== "본인 리뷰는 추천할 수 없습니다"){
						alert(data)
					}else{
						console.log($("#reviewcount").text($("reviewncount").text()))
						$("#reviewcount").text(Number($("#reviewcount").text())+1)
						$("#reviewcount1").text(Number($("#reviewcount1").text())+1)
						$("#recommend" + num).removeClass("jOEcHV") // 추천누른 버튼
						$("#recommend" + num).addClass("hWuFcD")
						alert(data)
					}
				}, error : function(e){
					console.log(e)
				}
			})
			
 
		}
		function sort(num) {
			$("button[name='sort1']").removeClass("kdxpsC")
			$("button[name='sort1']").addClass("hICAfU")
			$("button[name='sort2']").removeClass("hICAfU")
			$("button[name='sort2']").addClass("kdxpsC")
			location.href="product_detail.store?no=${item.itemnum}&sort=new"

			if (num == 2) {
				$("button[name='sort1']").removeClass("hICAfU")
				$("button[name='sort1']").addClass("kdxpsC")
				$("button[name='sort2']").removeClass("kdxpsC")
				$("button[name='sort2']").addClass("hICAfU")
			}
			location.href="product_detail.store?no=${item.itemnum}&sort=up"

		}
	$(function() {
		/* $(".icon-heart2").hide() */
		/* if(${item.wishcheck == 1}){
			$("#heart").children('.icon-heart1').hide()
			$("#heart").children('.icon-heart2').show()
			$("#heart").children('.icon-heart2').addClass("select")
		}else{
			$("#heart").children('.icon-heart2').hide()
			$("#heart").children('.icon-heart1').show()
		} */
		$("input[name=oprice]").val($("#allprice").text().replace(/,/g,"").trim())
		$("input[name=oquantity]").val($("input[name=quantityval]").val())
		$(".hearticon").click(function() {
			if ($("#heart").children('.icon-heart2').hasClass("select") === true) {
				// 찜해제
				$.ajax({// itemnum, userid
					url : "heartdown.store",
					type : "POST",
					dataType: 'text',
					data : {
						itemnum : ${item.itemnum},
					},success : function(data){
						/* alert(data)
						location.reload(); */
							$(".hearticon").children().children('.icon-heart1').show()
							$(".hearticon").children().children('.icon-heart2').hide()
							$(".hearticon").children().children('.icon-heart2').removeClass("select")
							 // a태그누르면 화면 위로 올라가서 링크 동작안하게 false
							alert(data)
						
					}, error : function(e){
						console.log(e)
					}
				})
				return false;
			}	else{
			// 찜등록
			$.ajax({// itemnum, userid
					url : "heartup.store",
					type : "POST",
					dataType: 'text',
					data : {
						itemnum : ${item.itemnum},
					},success : function(data){
						/* alert(data)
						location.reload(); */
						if(data=="로그인을 한 사람만 찜버튼을 누를 수 있습니다"){
							alert(data)
						}else{
							$(".hearticon").children().children('.icon-heart1').hide()
							$(".hearticon").children().children('.icon-heart2').show()
							$(".hearticon").children().children('.icon-heart2').addClass("select")
							alert(data)
						}	
						
					}, error : function(e){
						console.log(e)
					}
					
				})
				return false;
			}
			
		})
		
		// 아이템마다 상품코드 hidden 값으로 해서 select 가 있는 상품을 찜 테이블로 넣기
		//                                위에 select를 input 태그 select로 되게 ?? 
		$(".quantity__ButtonDec-sc-1gmaz1h-3").click(function(){
			var quantity = Number($(".quantity__Text-sc-1gmaz1h-2").val())
			quantity = quantity - 1
			$("#allprice").text((${item.price}*quantity).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
			if(quantity < 2){
				quantity = 1
				$("#allprice").text((${item.price}).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
				$(".quantity__ButtonDec-sc-1gmaz1h-3").attr("class", "quantity__ButtonDec-sc-1gmaz1h-3 ghClOy quantity__Button-sc-1gmaz1h-1 bYohjK")
			}
			$(".quantity__Text-sc-1gmaz1h-2").val(quantity)
			$("input[name=oquantity]").val($("input[name=quantityval]").val())
			$("input[name=oprice]").val($("#allprice").text().replace(/,/g,"").trim())
		})
	
		$(".quantity__ButtonInc-sc-1gmaz1h-4").click(function(){
			var quantity = Number($(".quantity__Text-sc-1gmaz1h-2").val())
			quantity =quantity + 1
			$("#allprice").text((${item.price}*quantity).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","))
			$(".quantity__ButtonDec-sc-1gmaz1h-3").attr("class", "quantity__ButtonDec-sc-1gmaz1h-3 kcAJDu quantity__Button-sc-1gmaz1h-1 bYohjK")
			$(".quantity__Text-sc-1gmaz1h-2").val(quantity)
			$("input[name=oquantity]").val($("input[name=quantityval]").val())
			$("input[name=oprice]").val($("#allprice").text().replace(/,/g,"").trim())
		})
		$(".sc-bwzfXH").click(function(){ // 장바구니 클릭
				$(this).attr("class", "sc-bwzfXH hnazCY button-oulv2u-0 eGyuxj")
				$(this).addClass("select")
				$.ajax({// itemnum, userid, quantity, price
					url : "cartadd.store",
					type : "POST",
					dataType: 'text',
					data : {
						itemnum : ${item.itemnum},
						quantity : $("input[name=quantityval]").val(),
						price : parseInt($("#allprice").text().replace(/,/g,"")),
						itemfile1url : "${item.itemfile1url}",
						itemname : "${item.itemname}",
					},success : function(data){
						alert(data)
						
					}, error : function(e){
						console.log(e)
					}
					
				})
				return false;

		})
		
		
	
	})
	
	
	
	</script>
</body>
</html>