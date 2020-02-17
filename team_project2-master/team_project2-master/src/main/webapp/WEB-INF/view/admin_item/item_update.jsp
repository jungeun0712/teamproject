<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function() {
	var mainCategoryArray = new Array();
	var mainCategoryObject = new Object();
	
	mainCategoryObject = new Object();
	mainCategoryObject.main_category_id = "1";
	mainCategoryObject.main_category_name = "토이";
	mainCategoryArray.push(mainCategoryObject);
	
	mainCategoryObject = new Object();
	mainCategoryObject.main_category_id = "2";
	mainCategoryObject.main_category_name = "의류";
	mainCategoryArray.push(mainCategoryObject);
	
	mainCategoryObject = new Object();
	mainCategoryObject.main_category_id = "3";
	mainCategoryObject.main_category_name = "생활테크";
	mainCategoryArray.push(mainCategoryObject);
	
	//Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
	var subCategoryArray = new Array();
	var subCategoryObject = new Object();
	
	subCategoryObject = new Object();
	subCategoryObject.main_category_id = "1";
	subCategoryObject.sub_category_id = "1"
	subCategoryObject.sub_category_name = "미니인형"	
	subCategoryArray.push(subCategoryObject);
	
	subCategoryObject = new Object();
	subCategoryObject.main_category_id = "1";
	subCategoryObject.sub_category_id = "2"
	subCategoryObject.sub_category_name = "중형인형"	
	subCategoryArray.push(subCategoryObject);
	
	
	subCategoryObject = new Object();
	subCategoryObject.main_category_id = "2";
	subCategoryObject.sub_category_id = "1"
	subCategoryObject.sub_category_name = "여성"	
	subCategoryArray.push(subCategoryObject);
	
	subCategoryObject = new Object();
	subCategoryObject.main_category_id = "2";
	subCategoryObject.sub_category_id = "2"
	subCategoryObject.sub_category_name = "남성"	
	subCategoryArray.push(subCategoryObject);
	
	subCategoryObject = new Object();
	subCategoryObject.main_category_id = "3";
	subCategoryObject.sub_category_id = "1"
	subCategoryObject.sub_category_name = "에어팟 케이스"	
	subCategoryArray.push(subCategoryObject);
	
	subCategoryObject = new Object();
	subCategoryObject.main_category_id = "3";
	subCategoryObject.sub_category_id = "2"
	subCategoryObject.sub_category_name = "에어팟 엑세서리"	
	subCategoryArray.push(subCategoryObject);
	
	
	//메인 카테고리 셋팅
	var mainCategorySelectBox = $("select[name='category']");
	
	for(var i=0;i<mainCategoryArray.length;i++){
		mainCategorySelectBox.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"+mainCategoryArray[i].main_category_name+"</option>");
	}
	
	//*********** 1depth카테고리 선택 후 2depth 생성 START ***********
	$(document).on("change","select[name='category']",function(){
		
		//두번째 셀렉트 박스를 삭제 시킨다.
		var subCategorySelectBox = $("select[name='subcategory']");
		subCategorySelectBox.children().remove(); //기존 리스트 삭제
		
		//선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
		$("option:selected", this).each(function(){
			var selectValue = $(this).val(); //main category 에서 선택한 값
			subCategorySelectBox.append("<option value=''>하위카테고리선택</option>");
			for(var i=0;i<subCategoryArray.length;i++){
				if(selectValue == subCategoryArray[i].main_category_id){
					subCategorySelectBox.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
				}
			}
		});
	});
});


function file_delete() {
    document.f.itemfile1url.value = ""
    file_desc.style.display = "none";
 }
 function file_delete1() {
    document.f.itemfile2url.value = ""
    file_desc.style.display = "none";
 }
 function file_delete2() {
    document.f.itemfile3url.value = ""
    file_desc.style.display = "none";
 }
</script>
<meta charset="UTF-8">
<title>[관리자]상품 수정</title>
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

#my_bb_w {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 900;
	color: white;
	font-size: 25px;
}

