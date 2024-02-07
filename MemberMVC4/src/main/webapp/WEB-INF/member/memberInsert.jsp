<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../header.jsp"%>
<h1 class="py-3">회원 가입</h1>
<form action="${ctx}/memberInsert.do" method="post">
	<table class="table table-bordered">
		<tr>
			<td>아이디</td>
			<td><input class="col-12" type="text" name="id" id="id"
				required="required" /><input type="button" value="중복체크"
				id="checkId" class="btn btn-outline-dark"></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input class="col-12" type="password" name="pass" id="pw"
				required="required" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input class="col-12" type="text" name="name" /></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input class="col-12" type="text" name="age" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input class="col-12" type="text" name="email" /></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input class="col-12" type="text" name="phone" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" value="가입"
				class="col-3 btn btn-primary" onclick="validCheck(form)" /> <input
				type="reset" value="취소" class="col-3 btn btn-warning" /></td>
		</tr>
	</table>
</form>
</body>
</html>
<script type="text/javascript">
		let check = 0;
	// 입력값들의 유효성 체크
	function validCheck(form) {
		if (!form.id.value.trim()) {
			alert(`아이디를 입력하세요.`);
			form.id.focus();
			return false;
		}
		if (!form.pass.value.trim()) {
			alert("패스워드를 입력해주세요");
			form.pw.focus();
			return false;
		}
		if (!form.name.value.trim()) {
			alert("이름를 입력해주세요");
			form.name.focus();
			return false;
		}
		if (!form.age.value.trim()) {
			alert("나이를 입력해주세요");
			form.age.focus();
			return false;
		} else {
			if (Number(form.age.value.trim()) < 10
					|| Number(form.age.value.trim()) > 99) {
				alert("나이 값(10-99)을 정확하게 입력하세요");
				form.age.focus();
				return false;
			}
		}
		if (!form.email.value.match(/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/)) {
			alert("이메일 형식이 다릅니다");
			form.email.value = "test@test.com";
			form.email.focus();
			return false;
		}
		if (!form.phone.value.match(/010-\d{3,4}-\d{4}/)) {
			alert("전화번호 형식이 다릅니다");
			form.phone.value = "010-1234-1234";
			form.phone.focus();
			return false;
		}

		// id 중복 체크
		if (check == 0) {
			alert('id 중복체크 해주세요');
			return false;
		} else if (check == -1) {
			alert('id 중복체크 다시하세요');
			return false;
		}
		form.submit();
	}
	
	// id 중복 체크하는 버튼 이벤트
document.getElementById("checkId").addEventListener("click" , ()=> {
	let id = document.getElementById("id").value.trim();

	if (id.length === 0) {
	alert("id 값을 입력해주세요");
	document.getElementById("id").focus();
	document.getElementById("id").style.border = "";
	return;
	}

	fetch("vaildIdAjax.do",{
		method : "POST",
		headers : {"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",},
		body: "id="+id,
	})
	.then(response => response.text())
	.then(getResult)
	.catch(error => console.log("error= " , error));
});
function getResult(data){
	if(data === "valid"){
		alert("사용 가능한 아이디입니다.");
		document.getElementById("pw").focus();
		document.getElementById("id").style.border="3px blue solid";
		check = 1;
	}else if(data === "notValid"){
		alert("이미 사용중인 아이디입니다.");
		document.getElementById("id").value = "";
		document.getElementById("id").focus();
		document.getElementById("id").style.border = "3px red solid";
		check = -1;
	}
	console.log(check);
}
document.getElementById(`id`).addEventListener(`keyup`,(e) => {
	if(e.KeyCode ===8){
		check=0;
		document.getElementById("id").style.border = "";
	}
});
</script>
