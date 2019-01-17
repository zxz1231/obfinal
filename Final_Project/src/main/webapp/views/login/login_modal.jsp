<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	// 경로 /biz 부터 시작  [http://localhost:8080/biz/ @@.do 요청 하기 위해]
	String contextPath = request.getContextPath();
	// theme 까지 들어온 경로 
	String KPath = contextPath + "/resources/theme";
	String BPath = contextPath + "/resources/img";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modalk1 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 30px;
}

/* Modal Content/Box */
.modalk1-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}
@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
function login(frm){
	var commentData=$("form[name=chk]").serialize();
	$.ajax({
		url:"<%=contextPath%>/loginchk.do",
		type:"post",
		data:commentData,
		dataType:"text",
		success: function(result){
			alert(result);
			if(result == "success"){
				alert("로그인 되었습니다.");
				frm.action = "<%=contextPath%>/mainGO.do?pageType=main";
<%-- 				frm.action = "<%=contextPath%>/mainGO.do?pageType=${pageType}"; --%>
<%-- 				frm.action = "<%=contextPath%>/mainGO.do?pageType=${pageType}"; --%>
/* frm.action = "/mainGO.do"; */
				window.location.reload();
				//			frm.submit();
				//			return false;
						} else if (result == "fail") {
							alert("아이디비밀번호를 확인해 주세요");
							frm.id.value = "";
							frm.password.value = "";
							frm.id.focus();

							$("#msg")
									.html(
											"<div style='color: red;'><b>아이디 비밀번호를 확인해 주세요.</b></div>");
						}

					}
				});
	}
</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="id01" class="modalk1">

		<form class="modalk1-content animate" method="post" name="chk">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>

			<div class="container">
				<label for="uname"><b>아이디</b></label> <input type="text"
					placeholder="Enter Username" name="id" required> <label
					for="psw"><b>비밀번호</b></label> <input type="password"
					placeholder="Enter Password" name="password" required>

				<button type="button" class="cr-btn cr-btn-sm"
					onclick="login(this.form)">Login</button>
				<div id="msg"></div>


			</div>
			<div class="container">

				<br> <a id="navergogo" href="/navergo.do"><img alt="네이버"
					src="<%=BPath%>/네이버버튼.png"></a> <a
					href="https://kauth.kakao.com/oauth/authorize?client_id=2609b2266d44516fd921046db0f62d8d&redirect_uri=http://localhost:8080/kakaologin.do&response_type=code">
					<img alt="카카오" src="<%=BPath%>/카카오버튼.png">
				</a>



			</div>
			<div class="container" style="background-color: #f1f1f1">
				<button type="button" class="btn btn-success btn-sm"
					style="width: 100px; height: 40px;"
					onclick="location.href='<%=contextPath%>/joinUS.do'">회원가입</button>

				<span class="psw"><a href="/findIDPW.do">아이디/비밀번호찾기</a></span> 
			</div>
		</form>
	</div>

</body>
</html>