<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
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
		for (int i = 0; i < dao.memberList.size(); i += 1) {
		%>
		<tr>
			<td><%=dao.memberList.get(i).getId()%></td>
			<td><%=dao.memberList.get(i).getPw()%></td>
			<td><%=dao.memberList.get(i).getName()%></td>
			<td><%=dao.memberList.get(i).getGender()%></td>
			<td><a href="./adminUserDeletePro.jsp?target=<%=i%>"><button>삭제</button></a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>