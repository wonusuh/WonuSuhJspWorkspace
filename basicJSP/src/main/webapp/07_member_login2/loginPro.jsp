
<%@page import="member.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common.jsp"%>
<script type="text/javascript" src="./common.js"></script>
<%
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");

int idx = dao.checkIdPw(inputId, inputPw);

if (idx == -1) {
%><script>
	msgUrl(`존재하지 않는 아이디입니다.`, './main.jsp');
</script>
<%
} else {
session.setAttribute("log", idx);
if (dao.memberList.get(idx).getPw().equals(inputPw)) {
	if (idx == 0) {
%><script>
			msgUrl(`관리자 로그인 성공.`, './adminMain.jsp');
		</script>
<%
} else {
response.sendRedirect("./main.jsp");
}
} else {
response.sendRedirect("./loginForm.jsp");
}
}
%>
