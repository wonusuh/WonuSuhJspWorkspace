<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> sampleId = new ArrayList<String>(Arrays.asList("qwer", "abcd", "hello", "admin"));
ArrayList<String> samplePw = new ArrayList<String>(Arrays.asList("1111", "2222", "3333", "admin"));
ArrayList<String> sampleName = new ArrayList<String>(Arrays.asList("이만수", "박영희", "이수민", "관리자"));
ArrayList<String> sampleGender = new ArrayList<String>(Arrays.asList("남성", "여성", "여성", "남성"));
int log = -1;

session.setAttribute("idList", sampleId);
session.setAttribute("pwList", samplePw);
session.setAttribute("namelist", sampleName);
session.setAttribute("genderList", sampleGender);
session.setAttribute("log", log);

response.sendRedirect("02_main.jsp");
%>
