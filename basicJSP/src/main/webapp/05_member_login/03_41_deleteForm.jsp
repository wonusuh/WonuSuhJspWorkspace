<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int log = (Integer) session.getAttribute("log");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
String dbPw = pwList.get(log);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
<form action="./03_42_deletePro.jsp">
	<table border="1">
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="inputPw"/></td>
		</tr>
	</table>
	<button>탈퇴하기</button>
</form>
</body>
</html>