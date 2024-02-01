<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		전체 게시글 수 :
		<%=dao.postList.size()%>개
	</h3>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>제목</th>
			<th>내용</th>
			<th>삭제버튼</th>
		</tr>
		<%
		for (int i = 0; i < dao.postList.size(); i += 1) {
		%>
		<tr>
			<td><%=dao.postList.get(i).getNo()%></td>
			<td><%=dao.postList.get(i).getWriter()%></td>
			<td><%=dao.postList.get(i).getRegDate()%></td>
			<td><a href="_05_updateBoard.jsp?target=<%=i%>"><%=dao.postList.get(i).getSubject()%></a></td>
			<td><%=dao.postList.get(i).getContents()%></td>
			<td><a href="_06_deleteBoardPro.jsp?target=<%=i%>"><button>삭제하기</button></a></td>
		</tr>
		<%
		}
		%>
		<tr>
			<td><a href="./_00_main.jsp"><button>메인화면</button></a></td>
		</tr>
	</table>
</body>
</html>
