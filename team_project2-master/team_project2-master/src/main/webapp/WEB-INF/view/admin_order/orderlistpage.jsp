<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문번호 상세보기</title>
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
#my_bb_b_1 {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 700;
   color: black;
   font-size: 20px;
}
#my_bb_b_2 {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 700;
   color: black;
   font-size: 25px;
}
#my_bb_b_3 {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 700;
   color: black;
   font-size: 18px;
}
#my_ll_b {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: 200;
   color: black;
   font-size: 20px;
}
.a {
   min-height: 150px;
    text-align: center;
    padding-bottom: 40px;
}
@media (min-width: 769px) {
.b {
   font-size: 45px;   
   }
}
.b {
   font-family: 'Noto Sans KR', sans-serif;
   color: black;
   padding-top: 39px;
   margin-left: 38.5%;
}
.c {
   font-family: 'Noto Sans KR', sans-serif;
   color: black;
   font-size: 17px;
    font-weight: bold;
    margin: 0px 0px 14px;
}
.d {
   color: rgb(157, 157, 161);
    font-size: 13px;
}
.e {
   font-size: 20px;
   display: inline-block;
}
@media (min-width: 769px) {
.f {
   border-width: 0px;
    border-style: initial;
    border-color: initial;
    border-image: initial;
    }
}
.f {
   position: relative;
    margin: 0px;
    padding: 0px 0px 25px;
}
@media (min-width: 769px) {
.g {
   color: rgb(0, 0, 0);
    padding-bottom: 11px;
    font-size: 18px;
    border-bottom: 1px solid rgb(0, 0, 0);
    }
}
.g {
   font-family: 'Noto Sans KR', sans-serif;
   font-size: 23px;
   padding-top: 26px;
   font-weight: bold;
   letter-spacing: -0.2px;
   cursor: pointer;
}
.h {
    transform-origin: center top;
    overflow: hidden;
}
.i {
   position: relative;
    width: 100%;
    margin-left: 0px;
    padding: 15px 0px;
}
@media (min-width: 769px) {
.i:last-child {
   border-bottom: 1px solid rgb(242, 242, 242);
   }
}
.i:first-child {
   border-top: 0px;
}
.j {
   display: flex;
}
.k {
   position: relative;
    display: block;
    float: left;
    width: 100px;
    height: 100px;
    margin-right: 13px;
    overflow: hidden;
}
.l {
   display: block;
    width: 100%;
    height: auto;
    border-radius: 6px;
}
@media (min-width: 769px) {
.m {
   display: flex;
   }
}
.m {
   position: relative;
    float: left;
    width: calc(100% - 115px);
    padding-top: 5px;
}
@media (min-width: 769px) {
.n {
   width: 350px;
    margin-right: 120px;
    line-height: 90px;
    order: 1;
    padding: 0px;
    }
}
.n {
   display: block;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow-wrap: normal;
    font-size: 16px;
    font-weight: normal;
}
@media (min-width: 769px) {
.o {
   order: 2;
    line-height: 90px;
    text-align: left;
    margin: 0px;
    padding: 0px;
    }
}
.o {
   position: relative;
    font-size: 16px;
    letter-spacing: -0.2px;
}
@media (min-width: 769px) {
.p {
   top: 15px;
    left: 417px;
    line-height: 100px;
    text-align: right;
    }
}
.p {
   position: absolute;
    width: 80px;
    font-size: 15px
}
@media (min-width: 769px) {
.q {
   position: absolute;
    top: 15px;
    right: 0px;
    width: 320px;
    height: auto;
    line-height: 100px;
    margin-top: 0px;
    }
}
.q {
   display: block;
    margin-left: 113px;
    font-size: 13px;
}
@media (min-width: 769px) {
.r {
   display: flex;
    padding-top: 50px;
    }
}
@media (min-width: 769px) {
.r > div:first-child {
   flex: 1 1 0%;
   }
}
@media (min-width: 769px) {
.r > div:nth-child(2) {
   margin-left: 84px;
    flex: 1 1 0%;
    }
}
@media (min-width: 769px) {
.s {
   padding-bottom: 50px;
    border-width: 0px;
    border-style: initial;
    border-color: initial;
    border-image: initial;
   }
}
.s {
   position: relative;
    margin: 0px;
    padding: 0px 0px 25px;
}
.t {
   max-height: 400px;
    transform-origin: center top;
    overflow: hidden;
}
@media (min-width: 769px) {
.u {
   margin-top: 10px;
   }
}
.v {
   margin-bottom: 15px;
    padding: 15px 0px;
    border-bottom: 1px solid rgb(242, 242, 242);
}
.w {
   display: flex;
    flex-wrap: wrap;
    margin-bottom: 7px;
}
@media (min-width: 769px) {
.x1 {
   width: 150px;
    min-width: auto;
    flex: 0 0 auto;
    }
}
.x2 {
   font-weight: normal;
    font-size: 15px;
}
@media (min-width: 769px) {
.y1 {
   width: 150px;
    min-width: auto;
    flex: 0 0 auto;
    }
}
.y2 {
   font-weight: bold;
    font-size: 15px;
}
.y3 {
   font-family: 'Noto Sans KR', sans-serif;
   font-weight: bold;
   color: rgb(154, 154, 158);
}
@media (min-width: 769px) {
.y4 {
   text-align: left;
    margin-top: 5px;
    }
}
.y5 {
   width: 60%;
    font-size: 15px;
}
@media (min-width: 769px) {
.z {
   padding-top: 14px;
   }
}
.w0 {
   margin-top: 30px;
}
@media (min-width: 769px) {
.aa1 {
   width: 150px;
    min-width: auto;
    flex: 0 0 auto;
   }
}
.aa2 {
   line-height: 37px;
    font-weight: bold;
}
.aa3 {
   font-size: 15px;
}
@media (min-width: 769px) {
.bb {
   padding-bottom: 50px;
    border-width: 0px;
    border-style: initial;
    border-color: initial;
    border-image: initial;
   }
}
.bb {
   position: relative;
    margin: 0px;
    padding: 0px 0px 25px;
}
.cc {
   max-height: 300px;
    transform-origin: center top;
    overflow: hidden;
}
@media (min-width: 769px) {
.dd-1 {
   margin-top: 10px;
   }
}
@media (min-width: 769px) {
.ee {
   width: 95px;
    float: left;
    }
}
.ee {
   display: block;
    padding-top: 15px;
    margin-bottom: 10px;
    font-weight: normal;
    font-size: 15px;
}
@media (min-width: 769px) {
.ff {
   float: left;
    width: calc(100% - 95px);
    padding-top: 15px;
    }
}
.ff {
   margin-bottom: 25px;
    font-size: 15px;
    line-height: 170%;
}
.gg {
   display: none;
}
.hh {
   display: inline-block;
    font-weight: bold;
    margin-right: 5px;
}
.ii {
   border-top: 1px solid rgb(242, 242, 242);
}
@media (min-width: 769px) {
.jj {
   width: 95px;
    float: left;
    padding-top: 14px;
    }
}
@media (min-width: 769px) {
.kk {
   border-top: 1px solid rgb(242, 242, 242);
   }
}
@media (min-width: 769px) {
.mm {
   float: left;
    width: calc(100% - 95px);
    padding-top: 15px;
    }
}
.mm {
   margin-bottom: 25px;
    font-size: 15px;
    line-height: 170%;
}
@media (min-width: 769px) {
.nn {
   margin-top: 30px;
   }
}
.oo {
   margin-bottom: 30px;
}
.pp {
   padding: 20px;
    margin: 0px 0px 50px;
    background: rgb(247, 247, 247);
}
.qq {
   display: block;
    padding-bottom: 3px;
    font-weight: bold;
    font-size: 15px;
}
.rr {
   font-size: 13px;
}
.ss {
   position: relative;
    padding-left: 7px;
    margin-top: 6px;
    color: rgb(154, 154, 158);
}
</style>
</head>
<body>
<div class="a">
   <h2 class="b">주문정보</h2>
   <p class="c" id="my_bb_b">주문번호 ${orderno }</p>
   <ul class="d" id="my_ll_b">
   <c:if test="${orderstate<=5 }">
      <li class="e" <c:if test="${orderstate==0 }">id="my_bb_b"</c:if>>미결제
      <img src="../images/ico_step.png" style="width : 20px; height : 20px"></li>
      <li class="e" <c:if test="${orderstate==1 }">id="my_bb_b"</c:if>>결제확인
      <img src="../images/ico_step.png" style="width : 20px; height : 20px"></li>
      <li class="e" <c:if test="${orderstate==2 }">id="my_bb_b"</c:if>>배송준비중
      <img src="../images/ico_step.png" style="width : 20px; height : 20px"></li>
      <li class="e" <c:if test="${orderstate==3 }">id="my_bb_b"</c:if>>배송중
      <img src="../images/ico_step.png" style="width : 20px; height : 20px"></li>
      <li class="e" <c:if test="${orderstate==4 }">id="my_bb_b"</c:if>>배송완료
      <img src="../images/ico_step.png" style="width : 20px; height : 20px"></li>
      <li class="e" <c:if test="${orderstate==5 }">id="my_bb_b"</c:if>>주문확정</li>
   </c:if>
   <c:if test="${orderstate==6 }">
      <li class="e" <c:if test="${orderstate==6 }">id="my_bb_b"</c:if>>반품/교환</li>
   </c:if>
   <c:if test="${orderstate==7 }">
      <li class="e" <c:if test="${orderstate==7 }">id="my_bb_b"</c:if>>취소</li>
   </c:if>
   </ul>
