<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
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

#my_bb_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
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

#my_ll_g {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: graytext;
	font-size: 20px;
}

article {
	display: block;
}
</style>
<script>

	function checkclick(pickno, itemnum, id){
		//alert(pickno+","+itemnum)
	/* 	if(${empty sessionScope.loginUser}){
			alert("로그인한 사람만 찜 할 수 있습니다")
			return;
		} */
		
		if ($("#"+id).prop('checked')) {
			$.ajax({// itemnum, userid, quantity, price
				url : "item/heartup.store",
				type : "POST",
				dataType: 'text',
				data : {
					itemnum : itemnum,
				},success : function(data){
					if(data=="로그인을 한 사람만 찜버튼을 누를 수 있습니다"){
						$("#"+id).prop('checked', false)
						alert(data)
					}else{
						$(this).parent().removeClass("wish_btn")
						$(this).parent().addClass("wish_btn").addClass("on")
						alert(data)
					}
					
				}, error : function(e){
					console.log(e)
				}
				
			})
			return false;
			
		} else {
			//var listnum = $(this).val();
			$.ajax({// itemnum, userid, quantity, price
				url : "item/heartdown.store",
				type : "POST",
				dataType: 'text',
				data : {
					pickno: pickno
				},success : function(data){
					alert(data)
				}, error : function(e){
					console.log(e)
				}
				
			})
			return false;
			$(this).parent().removeClass("wish_btn").removeClass("on")
			$(this).parent().addClass("wish_btn")
		}

	}


</script>
</head>
<body>
	<div class="content" id="content_main">
		<div>
			<div class="content_body">
				<!-- 전체에서의 select box 부분 -->
				<ul></ul>
				<div style="overflow-x: hidden;">
				
					<div class="main_block_list" style="">
						<div class="new_block" aria-hidden="false" data-swipeable="true"
							style="width: 100%; flex-shrink: 0; overflow: auto hidden;">

							<article class="main_section_item">
								<p class="main_section_item_p" itemtype="new">오늘 업데이트 했어요</p>
								<h3 class="main_section_item_h3" itemtype="new">새로나온 친구들</h3>
								<!-- 아이템 목록 -->
								<ul class="main_section_item_ul" itemtype="new">
									<c:forEach var="newitemlist" items="${newitemlist}" varStatus="stat">
									<li class="main_section_item_li" itemtype="new">
										<input hidden="itemnum" value="${newitemlist.itemnum}">
										<div>
											<a style="display: block;" href="item/product_detail.store?no=${newitemlist.itemnum}">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/${newitemlist.itemfile1url}"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">
											<a href="item/product_detail.store?no=${newitemlist.itemnum}"style="color:black">${newitemlist.itemname}</a></strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span><fmt:formatNumber value="${newitemlist.price}" type="currency" currencySymbol="" /></span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="new_item${stat.index}" type="checkbox" data-toggle="tooltip"
													data-placement="top" onclick="checkclick(${newitemlist.pickno}, ${newitemlist.itemnum}, 'new_item${stat.index}')" 
													title="찜하기" <c:if test="${newitemlist.pickno != 0}">checked="checked"</c:if>>
												<label for="new_item${stat.index}"></label>
												<input type="hidden"  name="pickno" value="${newitemlist.pickno}">
											</div>
										</div>
									</li>
									</c:forEach>
								</ul>
							</article>
						</div>
						<div class="wish_block" aria-hidden="false" data-swipeable="true"
							style="width: 100%; flex-shrink: 0; overflow: auto hidden;">

							<article class="main_section_item">
								<p class="main_section_item_p" itemtype="new">찜 횟수가 가장 많아요</p>
								<h3 class="main_section_item_h3" itemtype="new">인기있는 친구들</h3>
								<!-- 아이템 목록 -->
								<ul class="main_section_item_ul" itemtype="new">
								<c:forEach var="pitemlist" items="${pitemlist}" varStatus="stat">
									<li class="main_section_item_li" itemtype="new">
									<input hidden="itemnum" value="${pitemlist.itemnum}">
										<div>
											<a style="display: block;" href="item/product_detail.store?no=${pitemlist.itemnum}">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/${pitemlist.itemfile1url}"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">
											 <a href="item/product_detail.store?no=${pitemlist.itemnum}" style="color : black;">
											 ${pitemlist.itemname}
											 </a></strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span>${pitemlist.price}</span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="p_item${stat.index}" type="checkbox" data-toggle="tooltip" onclick="checkclick(${pitemlist.pickno}, ${pitemlist.itemnum},  'p_item${stat.index}')"
													data-placement="top" title="찜하기" <c:if test="${pitemlist.pickno!=0}">checked="checked"</c:if>>
												<label for="p_item${stat.index}"></label>
												<input type="hidden" name="pickno" value="${pitemlist.pickno}">
											</div>
										</div>
									</li>
									</c:forEach>
								</ul>
							</article>
						</div>
						<div class="all_block" aria-hidden="false" data-swipeable="true"
							style="width: 100%; flex-shrink: 0; overflow: auto hidden;">

							<article class="main_section_item">
								<p class="main_section_item_p" itemtype="new">프렌즈 스토어 전상품이에요</p>
								<h3 class="main_section_item_h3" itemtype="new">모두의 친구들</h3>
								<!-- 아이템 목록 -->
								<ul class="main_section_item_ul" itemtype="new">
									<c:forEach var="allitemlist" items="${allitemlist}" varStatus="stat">
									<li class="main_section_item_li" itemtype="new">
										<input hidden="itemnum" value="${allitemlist.itemnum}">
										<div>
											<a style="display: block;" href="item/product_detail.store?no=${allitemlist.itemnum}">
												<span class="item_sp" itemtype="new"> <span
													class="item_sp_imgsp"> <img class="item_sp_img"
														src="images/product/${allitemlist.itemfile1url}"
														alt="상품 이미지">
												</span>
											</span> <strong class="item_title" itemtype="new">
											<a href="item/product_detail.store?no=${allitemlist.itemnum}"style="color:black">
											${allitemlist.itemname}</a></strong>
												<p class="item_price" itemtype="new">
													<span class="item_price_sp">금액</span> <span><fmt:formatNumber value="${allitemlist.price}" type="currency" currencySymbol="" /></span>원
												</p>
												<div class="bycDdO"></div>
											</a>
											<div class="wish_check" itemtype="new">
												<input id="all_item${stat.index}" type="checkbox" data-toggle="tooltip"
													data-placement="top" onclick="checkclick(${allitemlist.pickno}, ${allitemlist.itemnum},  'all_item${stat.index}')"
													title="찜하기" <c:if test="${allitemlist.pickno != 0}">checked="checked"</c:if>>
													
												<label for="all_item${stat.index}"></label>
												<input type="hidden" name="pickno" value="${allitemlist.pickno}">
											
											</div>
										</div>
									</li>
									</c:forEach>
								</ul>
							</article>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>