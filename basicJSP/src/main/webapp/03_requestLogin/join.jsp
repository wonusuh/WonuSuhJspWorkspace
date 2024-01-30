<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 가입</h1>
	<form action="./joinPro.jsp" method="post">
		Name : <input type="text" name="name" required="required"><br>
		ID : <input type="text" name="id" required="required"><br>
		PW : <input type="text" name="pw" required="required"><br>
		<br>
		<button>가입하기</button>
	</form>
	<br>
	<button onclick="location.href='./index.jsp'">홈으로</button>
</body>
</html>