<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원 정보</title>
</head>
<body>
	<h1>관리자 페이지 (회원 정보 확인하기)</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>성별</td>
			<td>삭제</td>
		</tr>
		<%
		for (int i = 0; i < 5; i += 1) {
		%>
		<tr>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
			<td>성별</td>
			<td>삭제</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>