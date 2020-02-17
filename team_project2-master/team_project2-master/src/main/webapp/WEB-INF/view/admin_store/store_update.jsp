<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]매장 안내 수정</title>
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
</head>
<body>
<form:form modelAttribute="storeinfo" action="store_update.store" 
 enctype="multipart/form-data">
 <form:hidden path="storeno"/>
 	<form:hidden path="storepic"/>
	<div class="store_write_header" id="my_b_b">[관리자] 매장 안내 수정</div>
	<div class="store_write_body">
		<div class="store_write_edit">
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">매장 이름</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="매장 이름을 입력하세요" name="storename" value="${storeinfo.storename }">
					
				</div>
			</div>
			  <form:errors path="storename" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">비밀 번호</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="비밀번호를 입력하세요" name="pw_chk" value="">
					
				</div>
			</div>
			<form:errors path="pw_chk" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
			<spring:hasBindErrors name="storeinfo">
						<font color="red"> <c:forEach
								items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
						</font>
				</spring:hasBindErrors>	
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">매장 사진</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<c:if test="${!empty storeinfo.storepic}">
                     <div id="file_desc">&nbsp;
                     <button class="btn_cancel" id="my_ll_b" style="border: 1px solid transparent;" onclick="file${storeinfo.storepic}">${storeinfo.storepic}</button>
                     <button class="btn_cancel" id="my_ll_b" style="height: 40px;" onclick="javascript:file_delete()">첨부파일삭제</button>
                     </div></c:if>
         			<form:hidden path="picfile"/>
					<input type="file" class="storename" id="my_ll_b"
						placeholder="사진을 첨부하세요" name="picfile" value="${storeinfo.picfile }">
				</div>
			</div>
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">전화 번호</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="전화 번호를 입력하세요" name="storetel" value="${storeinfo.storetel }">
				</div>
			</div>
			 <form:errors path="storetel" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">영업 시간</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="영업시간을 입력하세요" name="storetime" value="${storeinfo.storetime }">
				</div>
			</div>
			   <form:errors path="storetime" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">매장 주소</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<input type="text" class="storename" id="my_ll_b"
						placeholder="매장 주소를 입력하세요" name="storeadd" value="${storeinfo.storeadd }">
				</div>
			</div>
			  <form:errors path="storeadd" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">구글 지도 URL</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<textarea class="storename" id="my_ll_b"
						placeholder="구글 지도 URL를 입력하세요" name="mapurl">${storeinfo.mapurl }</textarea>
				</div>
			</div>
			 <form:errors path="mapurl" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
			<div class="store_write_input">
				<span class="input_label" id="my_ll_b">구글 지도 iframe</span>
				<div class="input_storename"
					style="border: 1px solid rgb(227, 229, 232);">
					<textarea class="storename" id="my_ll_b" name="mapiframe"
						placeholder="구글 지도에서 공유로 지도퍼가기를 하여 HTML을 복사해서 입력하세요" name="name">${storeinfo.mapiframe }</textarea>
				</div>
			</div>
			<form:errors path="mapiframe" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
		</div>
	</div>
	<div class="store_write_footer">
	<div class="btn_block">
	<button class="btn_cancel" id="my_bb_b" onclick="javascript:history.back()">취소</button>
	<button class="btn_save" id="my_bb_w" onclick="location.href='./store_update.store'">수정</button>
	</div>
	</div>
</form:form>
</body>
</html>