<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> sampleId = new ArrayList<String>(Arrays.asList("admin", "qwer", "abcd", "hello"));
ArrayList<String> samplePw = new ArrayList<String>(Arrays.asList("admin", "1111", "2222", "3333"));
ArrayList<String> sampleName = new ArrayList<String>(Arrays.asList("관리자", "이만수", "박영희", "이수민"));
ArrayList<String> sampleGender = new ArrayList<String>(Arrays.asList("남성", "남성", "여성", "여성", "남성"));
int log = -1;

session.setAttribute("idList", sampleId);
session.setAttribute("pwList", samplePw);
session.setAttribute("nameList", sampleName);
session.setAttribute("genderList", sampleGender);
session.setAttribute("log", log);

response.sendRedirect("02_main.jsp");
%>
