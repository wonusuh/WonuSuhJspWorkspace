<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String num1=request.getParameter("num1"),num2=request.getParameter("num2");
int num1int=0,num2int=0;
try{
	num1int=Integer.parseInt(request.getParameter("num1"));
	num2int=Integer.parseInt(request.getParameter("num2"));
}catch(Exception e){
		
}
%>
<h1>hap : <%=num1+num2 %></h1>
<h1>num1 : <%=num1%></h1>
<h1>num2 : <%=num2%></h1>
</body>
</html>