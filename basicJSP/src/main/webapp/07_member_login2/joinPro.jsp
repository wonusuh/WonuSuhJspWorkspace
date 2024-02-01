<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="common.jsp"%>
<script type="text/javascript" src="common.js"></script>
<%
String inputId = request.getParameter("inputId");
String inputPw = request.getParameter("inputPw");
String inputName = request.getParameter("inputName");
String inputGender = request.getParameter("inputGender");
int idx = dao.getIdxById(inputId);
System.out.println(idx);
if(idx!=-1){
	%><script>
		msgUrl(`이미 사용중인 아이디입니다.`,"./joinForm.jsp");
	</script><%
}else{
	dao.addAMember(inputId,inputPw,inputName,inputGender);
	%><script>
	msgUrl(`회원가입 성공`,"./loginForm.jsp");
</script><%
}
%>