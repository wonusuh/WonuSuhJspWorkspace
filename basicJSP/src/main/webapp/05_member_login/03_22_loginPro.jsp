<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");

int idx = -1;
for (int i = 0; i < idList.size(); i += 1) {
	if (inputId.equals(idList.get(i))) {
		idx = i;
	}
}
if (idx == -1) {
	response.sendRedirect("02_main.jsp");
} else {
	if (pwList.get(idx).equals(inputPw)) {
		session.setAttribute("log", idx);
		if (inputId.equals("admin")) {
	response.sendRedirect("01_11_adminMain.jsp");
		} else {
	response.sendRedirect("02_main.jsp");
		}
	} else {
		session.setAttribute("log", -1);
		response.sendRedirect("02_main.jsp");
	}
}
%>
