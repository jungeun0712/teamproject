<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
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
			mainCategorySelectBox.append("<option value='"+mainCategoryArray[i].main_category_id+"' id='my_ll_b'>"+mainCategoryArray[i].main_category_name+"</option>");
		}
		
		//*********** 1depth카테고리 선택 후 2depth 생성 START ***********
		$(document).on("change","select[name='category']",function(){
			
			//두번째 셀렉트 박스를 삭제 시킨다.
			var subCategorySelectBox = $("select[name='subcategory']");
			subCategorySelectBox.children().remove(); //기존 리스트 삭제
			
			//선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
			$("option:selected", this).each(function(){
				var selectValue = $(this).val(); //main category 에서 선택한 값
				subCategorySelectBox.append("<option value='' id='my_ll_b'>하위카테고리선택</option>");
				for(var i=0;i<subCategoryArray.length;i++){
					if(selectValue == subCategoryArray[i].main_category_id){
						subCategorySelectBox.append("<option value='"+subCategoryArray[i].sub_category_id+"' id='my_ll_b'>"+subCategoryArray[i].sub_category_name+"</option>");
					}
				}
			});
			
		});
		 
		
		/* $("select").each(function(){
		    if($(this).val()=="${category}"){
		      $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
		    }
		  }); 
		$("select").each(function(){
		    if($(this).val()=="${subcategory}"){
			      $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
			    }
		  });  */
		/* var select = document.getElementById("select_id");
		var option_value = select.options[select.selectedIndex].value;
		var option_text   = select.options[select.selectedIndex].text; */

		/* $(document).ready(function(){
		    $("select option[value='${param.category}']").attr("selected", true);
		});
		$(document).ready(function(){
		    $("select option[value='${param.subcategory}']").attr("selected", true);
		}); */
		 /* var opt = document.querySelectorAll("#select option");
			for (var i = 0; i < c_opt.length; i++) {
				if (opt[i].value == '${param.category}') {
					$("#select option:eq("+i+")").attr("selected","selected");	
					break;
				}
			} */
});

</script>
<meta charset="UTF-8">
<title>[관리자]상품 등록</title>
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
<form:form modelAttribute="item" action="item_write.store" enctype="multipart/form-data" name="f">
<div class="product-register">
	<span class="product_register_div1" id="my_b_b">[관리자]상품 등록</span>
</div>
			<div class="product-name">
				<span class="p-name" id="my_ll_b">상품유형</span>
				<div class="input-name">
					<form:select class="select-box" style="padding-left: 0.8vw;" path="category" id="my_ll_b">
						<option id="my_ll_b" value="${param.category}">상위 카테고리 선택</option>
					</form:select>
				
					<div class="input-name">
					<form:select class="select-box" style="padding-left: 0.8vw;" path="subcategory" id="my_ll_b">
						<option id="my_ll_b" value="${param.subcategory}">하위 카테고리 선택</option>
					</form:select>
					
					</div>
				</div>	
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">캐릭터 유형</span>
				<div class="input-name">
					<div class="input-text-name" style="margin-top: 14px;">
						<div style="display: inline-block; margin-right: 10px;">
					<input type="radio" name="character_c" value="1"
						style="display: inline-block; width: 1.5vw; height: 1.5vw;"> 
						<span id="my_ll_b" style="padding-left: 1vw;">라이언</span>
				</div>
				<div style="display: inline-block; margin-right: 10px;">
					<input type="radio" name="character_c" value="2"
						style="display: inline-block; width: 1.5vw; height: 1.5vw;"> 
						<span id="my_ll_b" style="padding-left: 1vw;">어피치</span>	
				</div>
					</div>
					
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품명</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:input class="i-t-name" id="my_ll_b" placeholder="상품명" error="0" align="left" padding="15" path="itemname" value="" />
						<font color="red"><form:errors path="itemname" /></font>
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">비밀번호</span>
				<div class="input-name">
					<div class="input-text-name">
						<input type="password" class="i-t-name"  id="my_ll_b"
						placeholder="비밀번호" error="0" align="left" padding="15" name="password">
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
				<span class="p-name"  id="my_ll_b">상품가격</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:input class="i-t-name"  id="my_ll_b"
						placeholder="상품가격" error="0" align="left" padding="15" path="price" value="" />
						<font color="red"><form:errors path="price" /></font>
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품사진1</span>
				<div class="input-name">
					<form:input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" path="itemfile1" value="" />
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품사진2</span>
				<div class="input-name">
					<form:input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" path="itemfile2" value="" />
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품사진3</span>
				<div class="input-name">
					<form:input type="file" class="i-t-name" id="my_ll_b"
					placeholder="사진을 첨부하세요" path="itemfile3" value="" />
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품상세내용</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:textarea class="detail-content"  id="my_ll_b"
						placeholder="상품상세내용" height="177" path="itemcontent2" />
						<font color="red"><form:errors path="itemcontent2" /></font>
					</div>
				</div>
			</div>
			<div class="product-name">
				<span class="p-name"  id="my_ll_b">상품내용</span>
				<div class="input-name">
					<div class="input-text-name">
						<form:textarea path="itemcontent" rows="15" cols="80" />
						<script>CKEDITOR.replace("itemcontent",{filebrowserImageUploadUrl : "imgupload.store"});</script>
						<font color="red"><form:errors path="itemcontent" /></font>
					</div>
				</div>
			</div>
			
			<div class="product-button">
				<button id="my_bb_b" class="c-button b" type="button" onclick="location.href='../admin/product-list.store'">취소</button>
				<input id="my_bb_w" class="p-button b" type="submit" value="등록" >
			</div>
</form:form>
</body>
</html>