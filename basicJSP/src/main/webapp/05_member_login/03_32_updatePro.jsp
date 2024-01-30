<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int log =(Integer) session.getAttribute("log");
String targerName= request.getParameter("name");
String targerGender= request.getParameter("gender");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
nameList.set(log, targerName);
genderList.set(log, targerGender);
%>
<script>
	alert(`수정 완료`);
	location.href=`./02_main.jsp`;
</script>