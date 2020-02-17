<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품리스트</title>
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
#my_ll_z {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 200;
   color: rgb(154, 154, 158);
   font-size: 17px;
}
</style>
</head>
<body>
<script>

   function checkclick(pickno, itemnum, id){
      //alert(pickno+","+itemnum)
   /*    if(${empty sessionScope.loginUser}){
         alert("로그인한 사람만 찜 할 수 있습니다")
         return;
      } */
      
      if ($("#"+id).prop('checked')) {
         $.ajax({// itemnum, userid, quantity, price
            url : "heartup.store",
            type : "POST",
            dataType: 'text',
            data : {
               itemnum : itemnum,
            },success : function(data){
               if(data=="로그인을 한 사람만 찜버튼을 누를 수 있습니다"){
                  $("#"+id).prop('checked', false)
                  alert(data)
               }else{
                  $(this).parent().removeClass("wish_btn")
                  $(this).parent().addClass("wish_btn").addClass("on")
                  alert(data)
               }
               
            }, error : function(e){
               console.log(e)
            }
            
         })
         return false;
         
      } else {
         //var listnum = $(this).val();
         $.ajax({// itemnum, userid, quantity, price
            url : "heartdown.store",
            type : "POST",
            dataType: 'text',
            data : {
               pickno: pickno
            },success : function(data){
               alert(data)
            }, error : function(e){
               console.log(e)
            }
            
         })
         return false;
         $(this).parent().removeClass("wish_btn").removeClass("on")
         $(this).parent().addClass("wish_btn")
      }

   }


</script>
<script>
$(function(){
   if(${param.category == 1}){
      $(".category_header_div").addClass("iJySYV")
      $(".iJySYV").css("background-color","#dcdcdc");
   }else if(${param.category == 2}){
      $(".category_header_div").addClass("dpgINz")
      $(".dpgINz").css("background-color","#dcdcdc");
   }else if(${param.category == 3}){
      $(".category_header_div").addClass("cztjdj")
      $(".cztjdj").css("background-color","rgb(215, 215, 215)");
   }else if(${character==1}){
      $(".category_header_div").addClass("hkMGHD ")
      $(".hkMGHD ").css("background-color","rgb(170, 212, 226)");
   }else if(${character == 2}){
      $(".category_header_div").addClass("uISNn")
      $(".uISNn").css("background-color","rgb(251, 147, 172)");
   }else if(${empty param.category && empty character}){   
      $(".category_header_div").addClass("jxMVNe")
      $(".jxMVNe").css("background-color","#ffd401");
   }
   
    $(".dropdown-menu li").click(function(){
           if($(this).index()==0){
              if($(this).parents("ul").hasClass('one')){
                 $("input[name=character_c]").val("")
              }
           }
            $("input[name=selectvalue1]").val($("#select1").text()); // 캐릭터 
            $("input[name=selectvalue2]").val($("#select2").text()); // 상품 순서
            selectform.submit();
           
    })  
   
})
</script>

   <div class="category_header_div" style="height: 12.7vw">
      <span class="category_header_span" id="boldfont_white_he" style="font-weight: bold;">
      <c:if test='${param.category == 1}'>토이</c:if>
      <c:if test='${param.category == 2}'>의류</c:if>
      <c:if test='${param.category == 3}'>생활테크</c:if>
      <c:if test='${character==1 && empty param.category}'>라이언</c:if>
      <c:if test='${character==2 && empty param.category}'>어피치</c:if>
      <c:if test='${empty param.category && empty character}'>전체</c:if>
      
      </span>
   </div>
   
   <div class="sub_cate">
      <c:if test='${empty param.category || !empty param.character}'>
      <div class="sub_cate_in1"></div>
      </c:if>
      <c:if test='${!empty param.category}'>
      <div class="sub_cate_in2">
         <div style="border-bottom: 1px solid rgba(0, 0, 0, 0.2)">
            <button class="sub_cate_btn2" onclick="location.href='../item/list.store?category=${param.category}'">전체</button>
            <button class="sub_cate_btn1" onclick="location.href='../item/list.store?category=${param.category}&subcategory=2'">
               <c:if test='${param.category==1}'>
                  중형인형
               </c:if>
               <c:if test='${param.category==2}'>
                  남성
               </c:if>
               <c:if test='${param.category==3}'>
                  에어팟 악세서리
               </c:if>
            </button>
            <button class="sub_cate_btn3" onclick="location.href='../item/list.store?category=${param.category}&subcategory=1'">
               <c:if test='${param.category==1}'>
                  미니인형
               </c:if>
               <c:if test='${param.category==2}'>
                  여성
               </c:if>
               <c:if test='${param.category==3}'>
                  에어팟 케이스
               </c:if>
            </button>
         </div>
      </div>
      </c:if>
   </div>

   <script>
      $('.sub_cate_btn1').on('click',function() {
         $('.sub_cate_btn1').css('border-bottom','1px solid rgb(0, 0, 0)');
         $('.sub_cate_btn1').css('color','black');
         $('.sub_cate_btn2').css('border-bottom','none');
         $('.sub_cate_btn2').css('color','rgb(154, 154, 158)');
         $('.sub_cate_btn3').css('border-bottom','none');
         $('.sub_cate_btn3').css('color','rgb(154, 154, 158)');
      });
      $('.sub_cate_btn2').on('click',function() {
         $('.sub_cate_btn1').css('border-bottom','none');
         $('.sub_cate_btn1').css('color','rgb(154, 154, 158)');
         $('.sub_cate_btn2').css('border-bottom','1px solid rgb(0, 0, 0)');
         $('.sub_cate_btn2').css('color','black');
         $('.sub_cate_btn3').css('border-bottom','none');
         $('.sub_cate_btn3').css('color','rgb(154, 154, 158)');
      });
      $('.sub_cate_btn3').on('click',function() {
         $('.sub_cate_btn1').css('border-bottom','none');
         $('.sub_cate_btn1').css('color','rgb(154, 154, 158)');
         $('.sub_cate_btn2').css('border-bottom','none');
         $('.sub_cate_btn2').css('color','rgb(154, 154, 158)');
         $('.sub_cate_btn3').css('border-bottom','1px solid rgb(0, 0, 0)');
         $('.sub_cate_btn3').css('color','black');
      });
      $(function(){
         
         // 토이에서 미니 인형 이렇게 선택했을 떄
         if(${!empty param.subcategory}){ 
            var num =  ${param.subcategory}
            if(num==1){
               $('.sub_cate_btn1').css('border-bottom','none');
               $('.sub_cate_btn1').css('color','rgb(154, 154, 158)');
               $('.sub_cate_btn2').css('border-bottom','none');
               $('.sub_cate_btn2').css('color','rgb(154, 154, 158)');
               $('.sub_cate_btn3').css('border-bottom','1px solid rgb(0, 0, 0)');
               $('.sub_cate_btn3').css('color','black');
            }else if(num == 2){
               $('.sub_cate_btn1').css('border-bottom','1px solid rgb(0, 0, 0)');
               $('.sub_cate_btn1').css('color','black');
               $('.sub_cate_btn2').css('border-bottom','none');
               $('.sub_cate_btn2').css('color','rgb(154, 154, 158)');
               $('.sub_cate_btn3').css('border-bottom','none');
               $('.sub_cate_btn3').css('color','rgb(154, 154, 158)');
            }
         }else if(${empty param.charcter}){ // subcategory 가 null -> 토이 눌렀을 때
            $('.sub_cate_btn1').css('border-bottom','none');
            $('.sub_cate_btn1').css('color','rgb(154, 154, 158)');
            $('.sub_cate_btn2').css('border-bottom','1px solid rgb(0, 0, 0)');
            $('.sub_cate_btn2').css('color','black');
            $('.sub_cate_btn3').css('border-bottom','none');
            $('.sub_cate_btn3').css('color','rgb(154, 154, 158)');
         }
         
         
      
      })
   </script>
   
   <div
      style="display: inline-block; padding-top: 30px; float: center left;">
      <span id="my_l_b">총 ${itemlistcount}개</span>
   </div>
