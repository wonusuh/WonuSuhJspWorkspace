<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="./common.js"></script>
<title>로그인 폼</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<form action="loginPro.jsp" method="post">
		아이디 : <input type="text" name="inputId" required="required" /> 비밀번호 :
		<input type="password" name="inputPw" required="required" /> <br>
		<button onclick="./loginPro.jsp">로그인</button>
	</form>
</body>
</html>