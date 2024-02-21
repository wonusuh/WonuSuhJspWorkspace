<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<h1 class="py-3">로그인</h1>
<form action="${ctx}/memberLogin.do" method="post">
	<table class="table table-bordered">
		<tr>
			<td>아이디</td>
			<td><input class="col-12" type="text" name="id" id="id" /></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input class="col-12" type="password" name="pw" id="pw" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button"
				id="loginBtn" value="로그인" class="col-3 btn btn-primary"
				onclick="validCheck(form)" /></td>
		</tr>
	</table>
</form>
</body>
</html>
<script type="text/javascript">
	function validCheck(form) {
		if (!form.id.value.trim()) {
			alert(`아이디를 입력하세요.`);
			form.id.focus();
			return false;
		}
		if (!form.pw.value.trim()) {
			alert("패스워드를 입력하세요.");
			form.pw.focus();
			return false;
		}
		let id = document.getElementById(`id`).value.trim();
		let pw = document.getElementById(`pw`).value.trim();
		fetch("memberLogin.do", {
			method : "POST",
			headers : {"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",},
			body : "id=" + id + "&" + "pw=" + pw,
		})
		.then(response => response.text())
		.then(getResult)
		.catch(error => console.log("error : ", error))
	}
	function getResult(data) {
		if(data === "valid"){
			location.href="${ctx}/memberList.do"
			alert("로그인 성공.");
		}else if(data === "notValid"){
			alert("아이디와 비밀번호를 확인하세요.");
		}
	}
</script>
