<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
session.setAttribute("log", -1);
%>
<script>
	alert(`로그아웃 성공.`);
	location.href = `02_main.jsp`;
</script>
