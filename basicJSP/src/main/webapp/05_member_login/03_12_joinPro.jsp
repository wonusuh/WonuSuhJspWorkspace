<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("nameList");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");
String inputName = request.getParameter("inputName");
String inputGender = request.getParameter("inputGender");
int idx= idList.indexOf(inputId);
if(idx!=-1){
	%><script>alert(`이미 사용중인 아이디입니다.`);
	location.href=`03_11_joinForm.jsp`;	
	</script><%
}else{
	idList.add(inputId);
	pwList.add(inputPw);
	nameList.add(inputName);
	genderList.add(inputGender);
	%><script>alert(`회원가입 성공.`);
	location.href=`02_main.jsp`;	
	</script><%
}
%>