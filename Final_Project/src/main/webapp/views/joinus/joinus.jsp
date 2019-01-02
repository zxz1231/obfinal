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
<<<<<<< HEAD
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		// 회원 가입 처리
		$('#join-submit')
				.click(
						function(e) {
							e.preventDefault();
							if ($("#inputName").val() == '') {
								alert('이름을 입력하세요');
								$("#inputName").focus();
								return false;
							}

							var email = $('#InputEmail').val();
							if (email == '') {
								alert('이메일을 입력하세요');
								$("#InputEmail").focus();
								return false;
							} else {
								var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
								if (!emailRegex.test(email)) {
									alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
									$("#inputEmail").focus();
									return false;
								}
							}

							if ($("#inputPassword").val() == '') {
								alert('비밀번호를 입력하세요');
								$("#inputPassword").focus();
								return false;
							}

							if ($("#inputPasswordCheck").val() == '') {
								alert('비밀번호를 다시 한번 더 입력하세요');
								$("#inputPasswordCheck").focus();
								return false;
							}

							if ($("#inputPassword").val() !== $(
									"#inputPasswordCheck").val()) {
								alert('비밀번호를 둘다 동일하게 입력하세요');
								return false;
							}

							if ($("#inputMobile").val() == '') {
								alert('휴대폰 번호를 입력하세요');
								$("#inputMobile").focus();
								return false;
							}

							if ($("#agree").is(":checked") == false) {
								alert('약관에 동의하셔야 합니다');
								return false;
							}

							$.ajax({
										url : 'register.php',
										type : 'POST',
										data : {
											name : $("#inputName").val(),
											userID : $('#InputEmail').val(),
											email : $('#InputEmail').val(),
											password : $('#inputPassword')
													.val(),
											telNO : $("#inputtelNO").val(),
											mobileNO : $("#inputMobile").val()
										},
										dataType : "json",
										success : function(response) {
											if (response.result == 1) {
												alert('가입 완료');
												location
														.replace('../index.php'); // 화면 갱신
											} else if (response.result == 0) {
												alert('이미 가입된 아이디입니다');
											} else if (response.result == -2) {
												alert('입력된 값이 없습니다');
											} else {
												alert('등록중에 에러가 발생했습니다');
											}
										},
										error : function(jqXHR, textStatus,
												errorThrown) {
											alert("arjax error : " + textStatus
													+ "\n" + errorThrown);
										}
									});

						});

	});
</script>
=======
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script type="text/javascript">
$(function() {
	$('#idcheck').click(function(){ 
	  alert("중복체크 버튼이 눌렸습니다.");
	  $("#idcheckok").val("ok")
	  var id = $("#id").val();
	  if(id == ''){
		  alert("아이디를 입력후 중복체크를 눌러주세요.")
		  $("#id").focus();
			return false;
	  }
	  alert("입력한 아이디: "+id);	  
	  
	  $.ajax({
		  url:"<%=contextPath%>/idchk.do",
			type:"post",
			data : {'id':id},
			dataType:"text",
			success: function(result){
				alert(result);
				if(result == "0"){
					alert("사용가능");
					$("#idcheckmsg")
					.html(
							"<div style='color: blue;'><b>사용가능</b></div>");
							} else if (result == "1") {
								alert("현재 사용중인 아이디입니다 다시 입력해주세요.");
								$("#idcheckok").val("no");
								$("#idcheckmsg")
										.html(
												"<div style='color: red;'><b>사용불가</b></div>");
							}
							else if (result =="2"){
								alert("다른 오류 입니다.")
							}

						}
					});
	});
	
	// 회원 가입 처리
	$('#sendgo')
			.click(
					function(e) {
						
						e.preventDefault();
						if ($("#id").val() == '') {
							alert('아이디를 입력해주세요');
							$("#id").focus();
							return false;
						}
						

						if ($("#password").val() == '') {
							alert('비밀번호를 입력하세요');
							$("#password").focus();
							return false;
						}

						if ($("#passwordCHK").val() == '') {
							alert('비밀번호를 다시 한번 더 입력하세요');
							$("#passwordCHK").focus();
							return false;
						}

						if ($("#password").val() !== $(
								"#passwordCHK").val()) {
							alert('비밀번호를 둘다 동일하게 입력하세요');
							return false;
						}
						if ($("#name").val() == '') {
							alert('이름을 입력해주세요');
							$("#name").focus();
							return false;
						}
						if ($("#birth").val() == '') {
							alert('생년월일을 입력하세요');
							$("#birth").focus();
							return false;
						}

						if ($("#phone").val() == '') {
							alert('휴대폰 번호를 입력하세요');
							$("#phone").focus();
							return false;
						}				
						
						var email = $('#email').val();
						if (email == '') {
							alert('이메일을 입력하세요');
							$("#email").focus();
							return false;
						} else {
							var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
							if (!emailRegex.test(email)) {
								alert('이메일 주소가 유효하지 않습니다. ex)abc@gmail.com');
								$("#email").focus();
								return false;
							}
						}
						if ($("#idcheckok").val() == 'no') {
							alert('아이디 중복 버튼 체크를 입력하세요');
							return false;
						}				
						
				
						$.ajax({
							url:"<%=contextPath%>/signUP.do",
							type:"post",
							   data : {id: $("#id").val(), password: $("#password").val(), name: $("#name").val(), birth: $("#birth").val(),phone:$("#phone").val(),email:$("#email").val()} ,
							dataType:"text",
							success: function(result){
								alert(result);
								if(result == "success"){
									alert("회원가입 되었습니다.");
									location
									.replace("<%=contextPath%>/mainGO.do");
												return false;
											}

										}
									});
						
						

						});

	});
