<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="./loginPro.jsp" method="post">
		ID : <input type="text" name="id" required="required"><br>
		PW : <input type="text" name="pw" required="required"><br>
		<br>
		<button>로그인하기</button>
	</form>
	<br>
	<button>홈으로</button>
</body>
</html>