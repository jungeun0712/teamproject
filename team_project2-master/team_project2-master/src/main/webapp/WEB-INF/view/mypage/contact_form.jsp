<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오프렌즈 - 1:1 문의 작성</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<script>
		$(function(){
			$("input[name='filter']").val(content)
		})
		function changecase() {
			var content = $("select[name='case1']").val();
			var write = null;
			var lastClass = $("label[name='caselabel']").attr('class').split(' ').pop();
			console.log(lastClass)
			$("label[name='caselabel']").removeClass(lastClass);
			if (content == "") {
				write = "문의 유형 선택";
				$("label[name='caselabel']").addClass('ckvayf')
			} else if (content == 1) {
				write = "배송";
				$("label[name='caselabel']").addClass('cvxdGv')
			} else if (content == 2) {
				write = "교환/반품/환불"
				$("label[name='caselabel']").addClass('gbuGih')
			} else if (content == 3) {
				write = "기타";
				$("label[name='caselabel']").addClass('eUAHGi')
			} else if (content == 4) {
				write = "상품"
				$("label[name='caselabel']").addClass('kqEPId')
			} else if (content == 5) {
				write = "주문결제";
				$("label[name='caselabel']").addClass('DlPRr')
			}
			$("label[name='caselabel']").attr('content', write);
			
			$("input[name='filter']").val(content)
			
		}
		function chkbox(chk) {
			$("input[name=agreement]").prop("checked", chk.checked)
			if($(chk).hasClass("check")=== true){
				$(chk).removeClass("check")
				return;
			}
			$(chk).addClass("check")
			
		}
	</script>
</head>
<body>
	
	<div id="mArticle">
		<div class="question-form__FormWrapper-sc-14728i7-0 kwFxWp">
			<form:form modelAttribute="contact" action="contact_form.store" enctype="multipart/form-data" name="f">
				<form:hidden path="filter" value=""/>
				<form:hidden path="boardcode" value="3"/>
				<form:hidden path="checkin" value="0"/>
				<div class="question-form__HeaderBlock-sc-14728i7-1 foukWS">
					<span>문의하기</span>
				</div>
				<div class="question-form__ContentWrapper-sc-14728i7-2 jZWlvE">
					<div class="question-form__AccountBlock-sc-14728i7-3 eZonHy">
						<div class="question-form__Title-sc-14728i7-5 ibmozz">고객 정보</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이름</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이름" error="0" align="left" padding="15"
										name="username" value="${sessionScope.kname}" readonly="true">
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이메일</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이메일 입력" error="0" align="left" padding="15"
										path="userid" value="${sessionScope.kemail}" readonly="true" />
								</div>
							</div>
						</div>
						
					</div>
					<div class="question-form__ContentBlock-sc-14728i7-4 kHppkS">
						<div class="question-form__Title-sc-14728i7-5 ibmozz">문의 내용</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">문의
								유형</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__SelectBlock-sc-14728i7-6 bjRqPo">
									<label name="caselabel"
										class="select__Label-sc-1qit19e-0 ckvayf" content="문의 유형 선택"
										height="45" color="#d4d7e1"><select
										class="select__Select-sc-1qit19e-1 dlszdh" height="45"
										name="case1" onchange="changecase()"><option
												value="">문의 유형 선택</option>
											<option value="1">배송</option>
											<option value="2">교환/반품/환불</option>
											<option value="3">기타</option>
											<option value="4">상품</option>
											<option value="5">주문결제</option></select></label>
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">제목</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt" style="width : 100%"
										placeholder="제목" error="0" align="left" padding="15"
										path="q_subject" value=""/>
									<font color="red"><form:errors path="q_subject" /></font>	
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">문의
								내용</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<form:textarea class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC" style="width : 100%"
										placeholder="문의 내용 입력" height="177" path="q_content"/></textarea>
										<font color="red"><form:errors path="q_content" /></font>	
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">사진
								첨부</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<form:input type="file" class="i-t-name-1" id="my_ll_b"
									placeholder="사진을 첨부하세요" path="qnafile1" value=""/>
									<div class="question-form__GuideWrapper-sc-14728i7-12 lmFqbH">
										<div class="question-form__GuideBlock-sc-14728i7-11 dLcMkL">
											<span></span>
											<div>상품 불량 및 오배송의 경우, 해당 제품 사진을 등록 부탁드립니다.</div>
										</div>
										<div class="question-form__GuideBlock-sc-14728i7-11 dLcMkL">
											<span></span>
											<div>최대 10MB 이내, 1개 이미지만 등록 가능합니다.</div>
										</div>
									</div>
									<!-- <div
										class="question-form__CheckBoxWrapper-sc-14728i7-17 exbTko">
										<div
											class="check-box__AreaLeftCheckbox-sc-1dmnxgb-2 dWVyWd check-box__AreaCheckbox-sc-1dmnxgb-0 dXGwvt">
											<div class="check-box__CheckBoxContainer-sc-1dmnxgb-6 kyicMO">
												<input type="checkbox"
													class="check-box__InputCheckBox-sc-1dmnxgb-5 bEvrkG"
													id="agreement" required="" name="agreement" onchange="chkbox(this)"><label
													for="agreement"></label>
											</div>
											<label class="check-box__Label-sc-1dmnxgb-3 jyoKnP"
												for="agreement"><span
												class="check-box__Text-sc-1dmnxgb-4 jBTEoi">개인정보 수집 및
													이용에 동의합니다</span><span
												class="check-box__Required-sc-1dmnxgb-7 hqJXmu">[필수]</span></label>
									</div>
								</div> -->
							</div>
						</div>
					</div>
				</div>
				<div class="question-form__FooterBlock-sc-14728i7-7 BCbzT">
					<button
						class="question-form__CancelButton-sc-14728i7-9 cvQgXv question-form__Button-sc-14728i7-8 encGOf"
						onclick="javascript:history.back(-1)"
						type="button">취소</button>
					<button
						class="question-form__SubmitButton-sc-14728i7-10 ekjGWF question-form__Button-sc-14728i7-8 encGOf"
						type="button" onclick="javascript:document.f.submit()">등록하기</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>