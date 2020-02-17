<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[관리자] 메인화면</title>
<link rel="icon" type="image/png" href="../images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/css-hamburgers/hamburgers.min.css">

<!--===============================================================================================-->
<!--    <link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
 -->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../css/util.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/main_kje.css">
<link rel="stylesheet" type="text/css" href="../css/mypage_cyj.css">
<link rel="stylesheet" type="text/css" href="../css/main_kje2.css">
<link rel="stylesheet" type="text/css" href="../css/item_kje.css">
<link rel="stylesheet" type="text/css" href="../css/mypage_cyj2.css">

<!--===============================================================================================-->
<link href="../css/modern-business.css" rel="stylesheet">
<link type="text/css" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans">
<link rel="shortcut icon"
	href="//t1.kakaocdn.net/kakaofriends_global/static/img/favicon.ico"
	type="image/x-ico">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,200,300,700,900&display=swap"
	rel="stylesheet">

<script type="text/javascript"
	src="http://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
<script src="https://www.chartjs.org/samples/latest/utils.js"></script>
</head>

<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: nane;
}
</style>
<body>
	<script>
		var randomScalingFactor = function() {
			return Math.round(Math.random() * 100);
		};

		var config = {
			type : 'doughnut',
			data : {
				datasets : [ {
					data : [ randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor(), randomScalingFactor(),
							randomScalingFactor(), ],
					backgroundColor : [ window.chartColors.red,
							window.chartColors.orange,
							window.chartColors.yellow,
							window.chartColors.green, window.chartColors.blue, ],
					label : '상품품목'
				} ],
				labels : [ '토이', '의류', '생활테크' ]
			},
			options : {
				responsive : true,
				legend : {
					position : 'top',
				},
				title : {
					display : true,
					text : ''
				},
				animation : {
					animateScale : true,
					animateRotate : true
				}
			}
		};

		$(function() {
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myDoughnut = new Chart(ctx, config);

			var ctx1 = document.getElementById("myChart"); //캔버스 id값 가져오기
			var myChart = new Chart(ctx1, {
				type : 'line', //그래프 형태 지정하기
				data : {
					labels : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
							"9월", "10월", "11월", "12월" ], //X축 제목
					datasets : [ {
						label : '2020년 수익률',
						data : [ 12, 19, 3, 5, 2, 3 ],
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)', //1번째 그래프의 바탕색
						'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ],
						borderColor : [ 'rgba(255,99,132,1)', //1번째 그래프의 선색
						'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ],
						borderWidth : 1
					//선굵기
					} ]
				},
				option : {
					maintainAspectRatio : false,
					spanGaps : false,
					elements : {
						line : {
							tension : 0.000001
						}
					},
					plugins : {
						filler : {
							propagate : false
						}
					},
					scales : {
						xAxes : [ {
							ticks : {
								autoSkip : false,
								maxRotation : 0
							}
						} ]
					},
					animation : {
						animateScale : true,
						animateRotate : true
					}

				}
			});

		})
	</script>
	<div id="mArticle">

		<div class="">

			<!-- Page Heading -->
			<div
				class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800">Friends Store Dashboard</h1>
				<!--   <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
			</div>

			<!-- Content Row -->
			<div class="row">

				<!-- Earnings (Monthly) Card Example -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-primary text-uppercase mb-1">수입(매월)</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
								</div>
								<div class="col-auto">
									<!--  <i class="fas fa-calendar fa-2x text-gray-300"></i> -->
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Earnings (Monthly) Card Example -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-success shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-success text-uppercase mb-1">수입(연간)</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
								</div>
								<div class="col-auto">
									<!--  <i class="fas fa-dollar-sign fa-2x text-gray-300"></i> -->
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-primary text-uppercase mb-1">수입(매월)</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
								</div>
								<div class="col-auto">
									<!--  <i class="fas fa-calendar fa-2x text-gray-300"></i> -->
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Earnings (Monthly) Card Example -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-success shadow h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-success text-uppercase mb-1">수입(연간)</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
								</div>
								<div class="col-auto">
									<!--  <i class="fas fa-dollar-sign fa-2x text-gray-300"></i> -->
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- Content Row -->

			<div class="row">

				<!-- Area Chart -->
				<div class="col-xl-8 col-lg-7">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary">1년 단위 월별 판매량</h6>
							<div class="dropdown no-arrow">
								<!--   <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a> -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">Dropdown Header:</div>
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<!-- Card Body -->
						<div class="card-body">
							<div class="chart-area">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="myChart"
									style="display: block; height: 320px; width: 1013px;"
									width="2026" height="640" class="chartjs-render-monitor"></canvas>
							</div>
						</div>
					</div>
				</div>

				<!-- Pie Chart -->
				<div class="col-xl-4 col-lg-5">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary"
								style="width: 300px;">상품 판매 품목 비율</h6>
							<div class="dropdown no-arrow">
								<!-- <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a> -->
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">Dropdown Header:</div>
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</div>
						</div>
						<!-- Card Body -->
						<div class="card-body">
							<div class="chart-pie pt-1 pb-2">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<!--  <div id="canvas-holder" style="width: 40%">
									<canvas id="chart-area"></canvas>
								</div> -->
								<canvas id="chart-area" width="15vw" height="12vw"
									class="chartjs-render-monitor"
									style="display: block; height: 245px; width: 474px;"></canvas>
							</div>
							<div class="mt-4 text-center small">
								<!-- <span class="mr-2"> <i class="fas fa-circle text-primary"></i>
									Direct
								</span> <span class="mr-2"> <i
									class="fas fa-circle text-success"></i> Social
								</span> <span class="mr-2"> <i class="fas fa-circle text-info"></i>
									Referral
								</span> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Content Row -->
			<div class="row">

				<!-- Content Column -->
				<div class="col-lg-6 mb-4">

					<!-- Project Card Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">작업진행도</h6>
						</div>
						<div class="card-body">
							<h4 class="small font-weight-bold">
								주문상태관리 <span class="float-right">40%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-warning" role="progressbar"
									style="width: 40%" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">
								환불/교환/반품 관리 <span class="float-right">60%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar" role="progressbar" style="width: 60%"
									aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">
								1:1문의 관리 <span class="float-right">80%</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-info" role="progressbar"
									style="width: 80%" aria-valuenow="80" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

						</div>
					</div>


				</div>

				<div class="col-lg-6 mb-4">

					<!-- Illustrations -->
					<!--  <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                  <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!</p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on unDraw →</a>
                </div>
              </div> -->

					<!-- Approach -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">카카오 프렌즈 관리자</h6>
						</div>
						<div class="card-body">
							<p>Management member</p>
							<p class="mb-0">김정은, 박하영, 차승연, 최윤정</p>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
</body>

</html>



