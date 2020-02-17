<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오프렌즈-1:1문의</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<script>
	$(document).ready(function() {
		/* if($(".list__EmptyBlock-rbnwxz-11").hasClass('list__EmptyBlock-rbnwxz-11')){
			$("#selectform").hide();
		} */
		$(".select-modal__OptionLink-ow3cz8-3").hover(function() {
			$(this).removeClass("cPoWav")
			$(this).addClass("jrtVOJ")
		}, function() {
			$(this).removeClass("jrtVOJ")
			$(this).addClass("cPoWav")
		});
		$(".select-modal__Block-ow3cz8-2").click(function() {

			var content = $(this).find("a").text();
			//console.log(content)
			$(".header__FilterName").text(content)
			//selectform.selecttype
			selectform.submit();
		})
		if ($(".faq_title").hasClass("glsXdQ") === true) {
			$(".faq_replyBlock").hide()
		}
		
		$(".header__Select").hide()
		$(".select-modal__OptionLink-ow3cz8-3").click(function(){
				$("input[name=selectvalue]").val($(this).text())
		})
	});
	
	function replyshow(replynum) {
		if($("#"+replynum).children().length != 0){ 
			if ($(".faq_title").hasClass("glsXdQ") === true) {
				$(".faq_title").removeClass("glsXdQ");
				$(".faq_title").addClass("cdlUDa");	  // 버튼 같이 눌리는거 고치기
				$("#" + replynum).show()
				return;
			}
			if ($(".faq_title").hasClass("cdlUDa") === true) {
				$("#" + replynum).hide()
				$(".faq_title").removeClass("cdlUDa");
				$(".faq_title").addClass("glsXdQ");
				return;
			}
		 }else {
			alert("답변이 없습니다.")
		} 
	}
	function selectbox() {
		$(".header__Select").toggle()
	}
</script>
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
</head>
<body>
	<div id="mArticle">
		<div class="header__Container-sc-122y7f9-0 fmXyox">
			<div>
				<div class="header__Title-sc-122y7f9-1 gaRGea">1:1 문의</div>
				<div class="header__Guide-sc-122y7f9-2 bdznXa">프렌즈 샵의 회원, 상품,
					주문, 배송, 교환, 반품 등의 궁금한 내용을 문의하세요.</div>
			</div>
			<button class="header__Button-sc-122y7f9-3 gsNikK" type="button"
				onclick="location.href='contact_form.store'">
				<span class="header__Label-sc-122y7f9-4 cLlqjl">문의 하기</span>
			</button>
		</div>

		<form name="selectform" id="selectform" method="post" action="contactpage.store">
			<button class="header__Filter eFELNp" type="button">
				<input type="hidden" name="selectvalue" value="">
				<div class="header__FilterName bljjmH" onclick="selectbox()">
					<c:if test='${empty param.selectvalue}'>
							전체
					</c:if>
					<c:if test='${!empty param.selectvalue}'>
					${fn:trim(param.selectvalue)}
					</c:if>
				</div>
				<div class="header__Select kDPxRN">
					<ul id="box" class="select-modal__OptionWrap-ow3cz8-0 drWdwN"
						type="text">
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 jrtVOJ">전체</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">배송</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">교환/반품/환불</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav"">기타</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">상품</a></li>
						<li class="select-modal__Block-ow3cz8-2 exNXXp"><a
							class="select-modal__OptionLink-ow3cz8-3 cPoWav">주문결제</a></li>
					</ul>
				</div>

			</button>
		</form>
		<c:if test="${empty faqlist}">	
		<div class="list__EmptyBlock-rbnwxz-11 bkURUc" style="margin-top: 22px;">
					<div>아직 문의하신 내역이 없어요</div>
				</div> 
		</c:if>		
		<c:if test="${!empty faqlist}">		
		<div id="FAQ" class="FAQ">
			<c:forEach var="faqlist" items="${faqlist}" varStatus="stat">
			<input type="hidden" name="pageNum" value="1" />
				<input type="hidden" name="faqno" value="${faqlist.qnano}">
			<div class="list__ItemWrapper-sc-15wis6g-0 fkzQYP">
				<div class="list__TitleBlock-sc-15wis6g-3 gxwoaN">
					<div class="faq_info fuoFjD">
					<c:if test="${faqlist.filter eq '0'}">전체</c:if>
								<c:if test="${faqlist.filter eq '1'}">배송</c:if>
								<c:if test="${faqlist.filter eq '2'}">교환/반품/환불</c:if>
								<c:if test="${faqlist.filter eq '3'}">기타</c:if>
								<c:if test="${faqlist.filter eq '4'}">상품</c:if>
								<c:if test="${faqlist.filter eq '5'}">주문결제</c:if>
					</div>
					<div class="faq_title glsXdQ" onclick="replyshow('faqreplynum${stat.index}')">
						${faqlist.q_subject }</div>
				</div>
			</div>
			<div class="faq_replyBlock iyrEsZ" id="faqreplynum${stat.index}">
				<c:if test='${!empty faqlist.a_content}'>
				<div class="reply-template__ReplyContents-kvnc78-1 kYyZhV">
					<p>${faqlist.a_content}</p>
				</div>
				</c:if>
			</div>
			</c:forEach>
			
		</div>
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
								<c:forEach var="a" begin="${faqstartpage}" end="${faqendpage}">
									<c:if test="${pageNum==a}">
										<a href="javascript:listdo(${a})" class="clicka"
											id="my_bb_20b">${a}</a>
									</c:if>
									<c:if test="${pageNum!=a}">
										<a href="javascript:listdo(${a})" id="my_ll_b">${a}</a>
									</c:if>
								</c:forEach> <!--  </form>  -->
							</span>
						
							<c:if test="${pageNum < faqmaxpage}">
								<div class="arrow_box_new">
									<div class="arrow_next_new"
										onclick="javascript:listdo(${pageNum+1})"></div>
								</div>
							</c:if>
							<c:if test="${pageNum >= faqmaxpage}">
								<div class="arrow_box_new">
									<div class="arrow_next_new"></div>
								</div>
							</c:if>
						</div>
					</div>
				</c:if>
		<!--   여기서닫기 -->
	</div>

	<!-- 	<script>
				window.LANG = 'kr';
				window.CSRF_TOKEN = 'df0f356a-8698-4b7c-b654-0420d67b37c1';
				window.CSRF_HEADER_NAME = 'X-CSRF-TOKEN';
			</script>

			<script src="/resources/js/dist/contact.js?20200116155618" async=""></script> -->

</body>
</html>