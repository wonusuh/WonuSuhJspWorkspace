<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<script type="text/javascript" src="common.js"></script>
<%
int log = (int) session.getAttribute("log");
String inputName = request.getParameter("inputName");
String inputGender = request.getParameter("inputGender");
dao.updateAMember(log,inputName, inputGender);
%>
<script>
	msgUrl(`정보를 수정했습니다.`, `./updateForm.jsp`);
</script>
