<%@page import="gugudan.GugudanDAO"%>
<%@page import="gugudan.GugudanVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
GugudanDAO dao = (GugudanDAO)session.getAttribute("dao");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 게임</h1>
	<h2><%=dao.count%>
		번째 문제 (현재 점수 :
		<%=dao.score%>)
	</h2>
	<form action="gugudanPro.jsp">
		<h2><%=dao.getQuiz()%>
			= <input type="number" name="answer" required />
		</h2>
		<button>전송</button>
	</form>
</body>
</html>
