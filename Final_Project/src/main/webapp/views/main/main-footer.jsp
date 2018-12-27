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

	<!-- 추가 : 로그인 modal JS File -->
	<script src="<%=contextPath%>/resources/addjs/login.js"></script>
</body>

</html>