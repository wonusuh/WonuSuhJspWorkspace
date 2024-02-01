<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<%
int idx = (int) session.getAttribute("log");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="common.js"></script>
</head>
<body>
	<form action="updatePro.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input name="inputId"
					value="<%=dao.memberList.get(idx).getId()%>" /></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input name="inputPw"
					value="<%=dao.memberList.get(idx).getPw()%>" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="inputName"
					value="<%=dao.memberList.get(idx).getName()%>" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="inputGender" value="남성"
					<%if (dao.memberList.get(idx).getGender().equals("남성")) {%> checked
					<%}%> />남성 <input type="radio" name="inputGender" value="여성"
					<%if (dao.memberList.get(idx).getGender().equals("여성")) {%> checked
					<%}%> />여성
			</tr>
		</table>
		<button>입력완료</button>
	</form>
	<a href="./main.jsp"><button>돌아가기</button></a>
</body>
</html>