<form name="selectform" action="list.store" method="post" style="float: right;padding-bottom: 15px;">
      <input type="hidden" name="category" value="${param.category}">
      <input type="hidden" name="subcategory" value="${param.subcategory}">
      <input type="hidden" name="character_c" value="${character}">
      <input type="hidden" name="selectvalue2" value="">
   <div
      style="display: inline-block; position: relative; padding-top: 20px; float: right;">
      <div class="dropdown" style="width: 200px; height: 50px;">
         <div class="select" id="select2">
            <span><c:if test='${empty select_2}'>신상품순</c:if>
            <c:if test='${!empty select_2}'>${select_2}</c:if></span> <i class="fa fa-chevron-up" style="margin-right: 0px; margin-top: 0px;"></i>
         </div>
      <!--    <input type="hidden" name="order"> -->
         <ul class="dropdown-menu two" id="my_l_b">
            <li id="신상품순">신상품순</li>
            <li id="판매량순">판매량순</li>
            <li id="낮은가격순">낮은가격순</li>
            <li id="높은가격순">높은가격순</li>
         </ul>
      </div>
   </div>              
   
   <%-- <c:if test='${!empty param.category && !empty param.character}'> --%>
   <input type="hidden" name="selectvalue1" value="">
   <div style="display: inline-block; position: relative; padding-top: 20px; float: right;">
      <div class="dropdown" style="width: 200px; height: 50px;">
         <div class="select" id="select1">
            <span><c:if test='${empty select_1}'>전체</c:if>
            <c:if test='${!empty select_1}'>${select_1}</c:if>
            </span> <i class="fa fa-chevron-up" style="margin-right: 0px; margin-top: 0px;"></i>
         </div>
         <!-- <input type="hidden" name="character"> -->
         <ul class="dropdown-menu one" id="select1 my_l_b">
            <li id="전체">&nbsp;&nbsp;<img src="../images/product/category_group_off.png"
               onmouseover="this.src='../images/product/category_group_on.png';"
               onmouseout="this.src='../images/product/category_group_off.png';"
               style="width: 25%; height: 25%;">전체</li>
            <li id="라이언">&nbsp;&nbsp;<img src="../images/product/category_rion_off.png"
               onmouseover="this.src='../images/product/category_rion_on.png';"
               onmouseout="this.src='../images/product/category_rion_off.png';"
               style="width: 25%; height: 25%;">라이언</li>
            <li id="어피치">&nbsp;&nbsp;<img
               src="../images/product/category_apeach_off.png"
               onmouseover="this.src='../images/product/category_apeach_on.png';"
               onmouseout="this.src='../images/product/category_apeach_off.png';"
               style="width: 25%; height: 25%;">어피치</li>
         <!-- <!--    <li id="무지"><img src="../images/product/category_muzi_off.png"
               onmouseover="this.src='../images/product/category_muzi_on.png';"
               onmouseout="this.src='../images/product/category_muzi_off.png';"
               style="width: 25%; height: 25%;">&nbsp;&nbsp;무지</li>
            <li id="프로도"><img
               src="../images/product/category_frodo_off.png"
               onmouseover="this.src='../images/product/category_frodo_on.png';"
               onmouseout="this.src='../images/product/category_frodo_off.png';"
               style="width: 25%; height: 25%;">&nbsp;&nbsp;프로도</li>
            <li id="네오"><img src="../images/product/category_neo_off.png"
               onmouseover="this.src='../images/product/category_neo_on.png';"
               onmouseout="this.src='../images/product/category_neo_off.png';"
               style="width: 25%; height: 25%;">&nbsp;&nbsp;네오</li>
            <li id="튜브"><img src="../images/product/category_tube_off.png"
               onmouseover="this.src='../images/product/category_tube_on.png';"
               onmouseout="this.src='../images/product/category_tube_off.png';"
               style="width: 25%; height: 25%;">&nbsp;&nbsp;튜브</li>
            <li id="데이지"><img src="../images/product/category_jayz_off.png"
               onmouseover="this.src='../images/product/category_jayz_on.png';"
               onmouseout="this.src='../images/product/category_jayz_off.png';"
               style="width: 25%; height: 25%;">&nbsp;&nbsp;제이지</li>
            <li id="콘"><img src="../images/product/category_con_off.png"
               onmouseover="this.src='../images/product/category_con_on.png';"
               onmouseout="this.src='../images/product/category_con_off.png';"
               style="width: 25%; height: 25%;">&nbsp;&nbsp;콘</li> --> 
         </ul>
      </div>
   </div>
   
