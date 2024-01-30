<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String inputPw = request.getParameter("inputPw");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");

%>
