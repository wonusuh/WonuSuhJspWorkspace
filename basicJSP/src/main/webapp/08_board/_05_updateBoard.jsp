<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common.jsp"%>
<%
int idx = Integer.parseInt(request.getParameter("target"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정 페이지</title>
<script type="text/javascript" src="./common.js"></script>
</head>
<body>
	<h1>게시글 수정하기</h1>
	<form action="./_06_updateBoardPro.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>제목1</td>
				<th>작성일</th>
				<td>2022-02-01</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea></textarea></td>
			</tr>
		</table>
		<button>수정하기</button>
	</form>
</body>
</html>