.my_ll_b {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 200;
	color: black;
	font-size: 20px;
}
</style>
</head>
<body>
	<form:form modelAttribute="item" action="item_update.store?itemnum=${item.itemnum}"
		enctype="multipart/form-data" name="f" >
		<input type="hidden" name="itemnum" value="${item.itemnum}">
		<input type="hidden" name="category" value="${item.category}">
        <input type="hidden" name="subcategory" value="${item.subcategory}">
	<div class="product-register">
		<span id="my_b_b">[관리자]상품 수정</span>
	</div>
	<div class="product-name">
		<span class="p-name" id="my_ll_b">상품유형</span>
		<div class="input-name">
			<form:select class="select-box" style="padding-left: 0.8vw;" path="category" id="my_ll_b">
						<option value="" id="my_ll_b">
						  <c:choose>
                     <c:when test="${item.category==1 }">토이</c:when>
                     <c:when test="${item.category==2 }">의류</c:when>
                     <c:when test="${item.category==3 }">생활테크</c:when>
                  </c:choose>
						</option>
					</form:select>
					<div class="input-name">
					<form:select class="select-box" style="padding-left: 0.8vw;" path="subcategory" id="my_ll_b">
						<option value="" id="my_ll_b">
						                  <c:choose>
                     <c:when test="${item.category==1 }">
                        <c:choose>
                           <c:when  test="${item.subcategory==1 }">미니인형</c:when>
                           <c:when  test="${item.subcategory==2 }">중형인형</c:when>
                        </c:choose>
                     </c:when>
                     <c:when test="${item.category==2 }">
                        <c:choose>
                           <c:when  test="${item.subcategory==1 }">여자</c:when>
                           <c:when  test="${item.subcategory==2 }">남자</c:when>
                        </c:choose>
                     </c:when>
                     <c:when test="${item.category==3 }">
                        <c:choose>
                           <c:when test="${item.subcategory==1 }">에어팟 케이스</c:when>
                           <c:when test="${item.subcategory==2 }">에어팟 악세서리</c:when>
                        </c:choose>
                     </c:when>
                  </c:choose>
						</option>
					</form:select>
				</div>
		</div>
	</div>
	<div class="product-name">
				<span class="p-name"  id="my_ll_b">캐릭터 유형</span>
				<div class="input-name">
					<div class="input-text-name" style="    margin-top: 14px;">
						<div style="display: inline-block;     margin-right: 10px;">
					<input type="radio" name="character_c" value="1"
					<c:if test="${item.character_c==1 }" >checked="checked"</c:if>
						style="display: inline-block; width: 1.5vw; height: 1.5vw;"
						> <span id="my_ll_b"
						style="padding-left: 1vw;">라이언</span>
				</div>
				<div style="display: inline-block;     margin-right: 10px;">
					<input type="radio" name="character_c" value="2"
					<c:if test="${item.character_c==2 }" >checked="checked"</c:if>
						style="display: inline-block; width: 1.5vw; height: 1.5vw;"
						> <span id="my_ll_b"
						style="padding-left: 1vw;">어피치</span>
				</div>
					</div>
				</div>
			</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품명</span>
			<div class="input-name">
				<div class="input-text-name" id="my_ll_b">
					<form:input class="i-t-name" placeholder="상품명" error="0"
						align="left" padding="15" path="itemname" value="" />
					<font color="red"><form:errors path="itemname" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
				<span class="p-name" id="my_ll_b">비밀번호</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:input type="password" class="i-t-name"  id="my_ll_b"
						placeholder="비밀번호" error="0" align="left" padding="15" path="password" />
							<font color="red"><form:errors path="password" /></font>
					<spring:hasBindErrors name="item">
						<font color="red"> <c:forEach
								items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
						</font>
					</spring:hasBindErrors>	
					</div>
				</div>
		</div> 
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품가격</span>
			<div class="input-name">
				<div class="input-text-name" id="my_ll_b">
					<form:input class="i-t-name" placeholder="상품가격" error="0"
						align="left" padding="15" path="price" value="" />
					<font color="red"><form:errors path="price" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품사진1</span>
			<div class="input-name" id="my_ll_b">
				<c:if test="${!empty item.itemfile1url}">
					<div id="file_desc">
						 <button class="btn_cancel_1" id="my_ll_b" style="border: 1px solid transparent;" 
						 onclick="product/${item.itemfile1url}">${item.itemfile1url}</button>
						<button class="btn_cancel" id="my_ll_b" style="height: 40px;" onclick="javascript:file_delete()">첨부파일삭제</button>
					</div>
				</c:if>
				<form:hidden path="itemfile1url"/>
                <input type="file" class="i-t-name" placeholder="사진을 첨부하세요"
               name="itemfile1">
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품사진2</span>
			<div class="input-name" id="my_ll_b">
			<c:if test="${!empty item.itemfile2url}">
					<div id="file_desc">
						 <button class="btn_cancel_1" id="my_ll_b" style="border: 1px solid transparent;" 
						 onclick="product/${item.itemfile2url}">${item.itemfile2url}</button>
						<button class="btn_cancel" id="my_ll_b" style="height: 40px;" onclick="javascript:file_delete1()">첨부파일삭제</button>
					</div>
				</c:if>
				<form:hidden path="itemfile2url" />
				<input type="file" class="i-t-name" placeholder="사진을 첨부하세요"
					name="itemfile2">
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품사진3</span>
			<div class="input-name" id="my_ll_b">
			<c:if test="${!empty item.itemfile3url}">
					<div id="file_desc">
						 <button class="btn_cancel_1" id="my_ll_b" style="border: 1px solid transparent;" 
						 onclick="product/${item.itemfile3url}">${item.itemfile3url}</button>
						<button class="btn_cancel" id="my_ll_b" style="height: 40px;" onclick="javascript:file_delete2()">첨부파일삭제</button>
					</div>
				</c:if>
				<form:hidden path="itemfile3url" />
				<input type="file" class="i-t-name" placeholder="사진을 첨부하세요"
					name="itemfile3">
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품상세내용</span>
			<div class="input-name">
				<div class="input-text-name" id="my_ll_b">
					<form:textarea class="detail-content" placeholder="상품상세내용"
						height="177" path="itemcontent2" />
					<font color="red"><form:errors path="itemcontent2" /></font>
				</div>
			</div>
		</div>
		<div class="product-name">
			<span class="p-name" id="my_ll_b">상품내용</span>
			<div class="input-name">
				<div class="input-text-name">
					<form:textarea path="itemcontent" rows="15" cols="80" />
					<script>
						CKEDITOR.replace("itemcontent", {
							filebrowserImageUploadUrl : "imgupload.store"
						});
					</script>
					<font color="red"><form:errors path="itemcontent" /></font>
				</div>
			</div>
		</div>

		<div class="product-button">
			<button id="my_bb_b" class="c-button b" type="button"
				onclick="location.href='../admin_item/product_list.store'">취소</button>
			<input id="my_bb_w" class="p-button b" type="submit" value="수정">
		</div>
	</form:form>
</body>
</html>