</script>


>>>>>>> refs/remotes/origin/master
</head>

<body>


	<!-- Add your site or application content here -->


	<!-- 메인 영역 -->
	<div class="wrapper" id="wrapper">

		<!-- Header -->
		<jsp:include page="../main/main-header.jsp"></jsp:include>
		<!-- //Header -->

		<!--메인 영역 Content -->
		<main class="page-content"> <!-- Counter Area --> <!-- 추천 영화 섹션 시작 -->
		<section class="services-area section-padding-lg bg-grey">
			<div class="container">
				<div class="row">

					<!-- ///////////////////////////////// 여기부터 채우면됨 -->
<<<<<<< HEAD
					<article class="container">
						<div class="page-header">
							<div class="col-md-6 col-md-offset-3">
								<h3>회원가입 Form</h3>
							</div>
						</div>
						<div class="col-sm-6 col-md-offset-3">
							<form role="form">
								<div class="form-group">
									<label for="inputName">성명</label> <input type="text"
										class="form-control" id="inputName" placeholder="이름을 입력해 주세요">
								</div>
								<div class="form-group">
									<label for="InputEmail">이메일 주소</label> <input type="email"
										class="form-control" id="InputEmail"
										placeholder="이메일 주소를 입력해주세요">
								</div>
								<div class="form-group">
									<label for="inputPassword">비밀번호</label> <input type="password"
										class="form-control" id="inputPassword"
										placeholder="비밀번호를 입력해주세요">
								</div>
								<div class="form-group">
									<label for="inputPasswordCheck">비밀번호 확인</label> <input
										type="password" class="form-control" id="inputPasswordCheck"
										placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
								</div>
								<div class="form-group">
									<label for="inputMobile">휴대폰 번호</label> <input type="tel"
										class="form-control" id="inputMobile"
										placeholder="휴대폰번호를 입력해 주세요">
								</div>
								<div class="form-group">
									<label for="inputtelNO">사무실 번호</label> <input type="tel"
										class="form-control" id="inputtelNO"
										placeholder="사무실번호를 입력해 주세요">
								</div>
=======
					<div class="col-md-12">
						<div class="pg-contact-form mr-0 mr-lg-3">
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD
								<div class="form-group">
									<label>약관 동의</label>
									<div data-toggle="buttons">
										<label class="btn btn-primary active"> <span
											class="fa fa-check"></span> <input id="agree" type="checkbox"
											autocomplete="off" checked>
										</label> <a href="#">이용약관</a>에 동의합니다.
									</div>
								</div>
=======
							<form id="contact-form" name="signupform" method="post">
								<fieldset>
									<legend>회원가입</legend>
									<div class="row">
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD
								<div class="form-group text-center">
									<button type="submit" id="join-submit" class="btn btn-primary">
										회원가입<i class="fa fa-check spaceLeft"></i>
									</button>
									<button type="submit" class="btn btn-warning">
										가입취소<i class="fa fa-times spaceLeft"></i>
									</button>
								</div>
							</form>
						</div>
=======
										<div class="col-md-3">
											아이디<input type="text" name="id" placeholder="입력해주세요" id="id">
										</div>
										<div class="col-md-2">
											<div>
												<button type="button" id="idcheck">중복확인</button>
											</div>
											<div id="idcheckmsg"></div>
											<input type="hidden" id="idcheckok" value="no">
										</div>
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD
					</article>
=======
									</div>
									<div class="row">
>>>>>>> refs/remotes/origin/master

										<div class="col-md-3">
											비밀번호<input type="password" name="password" id="password">
										</div>

									</div>
									<div class="row">

										<div class="col-md-3">
											비밀번호확인<input type="password" name="passwordCHK"
												id="passwordCHK">
										</div>
									</div>
									<div class="row">

										<div class="col-md-3">
											이름 <input type="text" name="name" placeholder="입력해주세요"
												id="name">
										</div>
									</div>
									<div class="row">

										<div class="col-md-3">
											생년월일 <input type="date" name="birth" id="birth"placeholder="ex)2000-01-01">
										</div>

									</div>
									<div class="row">

										<div class="col-md-3">
											핸드폰 <input type="text" name="phone"
												placeholder="ex)010-0000-0000" id="phone">
										</div>
									</div>
									<div class="row">

										<div class="col-md-4">
											이메일 <input type="email" name="email" placeholder="입력해주세요"
												id="email">
										</div>
									</div>

									<div class="col-lg-3">
										<div class="single-input">
											<button class="cr-btn" type="button" id="sendgo">
												<span>가입신청</span>
											</button>
										</div>
									</div>
								</fieldset>
							</form>
						</div>
					</div>










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