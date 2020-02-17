<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장 안내</title>
<style type="text/css">
#boldfont_black {
	font-family: 'Noto Sans KR', sans-serif;	
	font-weight: 900;	
	color: black; 
	width: 100%;
	font-size: 36px;
}
#lightfont_black {
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: 300;	
	color: black;
	width: 100%;
	font-size: 15px;
}
div.left{
		width: 50%;
        float: left;
        box-sizing: border-box;
}
div.right{
		width: 45%;
	    margin-top: 4%;
	    height:210px;
        float: right;
        box-sizing: border-box;
}
a.noul:hover{
text-decoration: none;
}
a.noul{
text-decoration: underline;
}
#my-iframe {margin: 0 auto;} 
#my-iframe {display:block;border:none;height:100%;width:100%;}
</style>
</head>
<body>
<c:forEach var="store" items="${storelist }" end="2" >
		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-12">
				<div class="card mb-4" style="width:100%">
					<img class="card-img-top" src="${path }/images/storeinfo_store/${store.storepic}"
						alt="Card image cap">
					<div class="card-body" style="width: 100%;">
						<div class="left">
						<br>
						<h2 class="card-title" id="boldfont_black">${store.storename }</h2>
						<br>
						<h3 class="card-text" id="lightfont_black" style="margin-bottom: 16px;">
							<img src="${path }/images/icons/ico_phone.png" style="height: 27px; width: 27px; " >&nbsp; ${store.storetel}
						</h3>
						<h3 class="card-text" id="lightfont_black" style="margin-bottom: 16px;">
							<img src="${path }/images/icons/ico_time.png" style="height: 27px; width: 27px; " >&nbsp; ${store.storetime}
						</h3>
						<h3 class="card-text" id="lightfont_black" style="margin-bottom: 16px;">
							<img src="${path }/images/icons/ico_map.png" style="height: 27px; width: 27px;" >&nbsp; ${store.storeadd}
						</h3>
						</div>
						<!-- <a href="#" class="btn btn-primary">Read More &rarr;</a> -->
						<div class="right">
							<c:set var="url" value="${fn:split(store.mapiframe,'\"')[1]}" />
							<iframe src="${url}"
							 width="495" height="210" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
						</div>
					</div>
					<!-- 
					<div class="card-footer text-muted">
						<a class="google-map__MapCloseUpLink-sc-1bi5hyw-2 kvfxHy" href="https://www.google.com/maps/place/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%84%EB%A0%8C%EC%A6%88+%EA%B0%95%EB%82%A8%ED%94%8C%EB%9E%98%EA%B7%B8%EC%8B%AD%EC%8A%A4%ED%86%A0%EC%96%B4/@37.5008429,127.0234929,17z/data=!3m1!4b1!4m5!3m4!1s0x357ca158e3eb7817:0x9477be46958f3844!8m2!3d37.5008429!4d127.0256816" target="_blank">지도 자세히보기</a>
					</div> 
					-->
				</div>
			</div>
		</div>
		</c:forEach>
		
				<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-12">
				<div style="margin-top: 20%;">
				<button id="boldfont_black" name="btn" style="font-size: 20px; width: 10%; ">전체</button>
				</div>
				<hr>
				<!--  -->
				<!--  -->
				<!--  -->
				<div class="container" style="">
	<div class="row">
	<c:forEach var="store" items="${storelist }" begin="3" >
      <div class="col-lg-4 col-sm-6 portfolio-item" style="padding-bottom: 1.5%;">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${path }/images/storeinfo_store/${store.storepic}" alt=""></a>
          <div class="card-body">
				<h4 class="card-title" id="boldfont_black"  style="font-size: 22px;">${store.storename }</h4>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_phone.png" style="height: 20px; width: 20px; " >&nbsp;  ${store.storetel}
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_time.png" style="height: 20px; width: 20px; " >&nbsp; ${store.storetime}
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_map.png" style="height: 20px; width: 20px;" >&nbsp; ${store.storeadd}
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<a class="noul" 
					href="${store.mapurl }">
					지도 자세히보기
					</a>
				</p>
			</div>
          </div>
        </div> 
        </c:forEach>
        <!--  -->
      <%-- <div class="col-lg-4 col-sm-6 portfolio-item" style="padding-bottom: 1.5%;">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${path }/images/storeinfo_store/W002_lotte.jpg" alt=""></a>
          <div class="card-body">
				<h4 class="card-title" id="boldfont_black"  style="font-size: 22px;">롯데 영플라자 명동점</h4>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_phone.png" style="height: 20px; width: 20px; " >&nbsp; 02-2118-5150
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_time.png" style="height: 20px; width: 20px; " >&nbsp; 매일 11:30 - 21:30
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_map.png" style="height: 20px; width: 20px;" >&nbsp; 서울 중구 남대문로 67 (남대문로2가,<br>  롯데영플라자) 1층
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<a class="noul" 
					href="
					https://www.google.com/maps/place/%EB%A1%AF%EB%8D%B0%EC%98%81%ED%94%84%EB%9D%BC%EC%9E%90/@37.5632432,126.9796979,17z/data=!4m8!1m2!2m1!1z7ISc7Jq47Yq567OE7IucIOykkeq1rCDrqoXrj5nso7zrs4Droa_rjbAg7JiB7ZSM65287J6Q7KCQIOy5tOy5tOyYpO2UhOugjOymiA!3m4!1s0x357ca2f1761b7d15:0xb006aae66852fddf!8m2!3d37.5630346!4d126.9820817
					">
					지도 자세히보기
					</a>
				</p>
			</div>
          </div>
        </div>  --%>
      <%-- <div class="col-lg-4 col-sm-6 portfolio-item" style="padding-bottom: 1.5%;">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${path }/images/storeinfo_store/W003_Timesquare.jpg" alt=""></a>
          <div class="card-body">
				<h4 class="card-title" id="boldfont_black"  style="font-size: 22px;">타임스퀘어점</h4>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_phone.png" style="height: 20px; width: 20px; " >&nbsp; 02-2638-2750
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_time.png" style="height: 20px; width: 20px; " >&nbsp; 매일 10:30 - 22:00
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<img src="${path }/images/icons/ico_map.png" style="height: 20px; width: 20px;" >&nbsp; 서울 영등포구 영중로 15 (영등포동4가,<br>  타임스퀘어) 1층
				</p>
				<p class="card-text" id="lightfont_black" style="margin-bottom: 8px; font-size: 14px;">
					<a class="noul" 
					href="
					https://www.google.com/maps/place/%ED%83%80%EC%9E%84%EC%8A%A4%ED%80%98%EC%96%B4/@37.5171711,126.9009994,17z/data=!4m8!1m2!2m1!1z7YOA7J6E7Iqk7YCY7Ja0IOyYgeuTse2PrOygkA!3m4!1s0x357c9efb5c308621:0x17d357f6aa05d974!8m2!3d37.5171639!4d126.9031758
					">
					지도 자세히보기
					</a>
				</p>
			</div>
          </div>
        </div>  --%>
     
    </div>
 	</div>
</div>
		</div>

</body>
</html>