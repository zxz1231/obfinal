<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/assets";
	String MovieIMGPath = contextPath + "/resources/movieimg";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Responsive Admin Dashboard Template">
<meta name="keywords" content="admin,dashboard">
<meta name="author" content="skcats">
<!-- The above 6 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>OBFINAL - 관리자 페이지</title>

<!-- Styles -->
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<link href="<%=KPath%>/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=KPath%>/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=KPath%>/plugins/icomoon/style.css" rel="stylesheet">
<link href="<%=KPath%>/plugins/uniform/css/default.css" rel="stylesheet" />
<link href="<%=KPath%>/plugins/switchery/switchery.min.css"
	rel="stylesheet" />
<link href="<%=KPath%>/plugins/datatables/css/jquery.datatables.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=KPath%>/plugins/datatables/css/jquery.datatables_themeroller.css"
	rel="stylesheet" type="text/css" />
<link href="<%=KPath%>/plugins/bootstrap-datepicker/css/datepicker3.css"
	rel="stylesheet" type="text/css" />

<!-- Theme Styles -->
<link href="<%=KPath%>/css/ecaps.min.css" rel="stylesheet">
<link href="<%=KPath%>/css/custom.css" rel="stylesheet">

</head>
<body>

	<!-- Page Container -->
	<div class="page-container">

		<!-- Header 시작 -->
		<jsp:include page="admin_Header.jsp"></jsp:include>
		<!-- //Header 끝 -->

		<div class="page-inner">
			<div class="page-title">
				<h3 class="breadcrumb-header">영화 리스트</h3>
			</div>
			<div id="main-wrapper">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-white">
							<div class="panel-heading clearfix">
								<h4 class="panel-title">전체 검색</h4>
							</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table id="example" class="display table"
										style="width: 100%; cellspacing: 0;">
										<thead>
											<tr>
												<th>번호</th>
												<th>포스터</th>
												<th>제목</th>
												<th>장르</th>
												<th>감독</th>
												<th>상영시간</th>
												<th>관람제한</th>
												<th>현재상영</th>
												<th>투표현황</th>
												<th>비고</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="movie" items="${movieList}">
												<tr>
													<td>${movie.m_id }</td>
													<td><img style="width: 60px; height: 100px"
														alt="${movie.poster}"
														src="<%=MovieIMGPath %>/${movie.poster}"></td>
													<td><a href="getMovieOne.do?m_id=${movie.m_id }">
															${movie.title } </a></td>
													<td>${movie.gnr }</td>
													<td>${movie.director}</td>
													<td>${movie.runningtime}</td>
													<td>${movie.restrict}</td>
													<td><c:choose>
															<c:when test="${movie.onair eq 1}">상영중 </c:when>
															<c:when test="${movie.onair eq 0}">상영종료 </c:when>
														</c:choose></td>
													<td>${movie.vote}</td>
													<td><input type="button" value="상세">
													<div>
															<input type="button" value="수정">
														</div>
														<input type="button" value="삭제"></td>
												</tr>










											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>



	</div>
	<!-- /Page Container -->


	<!-- Javascripts -->
	<script src="<%=KPath%>/plugins/jquery/jquery-3.1.0.min.js"></script>
	<script src="<%=KPath%>/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=KPath%>/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="<%=KPath%>/plugins/uniform/js/jquery.uniform.standalone.js"></script>
	<script src="<%=KPath%>/plugins/switchery/switchery.min.js"></script>
	<script src="<%=KPath%>/plugins/datatables/js/jquery.datatables.min.js"></script>
	<script
		src="<%=KPath%>/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="<%=KPath%>/js/ecaps.min.js"></script>
	<script src="<%=KPath%>/js/pages/table-data.js"></script>
</body>
</html>