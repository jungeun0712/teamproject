<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환불/교환/반품 신청서 작성</title>
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

#input_ch_re {
   width: 100%;
   box-sizing: border-box;
   border: none;
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 100;
   color: black;
   border-radius: 0px;
   font-size: 20px;
   background-color: white;
   background-size: 0px;
   background-image: none;
   background-position: 0px;
   background-repeat: no-repeat;
   padding: 12px 15px;
   -webkit-transition: width 0.4s ease-in-out;
   transition: width 0.4s ease-in-out;
   font-weight: 100;
   color: black;
}
</style>
</head>
<body>
   <form:form modelAttribute="chg" action="change_return_order.store"
      enctype="multipart/form-data" name="f" method="post">
      <div class="store_write_header" id="my_b_b">환불/교환/반품 신청서 작성</div>
      <div class="store_write_body">
         <div class="store_write_edit">
            <div class="store_write_input">
               <span class="input_label" id="my_ll_b">주문번호</span>
               <div class="input_storename"
                  style="border: 1px solid rgb(227, 229, 232);">
                  <form:input  class="storename my_ll_b" id="input_ch_re"
                     placeholder="주문번호를 입력하세요" path="chg_orderno"/>
               </div>
            </div>
            <form:errors path="chg_orderno" cssClass="my_ll_r"
               cssStyle="padding-left:7vw;" element="div" />
            <div class="store_write_input">
               <span class="input_label" id="my_ll_b">주문 날짜</span>
               <div class="input_storename"
                  style="border: 1px solid rgb(227, 229, 232);">
                  <form:input type="date" class="storename my_ll_b" id="input_ch_re"
                     placeholder="주문날짜를 입력하세요" path="chg_orderdate" />
               </div>
            </div>
            <form:errors path="chg_orderdate" cssClass="my_ll_r"
               cssStyle="padding-left:7vw;" element="div" />
            <div class="store_write_input">
               <span class="input_label" id="my_ll_b">연락처</span>
               <div class="input_storename"
                  style="border: 1px solid rgb(227, 229, 232);">
                  <form:input type="text" class="storename my_ll_b" id="input_ch_re"
                     placeholder="연락처를 입력하세요" path="chg_tel" />
               </div>
            </div>
            <form:errors path="chg_tel" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
            <div class="store_write_input">
               <span class="input_label" id="my_ll_b">계좌번호</span>
               <div class="input_storename"
                  style="border: 1px solid rgb(227, 229, 232);">
                  <form:input type="text" class="storename my_ll_b" id="input_ch_re"
                     placeholder="은행명)계좌번호 형식으로 입력하세요" path="chg_account"/>
               </div>
            </div>
                  <form:errors path="chg_account" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
            <div class="store_write_input">
               <span class="input_label" id="my_ll_b">요청 사유</span>
               <div class="input_checkname"
                  style="border: 1px solid white; float: left;">
                  <form:radiobutton style="float: left; margin: 0.3vw;" 
                     class="checkname" path="chg_reseon" value="고객변심"/>
                  <div id="my_ll_g"
                     style="height: 100%; float: left; margin: 0.3vw;">고객변심</div>
               </div>
               <div class="input_checkname"
                  style="border: 1px solid white; float: left;">
                  <form:radiobutton style="float: left; margin: 0.3vw;" 
                     class="checkname" path="chg_reseon" value="상품불량"/>
                  <div id="my_ll_g"
                     style="height: 100%; float: left; margin: 0.3vw;">상품불량</div>
               </div>
               <div class="input_checkname"
                  style="border: 1px solid white; float: left;">
                  <form:radiobutton style="float: left; margin: 0.3vw;"
                     class="checkname" path="chg_reseon" value="오배송" />
                  <div id="my_ll_g"
                     style="height: 100%; float: left; margin: 0.3vw;">오배송</div>
               </div>
               <div class="input_checkname"
                  style="border: 1px solid white; float: left;">
                  <form:radiobutton style="float: left; margin: 0.3vw;"
                     class="checkname" path="chg_reseon" value="상품파손" />
                  <div id="my_ll_g"
                     style="height: 100%; float: left; margin: 0.3vw;">상품파손</div>
               </div>
            </div>
            <div class="store_write_input">
               <span class="input_label" id="my_ll_b">상세 사유</span>
               <div class="input_storename"
                  style="border: 1px solid rgb(227, 229, 232);">
                  <form:textarea class="storename" id="my_ll_b" rows="15"
                     placeholder="상세 사유를 입력하세요" path="chg_detail" ></form:textarea>
               </div>
            </div>
                  <form:errors path="chg_detail" cssClass="my_ll_r" cssStyle="padding-left:7vw;" element="div" />
         </div>
      </div>
      <div class="store_write_footer">
         <div class="btn_block">
            <button class="btn_cancel" id="my_bb_b"
               onclick="javascript:history.back()">취소</button>
            <input  class="btn_save" id="my_bb_w" type="submit" style="text-align: center;" value="등록">
         </div>
      </div>
   </form:form>
</body>
</html>