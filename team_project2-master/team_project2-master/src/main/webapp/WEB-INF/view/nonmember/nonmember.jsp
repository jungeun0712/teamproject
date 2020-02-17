<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비회원 주문조회</title>
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
</style>
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
   href="../fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
   href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="mArticle">
   <div class="" style="height: 900px; display: block;">
   <div class="friends_layer order_layer" style="display: block;">
  <div class="inner_layer">
    <div class="layer_head">
      <strong class="tit_order">비회원 주문조회</strong>
    </div>
    <div class="layer_body">
    <form:form modelAttribute="orderlist" method="post" name="f" id="nonmemberOrderFrm">
        <input type="hidden" name="_csrf" value="4d0ee8fd-7a7e-4965-a362-e36b383ee552">
        <input type="hidden" name="_csrf_header" value="X-CSRF-TOKEN">
        <input type="hidden" id="nonMemberName" name="nonMemberName" value="">
        <fieldset>
          <legend class="screen_out" id="my_b_b">비회원 주문조회 양식</legend>
          <div class="wrap_order">
            <dl class="list_order">
              <dt>
                <label class="lab_order" for="orderno" id="my_ll_b">주문번호 :</label>
              </dt>
              <dd>
                <input type="text" id="orderno" name="orderno" class="inp_order" value="" onkeyup="this.value = this.value.toUpperCase();">
              </dd>
              <dt>
                <label class="lab_order" for="payname" id="my_ll_b">이름<!-- 디자인상 국문은 필드명 '주문자명'이 되어야 함 --> :</label>
              </dt>
              <dd>
                <input type="text" id="payname" name="payname" class="inp_order" value="">
              </dd>
              <!-- 이메일 입력필드 추가 -->
              <dt>
                <label class="lab_order" for="userid" id="my_ll_b">이메일 :</label>
              </dt>
              <dd>
                <input type="text" id="userid" name="userid" class="inp_order" value="">
              </dd>
              <!-- // 이메일 입력필드 추가 -->
            </dl>
            <p class="desc_error" style="display:none"></p> <!-- display:none 주문번호나 이름 입력값 없을 경우 style="display:block" -->
          </div>
          <button type="button" id="my_bb_w" class="btn_check btn_confirm">주문확인</button>
     <!--      <button type="button" class="btn_check btn_cancel">취소</button> -->
        </fieldset>
     </form:form>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(function() {

     
/*     $(".order_layer").show();
    //popupCenter();
    $("#kakaoIndex, #kakaoWrap").attr("aria-hidden","true");
    $("#kakaoIndex a, #kakaoWrap a, #kakaoIndex button, #kakaoWrap button").attr("tabindex","-1");
    $(".order_layer").attr("tabindex","0").focus();
    $(".order_layer").removeAttr("tabindex");
    $(".order_layer .btn_cancel").on("click",function(){
      $("#kakaoIndex, #kakaoWrap").removeAttr("aria-hidden");
      $("#kakaoIndex a, #kakaoWrap a, #kakaoIndex button, #kakaoWrap button").removeAttr("tabindex");
      $("body").attr("tabindex","0").focus();
      $("body").removeAttr("tabindex");
      $(".order_layer").hide();
      $(".dimmed_layer").hide();
      // navi(햄버거)는 lock_on을 사용하지 않아서 따로 리셋해줌
      const top = document.body.style.top;
      document.body.style.position = '';
      document.body.style.top = '';
      document.body.style.WebkitOverflowScrolling = '';
      document.body.style.width = '';
      window.scrollTo(0, parseInt(top || '0') * -1);
    }); */
    $(".order_layer .btn_confirm").on("click",function(){
   
      var od_num = $.trim($("#orderno").val());
      var od_name = $.trim($("#payname").val());
      var od_mail = $.trim($("#userid").val());
      var pattern = /[\s]/g;
      if(od_num.length == 0) {
        $(".desc_error").html("&ldquo; 주문번호를 입력해 주세요  &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }
      if (od_name.length == 0) {
        $(".desc_error").html("&ldquo; 이름을 입력해 주세요 &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }
      if (od_mail.length == 0) {
            $(".desc_error").html("&ldquo; 이메일을 입력해 주세요 &rdquo;");
            $(".desc_error").css("display", "block");
            return false;
      }
      if (pattern.test(od_num) == true){
        $(".desc_error").html("&ldquo; 주문번호에 공백이 있습니다. 공백없이 입력해 주세요 &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }
      if (!fn_orderCheck()) { // true를 리턴받으면 false되서 아래 실행안됨
         // 
        $(".desc_error").html("&ldquo; 해당 주문내역이 없습니다 &rdquo;");
        $(".desc_error").css("display", "block");
        return false;
      }
      // 주문내역이 있으면 값 전송해서 주문 내역 보여주는걸로 
      var url = "../mypage/orderlistpage.store";
      $("#nonmemberOrderFrm").attr("action", url);
      $("#nonMemberName").val(encodeURIComponent(od_name));
      $("#orderno").val(od_num);
      $("#userid").val(od_mail);
      $("#nonmemberOrderFrm").submit(); 
    });
  }); 
   function fn_orderCheck(){
    var orderChk = false;
    var url = "orderCheck.store";
    $.ajax({
      //headers: {'X-CSRF-TOKEN': '4d0ee8fd-7a7e-4965-a362-e36b383ee552'},
      url: url,
      type: "POST",
      dataType: "json",
      data: {orderno:$.trim($("#nonmemberOrderFrm #orderno").val()), payname:$.trim($("#nonmemberOrderFrm #payname").val()), userid:$.trim($("#nonmemberOrderFrm #userid").val())},
    
      async:false,
      error: function (e) {
       console.log(e)
        alert('처리중 에러가 발생하였습니다.');
        console.log($.trim($("#nonmemberOrderFrm #orderno").val()));
        return false;
      },
      success: function (data) {
        orderChk = data; // 주문 내역이 있으면 true를 리턴
      }
    });
 
    return orderChk;
  } 
</script></div>
</div>
</body>
</html>