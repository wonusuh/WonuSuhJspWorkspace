<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="./common.js"></script>
<%
session.setAttribute("dao", new BoardDAO());
%>
<script>
	msgUrl(`데이터를 로드했습니다.`, `./_00_main.jsp`);
</script>