</div>
<div class="f" style="padding-bottom: 5px;">
   <h3 class="g">
      <span>주문상품</span>
   </h3>
   <div class="h" style="border-bottom: 1px solid black;">
      <div>
         <ul>
         <c:if test="${orderno_count>1 }">
         <c:forEach var="orderlist" items="${orderlist }">
            <li class="i">
               <div class="j">
                  <span class="k">
                     <img class="l" src="../images/product/${orderlist.itemfile1url }" alt="상품사진">
                  </span>
                  <div class="m">
                     <span class="n" id="my_ll_b">
                        ${orderlist.itemname }
                     </span>
                     <div class="o">
                        <span id="my_ll_b"><fmt:formatNumber value="${orderlist.price }" pattern="#,###원"/></span>
                     </div>
                  </div>
                  <p class="p" id="my_ll_b">
                     ${orderlist.quantity }개
                  </p>
                  <p class="q" id="my_ll_b">
                     <strong id="my_bb_b_1">
                     <c:choose>
                        <c:when test="${orderlist.orderstate==0}">미결제</c:when>
                        <c:when test="${orderlist.orderstate==1}">결제확인</c:when>
                        <c:when test="${orderlist.orderstate==2}">배송준비중</c:when>
                        <c:when test="${orderlist.orderstate==3}">배송중</c:when>
                        <c:when test="${orderlist.orderstate==4}">배송완료</c:when>
                        <c:when test="${orderlist.orderstate==5}">주문확정</c:when>
                        <c:when test="${orderlist.orderstate==6}">반품/교환</c:when>
                        <c:when test="${orderlist.orderstate==7}">취소</c:when>
                     </c:choose>
                     </strong>
                     <span>상태입니다</span>
                  </p>
               </div>
            </li>
            </c:forEach>
            </c:if>
            <c:if test="${orderno_count==1 }">
            <li class="i">
               <div class="j">
                  <span class="k">
                     <img class="l" src="../images/product/${orderlist.itemfile1url }" alt="상품사진">
                  </span>
                  <div class="m">
                     <span class="n" id="my_ll_b">
                        ${orderlist.itemname }
                     </span>
                     <div class="o">
                        <span id="my_ll_b"><fmt:formatNumber value="${orderlist.price }" pattern="#,###원"/></span>
                     </div>
                  </div>
                  <p class="p" id="my_ll_b">
                     ${orderlist.quantity }개
                  </p>
                  <p class="q" id="my_ll_b">
                     <strong id="my_bb_b_1">
                     <c:choose>
                        <c:when test="${orderlist.orderstate==0}">미결제</c:when>
                        <c:when test="${orderlist.orderstate==1}">결제확인</c:when>
                        <c:when test="${orderlist.orderstate==2}">배송준비중</c:when>
                        <c:when test="${orderlist.orderstate==3}">배송중</c:when>
                        <c:when test="${orderlist.orderstate==4}">배송완료</c:when>
                        <c:when test="${orderlist.orderstate==5}">주문확정</c:when>
                        <c:when test="${orderlist.orderstate==6}">반품/교환</c:when>
                        <c:when test="${orderlist.orderstate==7}">취소</c:when>
                     </c:choose>
                     </strong>
                     <span>상태입니다</span>
                  </p>
               </div>
            </li>
            </c:if>
         </ul>
      </div>
   </div>
