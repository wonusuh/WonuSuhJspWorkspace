<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<form action="03_22_loginPro.jsp" method="post">
		아이디 : <input type="text" name="inputId" /> 비밀번호 : <input
			type="password" name="inputPw" /> <br>
		<button onclick="./03_22_loginPro.jsp">로그인</button>
	</form>
</body>
</html>