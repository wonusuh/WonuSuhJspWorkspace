<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	session.setAttribute("dao", new GugudanDAO());
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 게임</h1>
	<h2>5문제를 전부 맞추면 게임 종료</h2>
	<a href="gugudan.jsp">게임시작</a>
</body>
</html>
