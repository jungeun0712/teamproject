<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>


	<div id="mArticle">
		<div class="question-form__FormWrapper-sc-14728i7-0 kwFxWp">
			<form:form modelAttribute="review" action="review.store" method="post" name="f">
				<form:hidden path="itemnum"/>
				<div class="question-form__HeaderBlock-sc-14728i7-1 foukWS">
					<span>리뷰 작성하기</span>
				</div>
				<div class="question-form__ContentWrapper-sc-14728i7-2 jZWlvE">
					<div class="question-form__AccountBlock-sc-14728i7-3 eZonHy">
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input path="userid"
										class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름"  align="left" padding="15" readonly="true"  />
									<font color="red"><form:errors path="userid" /></font>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">평점</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<div class="starRev">
										<span class="starR">별1</span> <span class="starR">별2</span> <span
											class="starR">별3</span> <span class="starR">별4</span> <span
											class="starR">별5</span>
									</div>
									<form:hidden path="itemavg" value=""/>
									<p class="desc_error" style="display:none"></p>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt" id="my_ll_b">
								리뷰 내용</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<form:textarea path="reviewcontent" class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC" rows="15" cols="80" />
									<script>
										CKEDITOR.replace("reviewcontent",{
											filebrowserImageUploadUrl : "imgupload.shop"
										});
									</script>
									<font color="red"><form:errors path="reviewcontent" /></font>
								</div>
							</div>
						</div>



					</div>
				</div>
				<div class="question-form__FooterBlock-sc-14728i7-7 BCbzT">
					<button
						class="question-form__CancelButton-sc-14728i7-9 cvQgXv question-form__Button-sc-14728i7-8 encGOf"
						type="button" onclick="history.back(-1)">취소</button>
					<button
						class="question-form__SubmitButton-sc-14728i7-10 ekjGWF question-form__Button-sc-14728i7-8 encGOf"
						type="button" onclick="submitbtn();">리뷰 작성</button>
					<!--  작성완료시 리뷰 삭제가 불가능합니다. 띄우기 -->
				</div>
			</form:form>
		</div>
	</div>
	<script>
		$('.starR').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		});
		$("#wrap").children().each(function(index, item) {
			// 문서 객체에 class 속성을 추가하는 메소드
			$(this).addClass("high_light_" + index);
			
			if(index == 2){
				$(this).removeClass("high_light_" + index);
			}
		});
		$(function(){
			if($("#itemavg").val()!= 0){
				$(".starRev").children().each(function(index, item){
					if(index < $("#itemavg").val()){
						$(this).removeClass('on');
						$(this).addClass('on');
					}
				})
			}
		})
		//별점
		function submitbtn(){
			var sum = 0;
			var len = $(".starR.on").length;
			for(i = 0;i<len;i++){
				sum = sum + 1;
			}
			if(sum == 0){
				$(".desc_error").html("&ldquo; 별점을 선택하세요 &rdquo;");
		        $(".desc_error").css("display", "block");
		        $(".desc_error").css("color", "red");
		        return false;
			}
			

			var checkmsg = "리뷰 작성시 수정이 불가능 합니다. 저장하시겠습니까?";
			if(confirm(checkmsg) == true){
				$("#itemavg").val(sum);
				document.f.submit();
				return true;
			}else{
				alert("취소하셨습니다.");
				return false;
			}
		}
	</script>
</body>
</html>