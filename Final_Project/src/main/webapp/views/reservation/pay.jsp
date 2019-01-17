<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>결제방식 </h4>
	<form action="payTest.do">
	<select name="pay_type">
		<option value="card">신용카드</option>
		<option value="phone">핸드폰</option>
		<option value="Transfer">계좌입금</option>
	</select>
	<input type="submit">
	</form>
</body>
</html>