<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./header.jsp"%>
<p id="token-result">temp data</p>
<script>
			displayCode()
			function displayCode() {
				const code = new URL(window.location.href).searchParams.get("code");
				document.getElementById('token-result').innerText = code;
				fetch("kakaoApi.do", {
					method: "POST",
					headers: { "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8", },
					body: "code=" + code,
				})
					.then(response => response.text())
					.then(getResult)
					.catch(error => console.log("error= ", error));
			}
			function getResult(data) {
				if (data === "valid") {
					check = 1;
				} else if (data === "notValid") {
				}
			}
		</script>
<%@include file="./footer.jsp"%>