<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
int target = Integer.parseInt(request.getParameter("target"));
if(target==0){
response.sendRedirect("01_12_adminUserList.jsp");
}else{
idList.remove(target);
pwList.remove(target);
nameList.remove(target);
genderList.remove(target);
response.sendRedirect("01_12_adminUserList.jsp");
}
%>