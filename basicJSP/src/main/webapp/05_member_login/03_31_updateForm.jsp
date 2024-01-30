<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int target = Integer.parseInt(request.getParameter("target"));
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
String id = idList.get(target);
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
String pw = pwList.get(target);
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
String name = nameList.get(target);
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
String gender = genderList.get(target);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
	<form action="03_32_updatePro.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input name="id" value="<%=id%>" /></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input name="pw" value="<%=pw%>" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" value="<%=name%>" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="남성"
					<%if (gender.equals("남성")) {%> checked <%}%> />남성 <input
					type="radio" name="gender" value="여성"
					<%if (gender.equals("여성")) {%> checked <%}%> />여성
			</tr>
		</table>
		<button>입력완료</button>
	</form>
	<a href="./02_main.jsp"><button>돌아가기</button></a>
</body>
</html>