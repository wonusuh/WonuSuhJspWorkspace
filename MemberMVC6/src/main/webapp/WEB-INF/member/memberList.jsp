<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<h1 class="py-3">회원 목록</h1>
<table class=" py-10 table table-bordered">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>나이</th>
		<th>이메일</th>
		<th>전화번호</th>
		<th>이미지</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="vo" items="${list}">
		<tr>
			<td>${vo.num}</td>
			<td><a href="${ctx}/memberContent.do?num=${vo.num}">${vo.id}</a></td>
			<td>${vo.pass}</td>
			<td>${vo.name}</td>
			<td>${vo.age}</td>
			<td>${vo.email}</td>
			<td>${vo.phone}</td>
			<td><c:if test="${vo.sFileName==null}">
					<img
						src="https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"
						width="75px" height="75px">
				</c:if> <c:if test="${vo.sFileName!=null}">
					<img src="/member/img/${vo.sFileName}" width="75px" height="75px" />
				</c:if></td>
			<td><input type="button" value="삭제" class="btn btn-outline-dark"
				onclick="location.href='${ctx}/memberDelete.do?id=${vo.id}'"></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
