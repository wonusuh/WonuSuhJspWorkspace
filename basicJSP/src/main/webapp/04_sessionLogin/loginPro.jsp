<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
boolean pass = false;
String msg = "";

String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");
ArrayList list = (ArrayList) session.getAttribute("user");
if (inputId.equals(list.get(0)) && inputPw.equals(list.get(1))) {
	pass = true;
	out.println(session.getAttribute("user"));
}
%>

<script>
	function printMsg(url, msg) {
		alert(msg);
		location.href = url;
	}
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<h1><%=msg%></h1>
	<%
	if (pass) {
	%>

	<script>
		msg = `로그인 성공.`;
		printMsg("index.jsp", msg);
	</script>

	<%
	} else {
	%>
	<script>
		msg = `아이디와 비밀번호를 확인하세요.`;
		printMsg("login.jsp", msg);
	</script>
	<%
	}
	%>
</body>
</html>