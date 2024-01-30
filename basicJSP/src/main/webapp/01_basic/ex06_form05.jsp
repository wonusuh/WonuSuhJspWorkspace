<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String msg = "";
try {
	if (request.getParameter("su1") == "" || request.getParameter("su2") == "") {
		throw new Exception();
	}
	int num1 = Integer.parseInt(request.getParameter("su1"));
	int num2 = Integer.parseInt(request.getParameter("su2"));
	if (num1 > num2) {
		msg = num1 + " 가 더 큽니다";
	} else if (num1 == num2) {
		msg = "같습니다.";
	} else if (num1 < num2) {
		msg = num2 + " 가 큽니다.";
	}
} catch (NumberFormatException e) {
	msg = "숫자가 아닌 값이 있습니다.";
} catch (Exception e) {
	msg = "빈 값이 있습니다.";
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
</body>
</html>