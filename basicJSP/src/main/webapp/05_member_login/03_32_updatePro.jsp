<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int log = (Integer) session.getAttribute("log");
String targetName = request.getParameter("name");
String targetGender = request.getParameter("gender");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
nameList.set(log, targetName);
genderList.set(log, targetGender);
%>
<script>
	alert(`수정 완료`);
	location.href = `./02_main.jsp`;
</script>
