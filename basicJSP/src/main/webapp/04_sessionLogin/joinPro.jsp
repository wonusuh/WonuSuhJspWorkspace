<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	session.setAttribute("name", name);
	ArrayList list = new ArrayList();
	list.add(id);
	list.add(pw);
	session.setAttribute("user", list);
	%>

	<a href="login.jsp"> 로그인하러가기 </a>

</body>
</html>