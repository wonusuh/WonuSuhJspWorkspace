<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="joinPro.jsp" method="get">
		아이디 : <input type="text" name="inputId" required="required" /> <br>
		비밀번호 : <input type="text" name="inputPw" required="required" /> <br>
		이름 : <input type="text" name="inputName" required="required" /> <br>
		<table border="1">
			<tr>
				<td>성별</td>
				<td><input type="radio" name="inputGender" value="남성" checked />남성
					<input type="radio" name="inputGender" value="여성" />여성
			</tr>
		</table>
		<br>
		<button>가입하기</button>
	</form>
</body>
</html>
