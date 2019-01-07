<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>영화제목</h2>
	<img src="resources/img/다운로드.png">
	
	<h4>제목 : ${movieOne.title }</h4>
	<h4>장르 : ${movieOne.gnr }</h4>
	<h4>감독 : ${movieOne.director }</h4>
	<h4>상영시간 : ${movieOne.runningtime }</h4>
	<h4>관람가 : ${movieOne.restrict }</h4>
	<h4>사진 : ${movieOne.img1 }</h4>
	<h4>사진 : ${movieOne.img2 }</h4>
	<h4>사진 : ${movieOne.img3 }</h4>
	<h4>사진 : ${movieOne.img4 }</h4>
	<h4>사진 : ${movieOne.img5 }</h4>
	<h4>내용 : ${movieOne.content }</h4>
	
	<p><a href="movieRes.do?m_id=${movieOne.m_id }">예매하기</a></p>
</body>
</html>