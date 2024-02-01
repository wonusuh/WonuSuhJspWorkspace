<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if (session.getAttribute("log") == null) {
	response.sendRedirect("index.jsp");
}
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
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
	if ((Integer) session.getAttribute("log") == -1) {
	%>
	<a href="./03_11_joinForm.jsp">회원가입</a>
	<a href="./03_21_loginForm.jsp">로그인</a>
	<%
	} else {
	String name = "id not found.";
	name = nameList.get(log);
	%><h2><%=name%>
		님 환영합니다.
	</h2>
	<table border="1">
		<tr>
			<td><a href="./03_23_logoutPro.jsp">로그아웃</a></td>
			<td><a href="./03_31_updateForm.jsp?target=<%=log%>">회원정보수정</a></td>
			<td><a href="./03_41_deleteForm.jsp">회원탈퇴</a></td>
		</tr>
	</table>
	<%
	}
	%>
</body>
</html>
