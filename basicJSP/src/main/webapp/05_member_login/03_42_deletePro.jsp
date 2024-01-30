<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int log = (Integer) session.getAttribute("log");
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
String inputPw = request.getParameter("inputPw");
if (inputPw.equals(pwList.get(log))) {
	System.out.println("패스워드 일치");
	idList.remove(log);
	pwList.remove(log);
	nameList.remove(log);
	genderList.remove(log);
	session.setAttribute("log", -1);
}
response.sendRedirect("./02_main.jsp");
%>