<%--    </c:if> --%>
</form>
   
   <c:if test="${itemlistcount == 0}">
            <div class="admin_list">
               <!-- count == 0 -->
               <div id="my_ll_b">상품 준비중입니다.</div>
            </div>
         </c:if>


<c:if test="${itemlistcount > 0}">
   <div class="row isotope-grid"
      style="width: 100%; position: relative; height: 1282px; margin-top: 20px; margin-left: 0px; margin-right: 0px;">
      <c:forEach var="itemlist" items="${itemlist}" varStatus="stat">
      <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
         <!-- Block2 -->
         <div class="block2">
            <div class="block2-pic hov-img0">
               <img
                  src="../images/product/${itemlist.itemfile1url}"
                  alt="IMG-PRODUCT"> <!-- <a href="#"
                  class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
                  장바구니 담기 </a> -->
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
               <div class="block2-txt-child1 flex-col-l " style="width: 70%;">
                  <a href="product_detail.store?no=${itemlist.itemnum}"
                     class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" id="my_ll_z">
                     ${itemlist.itemname}</a> <span class="stext-105 cl3" id="my_l_b">
                      <fmt:formatNumber value="${itemlist.price}" type="currency" currencySymbol="" />원</span>
               </div>


               <div class="wish_check" itemtype="new">
                                    <input id="item${stat.index}" type="checkbox" data-toggle="tooltip" onclick="checkclick(${itemlist.pickno}, ${itemlist.itemnum},  'item${stat.index}')"
                                       data-placement="top" title="찜하기" <c:if test="${itemlist.pickno!=0}">checked="checked"</c:if>>
                                    <label for="item${stat.index}"></label>
                                    <input type="hidden" name="pickno" value="${itemlist.pickno}">
                                 </div>
            </div>
         </div>
      </div>
   </c:forEach>
   </div>
</c:if>
</body>
</html>