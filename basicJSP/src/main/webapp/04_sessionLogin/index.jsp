<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>홈화면</h1>
	<%
	String name = (String) session.getAttribute("name");
	if (name == null || name.equals("")) {
	%>
	<a href="join.jsp">회원가입</a>
	<a href="login.jsp">로그인</a>
	<%
	} else {
	%>
	<h2><%=name%>
		님 환영합니다.
	</h2>
	<a href="logout.jsp">로그아웃</a>
	<%
	}
	%>
</body>
</html>