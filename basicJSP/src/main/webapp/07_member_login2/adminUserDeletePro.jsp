<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<script type="text/javascript" src="common.js"></script>
<%
int idx = Integer.parseInt(request.getParameter("target"));
dao.deleteAMember(idx);
%>
<script>
	msgUrl(`삭제 성공`, `./adminUserList.jsp`);
</script>
