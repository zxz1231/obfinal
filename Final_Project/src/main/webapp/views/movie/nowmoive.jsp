<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/theme";
	String MovieIMGPath = contextPath + "/resources/movieimg";
	String IMGPath = contextPath + "/resources/img";
%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>현재 상영작</title>
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

<!-- Custom css -->
<link rel="stylesheet" href="<%=KPath%>/css/custom.css">

<!-- Modernizer js -->
<script src="<%=KPath%>/js/vendor/modernizr-3.5.0.min.js"></script>



</head>

<body>


	<!-- Add your site or application content here -->


	<!-- 메인 영역 -->
	<div class="wrapper" id="wrapper">

		<!-- Header -->
		<jsp:include page="../main/main-header.jsp"></jsp:include>
		<!-- //Header -->

		<!-- Page Content -->
		<main class="page-content"> <!-- Portfolio Area -->
		<section class="portfolio-area section-padding-lg bg-white">
			<div class="container">
				<div class="row">
					<div
						class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-12 offset-0">
						<div class="section-title text-center">
							<h4>상영중 영화</h4>
						</div>
					</div>
				</div>
			</div>
			
			<div class="container">

			<div class="portfolio-wrap">
				<!-- Poftfolio Filters -->
				<div class="portfolio-filters" style="float: left;">
					<span><button class="is-checked" data-filter="*">ALL</button></span>
					<c:forEach var="gnridx" items="${gnrList}">
						<span><button data-filter=".pfolio-filter-${gnridx.gnr }">${gnridx.gnr}</button></span>
					</c:forEach>
				</div>
				<!--// Poftfolio Filters -->


					<!-- Portfolios -->
					<div class="row no-gutters portfolios portfolios-style-1"
						style="height: 900px; width: 700px;" data-show="6" data-load="3">

						<c:forEach var="movieidx" items="${movieList}">
							<c:if test="${not empty movieidx.poster}">

								<!-- Single Portfolio -->
								<div
									class="col-xl-4 col-lg-6 col-md-6 col-12 portfolio-single pfolio-filter-now pfolio-filter-${movieidx.gnr}">
									<div class="portfolio">
										<div class="portfoilo-thumb">
											<img src="<%=MovieIMGPath %>/${movieidx.poster}"
												alt="${moiceidx.title}">
										</div>
										<div class="portfolio-content" style="opacity: 0.9;">
											<div class="portfolio-content-inner text-center">
												<h6>${movieidx.title}</h6>
												<hr>
												<h3>		
													<a href="../biz/movieDetail.do?m_id=${movieidx.m_id}"><img alt="예매하기"
														src="<%=IMGPath%>/예매.png"></a>
												</h3>
											</div>
										</div>
									</div>
								</div>
								<!--// Single Portfolio -->
							</c:if>
						</c:forEach>


					</div>
					<!--// Portfolios -->







				<div class="portfolio-load-more-button text-center">
					<button class="load-more-toggle cr-btn cr-btn" style="width: 150px;" >
						<span>더 보기</span>
					</button>
				</div>
			</div>
			</div>


		</section>
		<!--// Portfolio Area --> </main>
		<!--// Page Content -->




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


		<!-- //메인 끝 -->

		<!-- Footer Area -->
		<jsp:include page="../main/main-footer.jsp"></jsp:include>
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