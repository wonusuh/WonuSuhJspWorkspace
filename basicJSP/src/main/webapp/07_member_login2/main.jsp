<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./sessionCheck.jsp"%>
<%@include file="./common.jsp"%>
<%
int log = (Integer) session.getAttribute("log");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<h1>메인 페이지</h1>
	<%
	if (log == -1) {
	%>
	<a href="./joinForm.jsp">회원가입</a>
	<a href="./loginForm.jsp">로그인</a>
	<%
	} else {
	String name = dao.memberList.get(log).getName();
	%><h2><%=name%>
		님 환영합니다.
	</h2>
	<table border="1">
		<tr>
			<td><a href="./logoutPro.jsp">로그아웃</a></td>
			<td><a href="./updateForm.jsp?target=<%=log%>">회원정보수정</a></td>
			<td><a href="./deleteForm.jsp">회원탈퇴</a></td>
		</tr>
	</table>
	<%
	}
	%>
</body>
</html>
