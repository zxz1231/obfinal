<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/theme";
%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>OB 영화관</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicons -->
<link rel="shortcut icon" href="<%=KPath%>/images/favicon.ico">
<link rel="apple-touch-icon" href="<%=KPath%>/images/icon.png">

<!-- Google font (font-family: 'Roboto', sans-serif;) -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<!-- Google font (font-family: 'Roboto Condensed', sans-serif;) -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="<%=KPath%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=KPath%>/css/plugins.css">
<link rel="stylesheet" href="<%=KPath%>/style.css">

<!-- Color Variations -->
<link rel="stylesheet" href="<%=KPath%>/css/color-variations.css">

<!-- Cusom css -->

<link rel="stylesheet" href="<%=KPath%>/css/custom.css">

<!-- Modernizer js -->
<script src="<%=KPath%>/js/vendor/modernizr-3.5.0.min.js"></script>



</head>

<body>
	<!-- Add your site or application content here -->
	<!-- 메인 영역 -->
	<div class="wrapper" id="wrapper">
		<!-- Header 시작 -->
		<jsp:include page="main-header.jsp"></jsp:include>
		<!-- //Header 끝 -->

		<!-- Top Banner -->
		<div
			class="banner-area banner-slider-active-with-navigation animated-slider-content-2 cr-slider-navigation-1 squre-navigation">

			<!-- Single Banner -->
			<div class="single-banner bg-image-12 fullscreen bg-pos-bottom"
				data-black-overlay="5">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
							<div class="single-banner-content text-center">
								<h4 class="font-extra-large text-uppercase">영화제목1</h4>
								<p>간단한 설명을 쓴후 ?? 내용은 아무거나하하하핳하 채워 넣어라</p>
								<a href="about-us.html"
									class="cr-btn cr-btn-lg cr-btn-transparent"> <span>예매하기</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--// Single Banner -->

			<!-- Single Banner -->
			<div class="single-banner bg-image-12 fullscreen bg-pos-bottom"
				data-black-overlay="5">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
							<div class="single-banner-content text-center">
								<h4 class="font-extra-large text-uppercase">영화제목2</h4>
								<p>간단한 설명을 쓴후 ?? !@#!@#내용은 아무거나하하하핳하 채워 넣어라</p>
								<a href="about-us.html"
									class="cr-btn cr-btn-lg cr-btn-transparent"> <span>예매하기</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--// Single Banner -->


			<!-- Single Banner -->
			<div class="single-banner bg-image-12 fullscreen bg-pos-bottom"
				data-black-overlay="5">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
							<div class="single-banner-content text-center">
								<h4 class="font-extra-large text-uppercase">영화제목3</h4>
								<p>간단한 설명을 쓴후 ?? zxczxc내용은 아무거나하하하핳하 채워 넣어라</p>
								<a href="about-us.html"
									class="cr-btn cr-btn-lg cr-btn-transparent"> <span>예매하기</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--// Single Banner -->


		</div>
		<!-- //top Banner 영화슬라이드까지 끝 -->

		<!--메인 영역 Content -->
		<main class="page-content"> <!-- Counter Area --> <!-- 추천 영화 섹션 시작 -->
		<section class="services-area section-padding-lg bg-grey">
			<div class="container">

				<div class="row">
					<div
						class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
						<div class="section-title text-center">
							<h2>추천 영화</h2>
							<p>감성 충만 오래된 영화를 지금 바로 느끼세요</p>
						</div>
					</div>
				</div>

				<div
					class="row justify-content-center service-slider-active cr-slider-dots-1">

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-12">
						<div class="service service-style-4 text-center">
							<div class="service-image">
								<img src="<%=KPath%>/images/service/service-thumb-7.jpg"
									alt="Service Thumb">
							</div>
							<div class="service-content">
								<h5>
									<a href="service-details.html">감성 영화1</a>
								</h5>
								<p>아주 오래전에 눈물 질질 흘린 영화</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-12">
						<div class="service service-style-4 text-center">
							<div class="service-image">
								<img src="<%=KPath%>/images/service/service-thumb-8.jpg"
									alt="Service Thumb">
							</div>
							<div class="service-content">
								<h5>
									<a href="service-details.html">감동 영화2</a>
								</h5>
								<p>아 빨리 내용 채워라 한정택!</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-12">
						<div class="service service-style-4 text-center">
							<div class="service-image">
								<img src="<%=KPath%>/images/service/service-thumb-12.jpg"
									alt="Service Thumb">
							</div>
							<div class="service-content">
								<h5>
									<a href="service-details.html">감동 영화3</a>
								</h5>
								<p>너무 슬퍼 미쳐 돌아간다 이런;</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-12">
						<div class="service service-style-4 text-center">
							<div class="service-image">
								<img src="<%=KPath%>/images/service/service-thumb-9.jpg"
									alt="Service Thumb">
							</div>
							<div class="service-content">
								<h5>
									<a href="service-details.html">감동 영화4</a>
								</h5>
								<p>지금 다시 볼 수 있음 ??</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

				</div>

			</div>
		</section>
		<!-- 추천 영화 섹션 끝 --> <!-- 금주의 영화 섹션 시작 -->

		<section class="portfolio-area section-padding-top-lg bg-white">
			<div class="container">
				<div class="row">
					<div
						class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
						<div class="section-title text-center">
							<h2>금주의 영화</h2>
							<p>금주의 영화 설명 !@#!@#!@$!@#!@$!$@!</p>
						</div>
					</div>
				</div>
			</div>

			<div class="portfolio-wrap">

				<!-- Portfolios -->
				<div
					class="row no-gutters portfolios portfolios-slider-active cr-slider-navigation-2">

					<!-- Single Portfolio -->
					<div class="portfolio-single">
						<div class="portfolio">
							<div class="portfoilo-thumb">
								<img
									src="<%=KPath%>/images/portfolio/layout-4/portfolio-thumb-1.jpg"
									alt="portfolio thumb">
							</div>
							<div class="portfolio-content">
								<div class="portfolio-content-inner text-center">
									<h6>제목1</h6>
									<h3>
										<a href="single-portfolio.html">상세보기</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--// Single Portfolio -->

					<!-- Single Portfolio -->
					<div class="portfolio-single">
						<div class="portfolio">
							<div class="portfoilo-thumb">
								<img
									src="<%=KPath%>/images/portfolio/layout-4/portfolio-thumb-2.jpg"
									alt="portfolio thumb">
							</div>
							<div class="portfolio-content">
								<div class="portfolio-content-inner text-center">
									<h6>제목2</h6>
									<h3>
										<a href="single-portfolio.html">상세보기</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--// Single Portfolio -->

					<!-- Single Portfolio -->
					<div class="portfolio-single">
						<div class="portfolio">
							<div class="portfoilo-thumb">
								<img
									src="<%=KPath%>/images/portfolio/layout-4/portfolio-thumb-3.jpg"
									alt="portfolio thumb">
							</div>
							<div class="portfolio-content">
								<div class="portfolio-content-inner text-center">
									<h6>제목3</h6>
									<h3>
										<a href="single-portfolio.html">상세보기</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--// Single Portfolio -->

					<!-- Single Portfolio -->
					<div class="portfolio-single">
						<div class="portfolio">
							<div class="portfoilo-thumb">
								<img
									src="<%=KPath%>/images/portfolio/layout-4/portfolio-thumb-4.jpg"
									alt="portfolio thumb">
							</div>
							<div class="portfolio-content">
								<div class="portfolio-content-inner text-center">
									<h6>제목4</h6>
									<h3>
										<a href="single-portfolio.html">상세보기</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--// Single Portfolio -->

					<!-- Single Portfolio -->
					<div class="portfolio-single">
						<div class="portfolio">
							<div class="portfoilo-thumb">
								<img
									src="<%=KPath%>/images/portfolio/layout-4/portfolio-thumb-5.jpg"
									alt="portfolio thumb">
							</div>
							<div class="portfolio-content">
								<div class="portfolio-content-inner text-center">
									<h6>제목5</h6>
									<h3>
										<a href="single-portfolio.html">상세보기</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
					<!--// Single Portfolio -->
				</div>
				<!--// Portfolios -->
			</div>
		</section>
		<!--// 금주의 영화  끝-->
		<div class="counter-area section-padding-md bg-white">
			<div class="container">

				<div class="row">
					<div
						class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
						<div class="section-title text-center">
							<h2>공지사항?? 그냥 하나 만들어둠</h2>
							<p>동해물과 백두산이 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~` 아 춥다 집에가고싶다</p>
						</div>
					</div>
				</div>


			</div>
		</div>

		<!-- Features Area -->
		<section
			class="features-area section-padding-top-xs section-padding-bottom-sm bg-grey">
			<div class="container">
				<div class="row justify-content-center services-grid">

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-12">
						<div class="service text-center">
							<div class="service-icon">
								<span> <i class="bi bi-color-plate"></i>
								</span> <span> <i class="bi bi-color-plate"></i>
								</span>
							</div>
							<div class="service-content">
								<h4>친절</h4>
								<p>There are many variations of passages of Lorem Ipsum, but
									the majority</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-12">
						<div class="service text-center">
							<div class="service-icon">
								<span> <i class="bi bi-support"></i>
								</span> <span> <i class="bi bi-support"></i>
								</span>
							</div>
							<div class="service-content">
								<h4>감동</h4>
								<p>There are many variations of passages of Lorem Ipsum, but
									the majority</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

					<!-- Signle Service -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-12">
						<div class="service text-center">
							<div class="service-icon">
								<span> <i class="bi bi-rocket2"></i>
								</span> <span> <i class="bi bi-rocket2"></i>
								</span>
							</div>
							<div class="service-content">
								<h4>행복</h4>
								<p>There are many variations of passages of Lorem Ipsum, but
									the majority</p>
							</div>
						</div>
					</div>
					<!--// Signle Service -->

				</div>
			</div>
		</section>
		<!--// Features Area --> </main>
		<!-- //메인 끝 -->

		<!-- Footer Area -->
		<jsp:include page="main-footer.jsp"></jsp:include>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="<%=KPath%>/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="<%=KPath%>/js/popper.min.js"></script>
	<script src="<%=KPath%>/js/bootstrap.min.js"></script>
	<script src="<%=KPath%>/js/plugins.js"></script>
	<script src="<%=KPath%>/js/active.js"></script>
	<script src="<%=KPath%>/js/scripts.js"></script>

	<!-- 추가 : 로그인 modal JS File -->
	<script src="<%=contextPath%>/resources/addjs/login.js"></script>
</body>

</html>