</div>
<div class="r">
   <div class="s">
      <div name="purchase"></div>
      <h3 class="g">
         <span>결제정보</span>
      </h3>
      <div class="t" style="height : 483px;">
         <div>
            <div class="u">
               <ul class="v">
                  <li class="w">
                     <strong class="x1 x2" id="my_bb_b_1">결제수단</strong>
                     <div class="y1 y2" id="my_ll_b">
                     <c:if test="${selectpay==1 }">신용카드</c:if>
                     <c:if test="${selectpay==2 }">무통장입금</c:if>
                     </div>
                  </li>
                  <li class="w">
                     <strong class="x1 x2" id="my_bb_b_1">결제일시</strong>
                     <div class="y3 y4 y5" id="my_ll_b">
                     <fmt:formatDate value="${datepay }" pattern="yyyy-MM-dd HH:mm:ss"/>
                     </div>
                  </li>
               </ul>
               <ul class="z">
                  <li class="w">
                     <strong class="x1 x2" id="my_bb_b_1">상품가</strong>
                     <span id="my_ll_b">
                     <c:if test="${orderno_count==1 }">
                     <c:set var="total" value="${orderlist.price *orderlist.quantity }" />
                     </c:if>
                     <c:if test="${orderno_count>1 }">
                     <c:forEach var="orderlist" items="${orderlist }">
                     <c:set var="sum" value="${orderlist.price*orderlist.quantity}" />
                     </c:forEach>
                     <c:set var= "total" value="${sum + sum}"/>
                     </c:if>
                     <fmt:formatNumber value="${total }" pattern="#,###원"/>
                     </span>
                  </li>
                  <!-- <li class="w">
                     <strong class="x1 x2" id="my_ll_b">배송비</strong>
                     <span id="my_ll_b">무료</span>
                  </li> -->
                  <li class="w">
                     <strong class="x1 x2" id="my_bb_b_1">포인트</strong>
                     <span id="my_ll_b">
                     <fmt:formatNumber pattern="#,###P" value="${usepoint}"/>
                     </span>
                  </li>   
                  <!-- <li class="w">
                     <strong class="x1 x2" id="my_ll_b">기프트카드</strong>
                     <span id="my_ll_b">0</span>
                     <span id="my_ll_b">원</span>
                  </li> -->
                  <li class="w0 w" id="my_bb_b_2">
                     <strong class="x1 x2" id="my_bb_b_2">최종 결제금액</strong>
                     &nbsp;&nbsp;
                     <span id="my_bb_b_2">
                     <c:if test="${orderno_count==1 }">
                     <c:set var="total" value="${orderlist.price*orderlist.quantity-orderlist.usepoint }" />
                     <fmt:formatNumber value="${total}" pattern="#,###원"/>
                     </c:if>
                      <c:if test="${orderno_count>1 }">
                     <c:forEach items="${orderlist }" var="orderlist">
                     <c:set var="sum" value="${orderlist.price*orderlist.quantity}" />
                     </c:forEach>
                     <c:set var= "total" value="${sum + sum}"/>
                     <fmt:formatNumber value="${total-usepoint }" pattern="#,###원"/>
                     </c:if>
                     </span>
                  </li>                                          
               </ul>
            </div>
         </div>
      </div>
   </div>
   <div class="bb">
      <div name="address"></div>
      <h3 class="g">
         <span>배송지정보</span>
      </h3>
      <div class="cc" style="height : 400px;">
         <div>
            <div class="dd-1">
               <strong class="ee" id="my_bb_b_1">
                  주문고객
               </strong>
               <c:if test="${orderno_count==1 }">
               <dl class="ff">
                  <dt class="gg" >이름</dt>
                  <dd class="hh" style="display: inline-block;" id="my_ll_b">${orderlist.username }</dd>
                  <dt class="gg">전화번호</dt>
                  <dd style="display: inline-block;" id="my_ll_b">${orderlist.phonenum }</dd>
                  <dt class="gg">이메일</dt>
                  <dd id="my_ll_b">${orderlist.userid }</dd>
               </dl>
               <strong class="ii jj"id="my_bb_b_1">받는분</strong>
               <dl class="kk mm">
                  <dt class="gg">이름</dt>
                  <dd class="hh" style="display: inline-block;" id="my_ll_b">${orderlist.username }</dd>
                  <dt class="gg">전화번호</dt>
                  <dd style="display: inline-block;" id="my_ll_b">${orderlist.phonenum }</dd>
                  <dt class="gg">주소</dt>
                  <dd id="my_ll_b">${orderlist.address }</dd>
                  <dt class="gg">나머지 주소</dt>
                  <dd id="my_ll_b">${orderlist.restaddress }</dd>
               </dl>
               </c:if>
               <c:if test="${orderno_count>1 }">
               <dl class="ff">
                  <dt class="gg" >이름</dt>
                  <dd class="hh" style="display: inline-block;" id="my_ll_b">${username }</dd>
                  <dt class="gg">전화번호</dt>
                  <dd style="display: inline-block;" id="my_ll_b">${phonenum }</dd>
                  <dt class="gg">이메일</dt>
                  <dd id="my_ll_b">${userid }</dd>
               </dl>
               <strong class="ii jj"id="my_bb_b_1">받는분</strong>
               <dl class="kk mm">
                  <dt class="gg">이름</dt>
                  <dd class="hh" style="display: inline-block;" id="my_ll_b">${username }</dd>
                  <dt class="gg">전화번호</dt>
                  <dd style="display: inline-block;" id="my_ll_b">${phonenum }</dd>
                  <dt class="gg">주소</dt>
                  <dd id="my_ll_b">${address }</dd>
                  <dt class="gg">나머지 주소</dt>
                  <dd id="my_ll_b">${restaddress }</dd>
               </dl>
               </c:if>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- <div class="nn">
   <div class="oo pp">
      <strong class="qq" id="my_bb_b_3">포인트 및 쿠폰 관련 유의사항</strong>
      <ul>
         <li class="rr ss">- 포인트/쿠폰 사용시 부분반품 및 부분환불이 불가합니다. 현재 시스템의 제약으로 부분반품을 원하시는 경우 전체반품 후 재구매 부탁드립니다.</li>
         <li class="rr ss">- 주문시 사용한 포인트/쿠폰의 유효기간이 남아있는 경우, 주문취소 및 반품 후 재사용이 가능한 상태로 변경됩니다. 단, 반품시 주문상태가 반품완료일 때 변경됩니다.</li>
         <li class="rr ss">- 구매취소시 취소/환불 규정에 따라 포인트 및 쿠폰이 회수될 수 있습니다.</li>
         <li class="rr ss">- 포인트/쿠폰 악용 사례를 주기적으로 조사하고 있으며, 리셀러의 경우 회원 박탈 및 피해보상 청구 등 법적 조치가 진행될 수 있습니다.</li>
      </ul>
   </div>
</div> -->
</body>
</html>