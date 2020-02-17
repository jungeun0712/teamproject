<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet" type="text/css" href="../css/main_kje.css">
<link rel="stylesheet" type="text/css" href="../css/main_csy.css">
<link rel="stylesheet" type="text/css"
   href="../fonts/iconic/css/material-design-iconic-font.min.css">
   <link rel="stylesheet" type="text/css"
   href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
   <style type="text/css">
.avmum {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 34.6667vw;
    background: url(https://t1.kakaocdn.net/friends/new_store/2.0/mobile/banner_faq.png) center center / contain no-repeat;
}
@media (min-width: 769px){
.avmum {
    height: 220px;
    background-image: url(../images/product-detail/banner_faq.png);
}
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

.my_ll_b {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 200;
   color: black;
   font-size: 20px;
}

#my_ll_a {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 200;
   color: rgb(154, 154, 158);
   font-size: 12px;
}
</style>
</head>
<body>

   <script>
      $(document).ready(function() {
      
         $(".select-modal__OptionLink-ow3cz8-3").hover(
               function(){
                  $(this).removeClass("cPoWav")
                  $(this).addClass("jrtVOJ")
               }, function(){
                  $(this).removeClass("jrtVOJ")
                  $(this).addClass("cPoWav")
               }
            );   
         $(".select-modal__Block-ow3cz8-2").click(function(){
            
            var content = $(this).find("a").text();
            $(".header__FilterName").text(content)
            selectform.submit();
         })
         $("#notice").show()
         $("#FAQ").hide()
         if ($(".list__Title-sc").hasClass("glsXdQ") === true) {
            $(".reply-template__ReplyBlock").hide()
         }
         if ($(".faq_title").hasClass("glsXdQ") === true) {
            $(".faq_replyBlock").hide()
         }
         $("#notice_button").addClass("select")
         $(".header__Filter").hide()
         if(${param.tab eq 'FAQ'}){
            disp_div('FAQ', 'tab2')
         }
         $(".select-modal__OptionLink-ow3cz8-3").click(function(){
            $("input[name=selectvalue]").val($(this).text())
         })
         
         
      });
      function disp_div(id, tab) {
         $("input[name=tab]").val(id)
         $(".FAQ").each(function() {
            $(this).hide();
         })
         $(".tab").each(function() {
            $(this).removeClass("select")
         })
         $("#" + id).show();
         $("#" + tab).addClass("select")
         if (tab == 'tab2') { // FAQ 탭을 누르면
            $(".eFELNp").show() // 질문 항목 선택하는 창 뜨게함
            $(".notice_button").removeClass('ewldGg')
            $(".notice_button").addClass('bMzeRV')
            $(".faq_button").removeClass('fSmWHc')
            $(".faq_button").addClass('ittGnH')
            $(".notice").each(function() {
               $(this).hide();
            })
            $(".header__Select").hide()
         }
         if (tab == 'tab1') {
            $(".eFELNp").hide()
            $(".notice_button").removeClass('bMzeRV')
            $(".notice_button").addClass('ewldGg')
            $(".faq_button").removeClass('ittGnH')
            $(".faq_button").addClass('fSmWHc')
            //history.replaceState({}, null, location.pathname);
         }
      }
      function replyshow(num, replynum, click) {
      /*    if (num == 1) { */
            if ($(click).hasClass("glsXdQ") === true) {
               $(click).removeClass("glsXdQ");
               $(click).addClass("cdlUDa");
               $("#" + replynum).show()
               return;
            }
            if ($(click).hasClass("cdlUDa") === true) {
               $(click).removeClass("cdlUDa");
               $(click).addClass("glsXdQ");
               $("#"+replynum).hide()
               return;
            }
         /* } else {
            if ($(click).hasClass("glsXdQ") === true) {
               $(click).removeClass("glsXdQ");
               $(click).addClass("cdlUDa");
               $("#" + replynum).show()
               return;
            }
            if ($(click).hasClass("cdlUDa") === true) {
               $("#" + replynum).hide()
               $(click).removeClass("cdlUDa");
               $(click).addClass("glsXdQ");
               return;
            }
         } */
      }
      function selectbox(){
         $(".header__Select").toggle()
         /*    $('.select-modal__OptionWrap-ow3cz8-0 li').children('a').each(function (index, item) {
            // 인덱스는 말 그대로 인덱스 
            // item 은 해당 선택자인 객체를 나타냅니다. $(item).addClass('li_0' + index); 
            // item 과 this는 같아서 일반적으로 this를 많이 사용합니다. 
            // $(this).addClass('li_0' + index); 
            var filter = $(".header__FilterName").text();
            alert(filter)
            if($(item).text() == '전체'){
               $(item).removeClass("jrtVOJ")
               $(item).addClass("cPoWav")
            }
            if(filter == $(item).text()){
               alert("호출")
               $(item).removeClass("cPoWav")
               $(item).addClass("jrtVOJ")
               return;
            } 
         });  */

      }
      
      
   </script>
   <script>
   function listdo(page){
      //document.searchform.pageNum.value = page;
      //document.searchform.submit(); //페이지 눌러도 검색창 파라미터 유지
   }
</script>
   <div class="avmum" style="height: 13.7vw; background-color: #fdd33a;" >
      <span class="category_header_span" id="boldfont_white_he" style="font-weight : bold;">고객센터</span>
   </div>
   <div class="title jCUDnA">
      <div class="header gHsTgc">
         <button class="notice_button tab ewldGg" id="tab1 my_bb_b" type="button"
            onclick="disp_div('notice', 'tab1')">공지사항</button>
         <button class="faq_button tab fSmWHc" id="tab2 my_bb_b" type="button"
            onclick="disp_div('FAQ', 'tab2')">FAQ</button>
      </div>
      <form name="selectform" action="notice.store" method="post">  
      <input type="hidden" name="tab" value="">
      <input type="hidden" name="selectvalue" value="">
      <button class="header__Filter eFELNp" type="button">
         <div class="header__FilterName bljjmH" onclick="selectbox()" name="selecttype">
         <c:if test='${empty param.selectvalue}'>
         전체
         </c:if><c:if test='${!empty param.selectvalue}'>
         ${fn:trim(param.selectvalue)}
         </c:if>
         </div>
         <div class="header__Select kDPxRN">
            <ul id="box my_ll_b" class="select-modal__OptionWrap-ow3cz8-0 drWdwN" type="text">
               <li class="select-modal__Block-ow3cz8-2 exNXXp">
                  <a class="select-modal__OptionLink-ow3cz8-3 jrtVOJ">전체</a></li>
               <li class="select-modal__Block-ow3cz8-2 exNXXp">
                  <a class="select-modal__OptionLink-ow3cz8-3 cPoWav">배송</a></li>
               <li class="select-modal__Block-ow3cz8-2 exNXXp">
                  <a class="select-modal__OptionLink-ow3cz8-3 cPoWav">교환/반품/환불</a></li>
               <li class="select-modal__Block-ow3cz8-2 exNXXp">
                  <a class="select-modal__OptionLink-ow3cz8-3 cPoWav">기타</a></li>
               <li class="select-modal__Block-ow3cz8-2 exNXXp">
                  <a class="select-modal__OptionLink-ow3cz8-3 cPoWav">상품</a></li>
               <li class="select-modal__Block-ow3cz8-2 exNXXp">
                  <a class="select-modal__OptionLink-ow3cz8-3 cPoWav">주문결제</a></li>
            </ul> <!--  전체라는 값을 읽어서 전체면 1전송하고그런식으로 해야할듯 -->
         </div>
         
      </button>
      </form>
   </div>
   <c:if test="${qnalistcount == 0}">
            <div class="admin_list fkzQYP" style="padding-left : 30vw; padding-top : 10vw; padding-bottom : 10vw;">
               <!-- count == 0 -->
               <div id="my_ll_b">아직 등록된 공지가 없습니다.</div>
            </div>
         </c:if>
   <!-- 공지사항 내역 나중에 foreach문으로 반복해서 replynum 을 index로 주기 mypage참고 -->
   <div id="notice" class="notice">
   <c:forEach var="noticelist" items="${noticelist}" varStatus="stat">
      <div class="list__Item fkzQYP">
         <div class="list__TitleBlock igiwIN">
            <div class="list__Info-sc fuoFjD" id="my_ll_a">
            <fmt:formatDate value="${noticelist.boarddate}" pattern="yyyy-MM-dd"/></div>
            <div class="list__Title-sc glsXdQ" id="my_ll_b"
               onclick="replyshow(1, 'replynum${stat.index}', this)">${noticelist.q_subject}</div>
         </div>
         <!-- 버튼 누르면 cdlUDa이부분으로 적용되게  -->
      </div>
      <div class="reply-template__ReplyBlock iyrEsZ" id="replynum${stat.index}">
         <div class="reply-template__ReplyContents kYyZhV" id="my_ll_b">
            <p>${noticelist.q_content}</p>
         </div>
      </div>
   </c:forEach>
      
   <div style="text-align: center;padding-top: 135px;"><c:if test="${pageNum > 1}">
            <%--    <a href="list.shop?pageNum=${pageNum - 1}">[이전]</a> --%>
                  <a href="javascript:listdo(${pageNum-1})">[이전]</a>
            </c:if>
            <c:if test="${pageNum <=1 }">[이전]</c:if>
            <c:forEach var="a" begin="${noticestartpage}" end="${noticeendpage}">
               <c:if test="${a == pageNum}">[${a}]</c:if>
               <c:if test="${a != pageNum }">
                  <%-- <a href="list.shop?pageNum=${a}">[${a }]</a> --%>
                  <a href="javascript:listdo(${a})">[${a}]</a>
               </c:if>
            </c:forEach>
            <%-- 다음 페이지 존재 link연결--%>
            <c:if test="${pageNum < noticemaxpage }">
               <%-- <a href="list.shop?pageNum=${pageNum +1}">[다음]</a> --%>
               <a href="javascript:listdo(${pageNum + 1})">[이전]</a>
            </c:if>
            <%-- 다음 페이지 없음 --%>
            <c:if test="${pageNum >= noticemaxpage }">[다음]</c:if>
            </div>
   </div>
   <!-- FAQ  -->
   <div id="FAQ" class="FAQ">
   <c:forEach var="qnalist" items="${qnalist}" varStatus="stat">
      <div class="list__ItemWrapper-sc-15wis6g-0 fkzQYP">
         <div class="list__TitleBlock-sc-15wis6g-3 gxwoaN">
            <div class="faq_info fuoFjD" id="my_ll_b">
            <c:if test="${qnalist.filter eq '0'}">전체</c:if>
            <c:if test="${qnalist.filter eq '1'}">배송</c:if>
            <c:if test="${qnalist.filter eq '2'}">교환/반품/환불</c:if>
            <c:if test="${qnalist.filter eq '3'}">기타</c:if>
            <c:if test="${qnalist.filter eq '4'}">상품</c:if>
            <c:if test="${qnalist.filter eq '5'}">주문결제</c:if>
            </div>
            <div class="faq_title glsXdQ" onclick="replyshow(2, 'faqreplynum${stat.index}', this)">${qnalist.q_subject}</div>
         </div>
      </div>
   
      <c:if test="${qnalistcount > 0}">
      <div class="faq_replyBlock iyrEsZ" id="faqreplynum${stat.index}">
         <div class="reply-template__ReplyContents-kvnc78-1 kYyZhV" id="my_ll_b">
            <p>${qnalist.q_content}</p>
         </div>
      </div>
      </c:if>
   </c:forEach>
      <div style="text-align: center;padding-top: 135px;">
         <c:if test="${pageNum > 1}">
            <%--    <a href="list.shop?pageNum=${pageNum - 1}">[이전]</a> --%>
                  <a href="javascript:listdo(${pageNum-1})">[이전]</a>
            </c:if>
            <c:if test="${pageNum <=1 }">[이전]</c:if>
            <c:forEach var="b" begin="${qnastartpage}" end="${qnaendpage}">
               <c:if test="${b == pageNum}">[${b}]</c:if>
               <c:if test="${b != pageNum }">
                  <%-- <a href="list.shop?pageNum=${b}">[${b }]</a> --%>
                  <a href="javascript:listdo(${b})">[${b}]</a>
               </c:if>
            </c:forEach>
            <%-- 다음 페이지 존재 link연결--%>
            <c:if test="${pageNum < qnamaxpage }">
               <%-- <a href="list.shop?pageNum=${pageNum +1}">[다음]</a> --%>
               <a href="javascript:listdo(${pageNum + 1})">[이전]</a>
            </c:if>
            <%-- 다음 페이지 없음 --%>
            <c:if test="${pageNum >= qnamaxpage }">[다음]</c:if>
            </div>
   </div>
</body>
</html>