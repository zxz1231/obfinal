<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Karbar - Multipurpose Bootstrap 4 Template</title>
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

<link rel="stylesheet" href="<%=KPath%>/css/color-variations.css">

<!-- Cusom css -->
<link rel="stylesheet" href="<%=KPath%>/css/custom.css">

<script src="<%=KPath%>/js/vendor/jquery-3.2.1.min.js"></script>

<!-- Modernizer js -->
<title>Insert title here</title>
<script>
// function idChk(){
// 	alert("idChk실행 - Logininformaion : " + "${Logininformaion}");
// 	if("${Logininformaion}" != null) {
// 		return 1;
// 	} else {
// 		return 0;
// 	}
// }
//  function res(m_id){
//  	console.log("${Logininformation}");
//  	alert("${Logininformation}");
//  	alert("${Logininformation.u_id}");
 	
//  	var u_id = "${Logininformation.u_id}";
//  	if(u_id != ""){
//  		alert("아이디있음");
//   		location.href="movieRes.do";
//   	} else {
//   		alert("아이디없음");
//   		document.getElementById("id01").style="display:block";
// 	} 
// }

</script>
</head>
<body>

	<!-- Add your site or application content here -->



	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
	
			<!-- Header -->
		 <jsp:include page="../main/main-header.jsp"></jsp:include> 
		<!-- //Header -->


		<!-- Page Content -->
		<main class="page-content"> <!-- Service Details -->
		<div class="pg-service-area section-padding-lg bg-white">
			<div class="container" style="margin-top: 50px;">
				<div class="row">
					<div class="col-lg-12">
						<h2 class="pg-service-title">${movieOne.title }</h2>
					</div>
					<div class="col-lg-7">
						<div class="pg-service-thumbs">
							<img src="/resources/movieimg/${movieOne.poster }" alt="service thumb" style="width: 500px; height: 650px">
						</div>
					</div>
					<div class="col-lg-5">
						<div class="pg-service-details">
							<div class="small-title">
								<h4>작품소개</h4>
							</div>
							<p>${movieOne.content }</p>
						</div>
						<div class="pg-service-description">
							<div class="small-title">
								<h4>상세정보</h4>
							</div>
							<ul>
								<li>감독 : <span>${movieOne.director }</span>
								</li>
								<li>장르 : <span>${movieOne.gnr }</span>
								</li>
								<li>상영시간 : <span> ${movieOne.runningtime } </span>
								</li>
								<li>등급 : <span> ${movieOne.restrict } </span>
								</li>
							</ul>
							<div>			
<%-- 								<a href="#" onclick="res(${movieOne.m_id })" class="cr-btn cr-btn-sm"  --%>
<!-- 								style="background-color: #f6644f; float: right">예매</a> -->
							</div>
						</div>
					</div>
				</div>
				<div class="container related-services">
					<div class="row">
						<div class="col-lg-12">
							<div class="small-title">
								<h4>스틸컷</h4>
							</div>
						</div>
						<!-- Signle Service -->
						<div class="col-lg-4 col-md-6 col-12">
							<div class="service service-style-4 text-center">
								<div class="service-image">
									<img src="<%=MovieIMGPath %>/${movieOne.img1 }"
										alt="service thumb">
								</div>
							</div>
						</div>
						<!--// Signle Service -->

						<!-- Signle Service -->
						<div class="col-lg-4 col-md-6 col-12">
							<div class="service service-style-4 text-center">
								<div class="service-image">
									<img src="<%=MovieIMGPath %>/${movieOne.img2 }"
										alt="service thumb">
								</div>
							</div>
						</div>
						<!--// Signle Service -->

						<!-- Signle Service -->
						<div class="col-lg-4 col-md-6 col-12">
							<div class="service service-style-4 text-center">
								<div class="service-image">
									<img src="<%=MovieIMGPath %>/${movieOne.img3 }"
										alt="service thumb">
								</div>
							</div>
						</div>
						<!--// Signle Service -->
					</div>
				</div>
			</div>
		</div>
			<!--// Service Details -->
		</main>
		<!--// Page Content -->
		
				<!-- Footer Area -->
		<jsp:include page="../main/main-footer.jsp"></jsp:include>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->


</body>
</html>