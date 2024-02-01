<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	GugudanDAO dao = (GugudanDAO)session.getAttribute("dao");
	String answer = request.getParameter("answer");
	%>