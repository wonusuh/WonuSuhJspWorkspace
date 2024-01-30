<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ex00basic1.jsp</h1>
	<%
	int[] arr = { 10, 20, 30, 40, 50, };
	int num = 3 + 10;
	%>
	<h1><%=num + 10%></h1>
	<a href="./ex01basic.html">ex01basic.html 로 이동</a>
	<%
	LocalDate today = LocalDate.now();
	System.out.println(today);
	String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
	%>
	<%
	for (int i = 0; i < arr.length; i += 1) {
		out.println("<h1>" + arr[i] + "</h1>");
	}
	%>
	<hr>
	<%
	for (int i = 0; i < arr.length; i += 1) {
	%>
	<h1>
		<%=arr[i]%></h1>
	<%
	}
	%>
	<h1><%=num%></h1>
	<h1><%=now%></h1>
</body>
</html>