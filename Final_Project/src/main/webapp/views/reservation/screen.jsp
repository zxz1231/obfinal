<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/theme";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="<%=KPath%>/js/vendor/jquery-3.2.1.min.js"></script>
<style>


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

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
<!-- 헤더 로그인 버튼 색상 -->
<link rel="stylesheet" href="<%=KPath%>/css/color-variations.css">

<!-- Cusom css -->
<link rel="stylesheet" href="<%=KPath%>/css/custom.css">

<!-- Modernizer js -->
<script src="<%=KPath%>/js/vendor/modernizr-3.5.0.min.js"></script>

<!-- 체크박스 -->


<script>
    // html 이 다 로딩된 후 실행
    $(document).ready(function() {
        // 체크박스들이 변경됬을때
        $('[name="check_seat"]').change(function() {
        	
            var cnt = $("#person").val();
             
            // 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
            if( cnt==$('[name="check_seat"]:checked').length ) {
                $('[name="check_seat"]:not(:checked)').attr("disabled", true);
            }
            // 체크된 갯수가 다르면 활성화 시킴
            else {
                $('[name="check_seat"]').prop("disabled",false);
            }
        });
         
        // 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
        $("#person").change(function(){
            
            $('[name="check_seat"]').attr("disabled",false);
            $('[name="check_seat"]').prop("checked",false);
            $("#seat").empty();

        });
    });
    
    function seat(rowCol) {
		$.ajax({
			type : "POST",
			dataType : "json",
			url : "seat.do?rowCol=" + rowCol,
			success : function(data) {
				
				var str = data.toString();
				var row = str.substring(0, 1);
				var col = str.substring(1, 2);
				var rowCol = row + "/" + col
				
				console.log($("#seat").html());
				
				if($("#seat").html() == "") {
					alert("내용없음");
					$("#seat").html(rowCol);
				} else if ($("#seat").html() != "") {
					if($("#seat").html().indexOf(rowCol) == -1) {
						alert("내용없음");
						$("#seat").append(" " + rowCol);
					} else {
						alert("내용있음");
						alert($("#seat").html().indexOf(rowCol));
						alert($("#seat").html());
						$("#seat").html($("#seat").html().replace(rowCol, ''));
					}
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
		        alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
		    }
		})
    }
    
    function sendSeat(form) {  
    	form.action = "pay.do";
    	form.submit();
    }
    
</script>

</head>
<body>
	<!-- 메인 영역 -->
	<!-- Header 시작 -->
	<jsp:include page="../main/main-header.jsp"></jsp:include>
	<!-- //Header 끝 -->

	<div class="container" style="margin-top: 140px;">

		<div class="container"
			style="display: inline-block; text-align: center;">
			<div class='col-sm-3'>
				<img src="resources/img/영화.png" width="100">
			</div>
			<div class='col-sm-3'>
				<img src="resources/img/상영관.png" width="100">
			</div>
			<div class='col-sm-3'>
				<img src="resources/img/좌석.png" width="100">
			</div>
			<div class='col-sm-3'>
				<img src="resources/img/화살표.png" width="100">
			</div>
		</div>


		<form method="post">
			<div class="pricing-plan d-flex" style="height: 825px;">
				<div class="card set-price p-1 d-none d-lg-none d-lg-block">
					<div class="card-header text-center pb-4 item"
						style="width: 860px;">
						<h5 class="h1 card-title" style="color: black">인원/좌석선택</h5>

					</div>
					<div class="card-body d-flex flex-column" style="height: 573px;">
						<ul class="list-unstyled text-center">
							<li>
							<span>인원수 선택 </span> 
							<select id="person" style="width: 90px;">
									<option value="1">1명</option>
									<option value="2">2명</option>
									<option value="3">3명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
							</select>
							</li>
							<li style="margin-top: 30px; font-size: 2em; color: #9d7e4a;">
								${scheduleVO.time }:00
							</li>
							<li style="margin-top: 15px;">
								예매가능좌석 : <input type="button" name="check_seat" style="width: 12px;height: 12px;padding-right: 0px;padding-left: 0px; background-color: #007bff;"><br>
								예매불가좌석 : <input type="button" name="check_seat" style="width: 12px;height: 12px;padding-right: 0px;padding-left: 0px; background-color: #888;">					
							</li>
							<li>
								<div style="background-color: gray;color: black;font-weight: bold;margin-top: 20px;">SCREEN</div>
							</li>
							<li style="margin-top: 30px;"><c:forEach var="i" begin="1"
									end="${screenVO.getScr_seat_row()}" step="1">
									<span style="margin-right: 25px;">${i }</span>
									<tr>
										<c:forEach var="k" begin="1"
											end="${screenVO.getScr_seat_col()}" step="1">
											<td>
											<div class=" custom-checkbox custom-control-inline btn-group-toggle data-toggle='buttons'">
													<input type="checkbox"
													name="check_seat" id="${i }${k }" value="${i }${k }"
													class="custom-control-input" onclick="seat('${i }${k }');">  
													<label class="custom-control-label btn btn-primary ${i }${k }" for="${i }${k }" 
													style="padding-left: 0px;padding-right: 0px;padding-top: 0px;padding-bottom: 0px;width: 27px;height: 27px; margin-right: 10px;">${k }</label>
											</div>
											
											</td>
											<c:forEach var="reservationVO" items="${reservationList }">
												<c:set var="resRow" value="${reservationVO.getSeat_row() }" />
												<c:set var="resCol" value="${reservationVO.getSeat_col() }" />
												<c:if test="${i == resRow && k == resCol }">
													<script>
								    			var resRow = "${i }";
								    			var resCol = "${k }";
								    			
								    			$("#"+resRow+resCol).remove();
								    			$("."+resRow+resCol).attr('style', 'background-color:gray; padding-left: 0px;padding-right: 0px;padding-top: 0px;padding-bottom: 0px;width: 27px;height: 27px;');
									    	</script>
												</c:if>
											</c:forEach>
										</c:forEach>
										<br>
									</tr>
								</c:forEach></li>
						</ul>
					</div>
					<div class="card-footer d-flex flex-column" style="height: 146px;">

						<ul class="list-unstyled text-center">
							<li>
								<div class="active">
									<span id="moviePoster" style="float: left;"></span> <span
										id="movieDetail" style="font-weight: bold;"></span>
								</div>
							</li>


						</ul>
					</div>
				</div>

				<div class="w-100 d-md-none mt-4"></div>

				<div class="card advanced p-1">
					<div class="card-header text-center pb-4 item">
						<h5 class="h1 card-title" style="color: black">예매정보</h5>

					</div>
					<div class="card-body d-flex flex-column">
						<ul class="list-unstyled text-center">
							<li><div id="moviePoster"><img
									src="resources/movieimg/${movieVO.poster }" width="100"></div><br> <div id="movieDetail"
								style="font-weight: bold; color: black;">${movieVO.title }<br>${movieVO.director }
									<br>${movieVO.gnr }<br>${movieVO.runningtime }<br>
									<a href="movieDetail.do?m_id=' + m_id +'">상세보기</a></div></li>

							<li>
								<div id="theaterScreenTime" style="font-weight: bold; color: black;">
									<div class="active">
										<br> <span id="theater">극장  ${theaterVO.name }</span>
									</div>
									<div class="active">
										<span id="screen">상영관  ${screenVO.scr_name }</span>
									</div>
									<div class="active">
										<span id="time">시간  ${scheduleVO.time } : 00</span>
									</div>
									<div class="active">
										<span id="seat"></span>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="card-footer d-flex flex-column" style="height: 146px;">

						<ul class="list-unstyled text-center">
							<li>
								<div id="next">
									<input type="hidden" name="scr_id" value=${scheduleVO.scr_id }>
									<input type="hidden" name="m_id" value=${scheduleVO.m_id }>
									<input type="hidden" name="t_id" value=${scheduleVO.t_id }>
									<input type="hidden" name="time" value=${scheduleVO.time }>
									<input type="hidden" name="date" value=${scheduleVO.date }>
									<input type="button" value="결제하기" onclick="sendSeat(this.form)" class="cr-btn cr-btn-sm" style="margin-top: 30px;background-color: #f6644f;height: 58px;">
								</div>
							</li>


						</ul>
					</div>
				</div>

				<div class="w-100 d-md-none mt-4"></div>

			</div>
		</form>
	</div>
	<!-- Footer Area -->
	<jsp:include page="../main/main-footer.jsp"></jsp:include>
	<!-- //Footer Area -->

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



