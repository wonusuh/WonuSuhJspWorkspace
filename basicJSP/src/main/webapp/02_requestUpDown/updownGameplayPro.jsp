<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = "";
int myAnswer = Integer.parseInt(request.getParameter("answer"));
int myCom = Integer.parseInt(request.getParameter("com"));
if (myAnswer < myCom) {
	msg = "Up";
} else if (myAnswer == myCom) {
	msg = "Correct";
} else if (myAnswer > myCom) {
	msg = "Down";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=msg%></h1>
	<%="cheat : " + request.getParameter("com")%>
	<br>
	<%="my answer : " + request.getParameter("answer")%>
	<form method="get" action="./updownGameplay.jsp">
		<input type="hidden" name="com" value=<%=request.getParameter("com")%> />
		<button>뒤로 가기</button>
	</form>
</body>
</html>
