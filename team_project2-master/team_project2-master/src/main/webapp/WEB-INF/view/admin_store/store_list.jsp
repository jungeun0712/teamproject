<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자]매장 관리</title>
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
</head>
<body>
   <div class="admin_order_list" style="margin-bottom: 0px;">
      <div class="admin_order_header">
         <div class="admin_order_title">
         <span id="my_b_b">[관리자]매장 관리</span>
         <button class="admin_store_write" id="my_ll_w" 
         onclick="location.href='./store_write.store'">매장 등록</button>
         </div>
         
         <div class="admin_order_filter">
            <span> <span
               class="admin_order_filter_str admin_order_filter_count"
               id="my_ll_b">총</span> <span class="admin_order_filter_count"
               id="my_ll_b">${listcount }</span> <span
               class="admin_order_filter_str admin_order_filter_count"
               id="my_ll_b">건</span>
            </span>
         </div>
         <div class="admin_list_no">
            <!-- count > 0  -->
            <ul class="admin_list_no_ul">
               <li class="store_name" id="my_bb_b" style="font-size: 20px;">매장 이름</li>
               <li class="store_pic" id="my_bb_b" style="font-size: 20px;">매장 사진</li>
               <li class="store_tel" id="my_bb_b" style="font-size: 20px;">전화 번호</li>
               <li class="store_time" id="my_bb_b" style="font-size: 20px;">영업 시간</li>
               <li class="store_address" id="my_bb_b" style="font-size: 20px;">주소</li>
               <li class="store_mapchk" id="my_bb_b" style="font-size: 20px;">지도</li>
               <li class="store_manage" id="my_bb_b" style="font-size: 20px;">관리</li>
            </ul>
            <c:forEach var="store" items="${storelist }" >
            <ul class="order_list1">
            <li class="store_list">
               <a  onclick="return false;"
                  style="padding-left: 0; color: black; width: 16vw;"> <span
                  class="order_list1_span">매장 이름</span> <span class="order_list1_num"
                  id="my_ll_b">${store.storename }</span>
               </a>
            </li>
               <hr class="moblie_line">
            <li class="store_list" style="width: 11vw;">
                   <img style="width: 10vw; height: auto;"
                       src="../images/storeinfo_store/${store.storepic }" alt="매장사진">

                     <!-- <div class="order_list_content">
                        <div>
                           <div class="item_name" id="my_ll_b">02-6010-0104</div>
                           <div class="price_quant" id="my_ll_b">
                              매일 10:30 - 22:00
                           </div>
                        </div>
                     </div> -->
            </li>
            <li class="store_list" style="text-align: center; width: 9vw;">
                  <div class="order_list2_date" id="my_ll_b"
                     style=" display: inline-block;">${store.storetel }</div>
            </li>
            <li class="store_list" style="text-align: center; width: 7vw;">
                     <c:set var="timelen" value="${fn:length(store.storetime)}"/>
                  <div class="order_list2_date" id="my_ll_b"
                     style=" display: inline-block;">${fn:substring(store.storetime,3,timelen) }</div>
            </li>
            <li class="store_list" style="text-align: center; width: 21vw;">
                  <div class="order_list2_date" id="my_ll_b"
                     <c:set var="addlen" value="${fn:length(store.storeadd)}"/>
                     style=" display: inline-block;">${fn:substring(store.storeadd,0,20)}<br>${fn:substring(store.storeadd,20,addlen)}</div>
            </li>
            <li class="store_list" style="text-align: center; width: 3vw;">
                  <div class="order_list2_date" id="my_ll_w"
                     style=" display: inline-block;">
                     <button class="admin_store_update" style="padding-left: 0;" id="my_ll_w"
                     onclick="location.href='${store.mapurl}'">
                     확인
                     </button>
            </div>
            </li>
            <li class="order_list4_2" style="text-align: center; width: 3vw;">
                  <div class="order_list2_state" id="my_ll_b"
                     style=" display: inline-block;">
                     <button class="admin_store_update" id="my_ll_w" 
                     onclick="location.href='./store_update.store?storeno=${store.storeno}'">수정</button>
                     <br class="desktop_br">
                     <br class="desktop_br">
                     <button class="admin_store_update" id="my_ll_w" 
                     onclick="location.href='./store_delete.store?storeno=${store.storeno}'">삭제</button>
                     </div>
            </li>
            </ul>
            </c:forEach>
         </div>
         <!-- <div class="list_footer">
            <div class="page_block">
               <div class="arrow_box">
                  <div class="arrow_pre"></div>
               </div>
               <span class="page_nums">
                  <div>1</div>
               </span>
               <div class="arrow_box">
                  <div class="arrow_next"></div>
               </div>
            </div>
         </div> -->
         </div>
      </div>
   <script type="text/javascript">
                  var cnt = 0;
                  function filterbox() {
                     if (cnt == 0) {
                        $(".admin_order_filter_box").css("display",
                              "flex")
                        cnt++
                     } else {
                        $(".admin_order_filter_box").css("display",
                              "none")
                        cnt--
                     }
                  }
               </script>
</body>
</html>