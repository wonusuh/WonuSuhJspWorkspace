<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.js"%>
<script type="text/javascript" src="./common.js"></script>
<%
session.setAttribute("log", -1);
%>
<script>
	msgUrl(`로그아웃에 성공했습니다.`,`./main.jsp`);
</script>