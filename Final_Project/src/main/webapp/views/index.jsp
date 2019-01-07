<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>시작페이지</title>
<script>
	function openWin(){  
	    window.open("http://www.naver.net", "네이버새창", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
	}  
</script>
</head>
<body>

<div id="container">
	<h1>게시판 프로그램</h1>
	<hr>
	<p><a href="../login.do">로그인</a></p>
	<p><a href="../getBoardList.do">글 목록 보러가기</a></p>
	<p><a href="welcome.jsp">단순 index페이지에서 페이지전환 welcome.jsp 열어보기</a></p>
	
	<p><a href="/movieDetail.do?m_id=1">영화 정보</a></p>
	
	<input type=button onclick="openWin();">
	
	<p><a href="../payTest.do">결제테스트</a></p>

</div>

</body>
</html>