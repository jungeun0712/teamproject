<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]1:1 관리-답변 작성</title>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<style type="text/css">
.table {
	display: table;
}

.tr {
	display: table-row;
}

.th, .td {
	display: table-cell;
}

.th {
	font-weight: bold;
	text-align: center;
}
/* 김정은 20.01.14 */
input[type=text1] {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

textarea {
	width: 100%;
	box-sizing: border-box;
	border: 1px solid gold;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 100;
	color: black;
	border-radius: 4px;
	font-size: 16px;
	padding: 5px 5px 5px 5px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
	font-weight: 100;
	color: black;
}

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

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}

.my_ll_r {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: red;
	font-size: 15px;
}
</style>
<script>
	function changecase() {
		var content = $("select[name='case1']").val();
		var write = null;
		var lastClass = $("label[name='caselabel']").attr('class').split(' ')
				.pop();
		console.log(lastClass)
		$("label[name='caselabel']").removeClass(lastClass);
		if (content == -1) {
			write = "문의 유형 선택";

			$("label[name='caselabel']").addClass('ckvayf')
		} else if (content == 4) {
			write = "배송";

			$("label[name='caselabel']").addClass('cvxdGv')
		} else if (content == 6) {
			write = "교환/반품/환불"

			$("label[name='caselabel']").addClass('gbuGih')
		} else if (content == 7) {
			write = "기타";

			$("label[name='caselabel']").addClass('eUAHGi')
		} else if (content == 2) {
			write = "상품";

			$("label[name='caselabel']").addClass('kqEPId')
		} else if (content == 3) {
			write = "주문결제";

			$("label[name='caselabel']").addClass('DlPRr')
		}

		$("label[name='caselabel']").attr('content', write);
	}
</script>
</head>
<body>
	<!--  고객정보랑 문의 유형번호 -->
	<div id="mArticle">
		<div class="question-form__FormWrapper-sc-14728i7-0 kwFxWp">
			<form:form modelAttribute="qnaboard" action="contact_write.store"
				enctype="multipart/form-data" name="f">
				<form:hidden path="qnano" value="${qnaboard.qnano}" />

				<div class="question-form__HeaderBlock-sc-14728i7-1 foukWS">
					<span>[관리자]1:1 문의 - 답변하기</span>
				</div>
				<div class="question-form__ContentWrapper-sc-14728i7-2 jZWlvE">
					<div class="question-form__AccountBlock-sc-14728i7-3 eZonHy">
						<div class="question-form__Title-sc-14728i7-5 ibmozz">고객 정보,
							문의 내용</div>

						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">이메일</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="이메일 입력" error="0" align="left" padding="15"
										path="userid"  readonly="true" />
								</div>
							</div>
						</div>
						
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">문의
								항목</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="문의항목" error="0" align="left" padding="15"
										name="" value="<c:if test="${qnaboard.filter eq '0'}">전체</c:if><c:if test="${qnaboard.filter eq '1'}">배송</c:if><c:if test="${qnaboard.filter eq '2'}">교환/반품/환불</c:if><c:if test="${qnaboard.filter eq '3'}">기타</c:if><c:if test="${qnaboard.filter eq '4'}">상품</c:if><c:if test="${qnaboard.filter eq '5'}">주문결제</c:if>" readonly />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">제목</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="input-text__InputTextWrap-sc-14n8vry-0 eJxDUH">
									<form:input class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="제목" error="0" align="left" padding="15"
										path="q_subject"
										readonly="true" />
								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">문의
								내용</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<form:textarea
										class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC"
										readonly="true" height="177" path="q_content" />

								</div>
							</div>
						</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">첨부파일</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<c:if test="${!empty qnaboard.qnafileurl}">
										<a class="i-t-name" href="../help/img/${qnaboard.qnafileurl}">${help.qnafileurl}</a>
									</c:if>
									<c:if test="${empty qnaboard.qnafileurl}">
										<input class="i-t-name" error="0" align="left" padding="15"
											readonly value="첨부파일 없음">
									</c:if>

								</div>
							</div>
						</div>
					</div>

					<div class="question-form__ContentBlock-sc-14728i7-4 kHppkS">
						<div class="question-form__Title-sc-14728i7-5 ibmozz">문의 답변</div>
						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">답변</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<form:textarea
										class="textarea__CustomTextArea-sc-11m4psx-0 jGpjC"
										placeholder="답변내용 입력" height="177" path="a_content" />
									<font color="red"><form:errors path="a_content" /></font>
								</div>
							</div>
						</div>


						<div class="question-form__InputBlock-sc-14728i7-13 dgNTux">
							<span class="question-form__InputLabel-sc-14728i7-14 jcHywt">비밀
								번호</span>
							<div class="question-form__InputWrapper-sc-14728i7-16 cCjyDE">
								<div class="question-form__TextAreaWrapper-sc-14728i7-15 howXoD">
									<input type="password" class="input-text__CustomText-sc-14n8vry-1 llGwgt"
										placeholder="비밀번호를 입력하세요" error="0" align="left" padding="15"
										name="password" value="" >
									<font color="red"><form:errors path="password" /></font>
									<spring:hasBindErrors name="qnaboard">
										<font color="red"> <c:forEach
												items="${errors.globalErrors}" var="error">
												<spring:message code="${error.code}" />
											</c:forEach>
										</font>
									</spring:hasBindErrors>
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
						type="button"
						onclick="javascript:document.f.submit()">답변하기</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>