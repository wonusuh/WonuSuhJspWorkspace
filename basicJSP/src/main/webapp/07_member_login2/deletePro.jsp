<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common.jsp"%>
<script type="text/javascript" src="./common.js"></script>
<%
int log = (int) session.getAttribute("log");
String inputPw = request.getParameter("inputPw");
if (dao.memberList.get(log).getPw().equals(inputPw)) {
	dao.deleteAMember(log);
	session.setAttribute("log", -1);
	%><script>
	msgUrl(`탈퇴에 성공했습니다.`, `./main.jsp`);
</script>
<%
} else {
%><script>
		msgUrl(`비밀번호가 일치하지 않습니다.`, `./main.jsp`);
	</script>
<%
}
%>