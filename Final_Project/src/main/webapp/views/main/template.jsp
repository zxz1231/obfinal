<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>탬플릿</title>
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

		<!-- Header -->
		<header
			class="header header-style-1 transparent-header sticky-header megamenu-container"
			data-black-overlay="10">

			<div class="container d-none d-lg-block">
				<div class="row">
					<div class="col-lg-12">
						<div class="header-inner">
							<div class="logo">
								<a href="main.jsp"> <img
									src="<%=KPath%>/images/logo/logo-secondary-light.png"
									alt="logo secondary dark">
								</a>
							</div>
							<nav class="menu">
								<ul>
									<li class="cr-dropdown"><a href="index.html">영화/예매</a>
										<ul>
											<li><a href="index.html">현재상영작</a></li>
											<li><a href="index-corporate-agency.html">상영예정작</a></li>
											<li><a href="index-creative-studio.html">상영예정작</a></li>
											<li><a href="index-marketing-agency.html">상영시간표</a></li>
											<li><a href="index-creative-agency.html">(관람가이드)</a></li>
										</ul></li>
									<li class="cr-dropdown"><a href="about-us.html">극장</a>
										<ul>
											<li><a href="about-us.html">A</a></li>
											<li><a href="about-us-2.html">B</a></li>
											<li><a href="about-us-3.html">C</a></li>
										</ul></li>

									<li class="cr-dropdown"><a href="about-us.html">즐기기</a>
										<ul>
											<li><a href="about-us-2.html">이벤트</a></li>
											<li><a href="about-us-3.html">영화추천</a></li>
										</ul></li>

									<li class="cr-dropdown"><a href="about-us.html">명예의 전당</a>
										<ul>
											<li><a href="about-us.html">A</a></li>
											<li><a href="about-us-2.html">B</a></li>
											<li><a href="about-us-3.html">C</a></li>
										</ul></li>


									<li class="cr-dropdown"><a href="contact-us.html">고객센터</a>
										<ul>
											<li><a href="contact-us.html">공지사항</a></li>
											<li><a href="contact-us-2.html">문의사항</a></li>
											<li><a href="contact-us-3.html">뭐쓸까?</a></li>
											<li><a href="contact-us-4.html">모행?</a></li>
										</ul></li>

									<!--   -->
								</ul>
							</nav>
							<a href="#" class="cr-btn cr-btn-sm"> <span>로그인</span>
							</a>
						</div>
					</div>
				</div>
			</div>


		</header>
		<!-- //Header -->
		<!--메인 영역 Content -->
		<main class="page-content"> <!-- Counter Area --> <!-- 추천 영화 섹션 시작 -->
		<section class="services-area section-padding-lg bg-grey">
			<div class="container">
				<div class="row">
				<!-- ///////////////////////////////// 여기부터 채우면됨 -->
				내용채우는곳
					
					
					
					
					
				
					
					
		
					
					
					
					
					
					
					
					
					
					
					
					
					
					<!-- ///////////////////////////////// 여기부터 채우면끝 -->
				</div>
			</div>
		</section>
		
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
		
		
		</main>
		<!-- //메인 끝 -->

		<!-- Footer Area -->
		<footer id="footer" class="footer-area">


			<!-- Footer Bottom Area -->
			<div class="footer-bottom-area bg-dark">
				<div class="container">
					<div class="row">
						<div class="col-lg-8">
							<ul class="footer-social">
								<li><a href="https://www.facebook.com/">Facebook</a></li>
								<li><a href="https://twitter.com/">Twitter</a></li>
								<li><a href="https://plus.google.com/">Google+</a></li>
								<li><a href="https://www.linkedin.com/">Linkedin</a></li>
								<li><a href="https://www.behance.net/">Behance</a></li>
							</ul>
						</div>
						<div class="col-lg-4">
							<p class="footer-copyright">
								Copyright &copy; <a href="#">Themes-Hub</a> 2018. All Right
								Reserved
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--// Footer Bottom Area -->

		</footer>
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
</body>

</html>