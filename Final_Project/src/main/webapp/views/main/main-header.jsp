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

<!-- 로그인 메인 css -->
<link rel="stylesheet"
	href="<%=contextPath%>/resources/addcss/login_main.css">

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
								<a href="<%=contextPath%>/mainGO.do"> <img
									src="<%=KPath%>/images/logo/logo-secondary-light.png"
									alt="logo secondary dark">
								</a>
							</div>
							<nav class="menu">
								<ul>
									<li class="cr-dropdown"><a href="index.html">영화/예매</a>
										<ul>
											<li><a href="index.html">현재상영작</a></li>
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
							<c:if test="${empty Logininformation}">
								<button
									onclick="document.getElementById('id01').style.display='block'"
									style="width: auto;" class="cr-btn cr-btn-sm">
									<span>로그인</span>
								</button>
							</c:if>
							<c:if test="${not empty Logininformation}">
							<nav class="menu">
								<ul>
								<li class="cr-dropdown">${Logininformation.name} 님 환영합니다.
									<ul>
										<li><a href="<%=contextPath%>/logOUT.do">로그아웃</a></li>
										<li><a href="contact-us-2.html">내정보보기</a></li>
									</ul>

								</li>
								</ul>
								</nav>
							</c:if>


						</div>
					</div>
				</div>
			</div>

			<!-- 로그인 modal 시작 (login폴더에 login_modal.jsp을 포함시킴)-->
			<jsp:include page="../login/login_modal.jsp"></jsp:include>
			<!-- 로그인 modal 끝 -->



		</header>
		<!-- //Header -->

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