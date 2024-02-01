<%@page import="member.Member"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./header.jsp"%>
<script type="text/javascript" src="./common.js"></script>
<%
ArrayList<String> sampleId = new ArrayList<String>(Arrays.asList("admin", "qwer", "abcd", "hello"));
ArrayList<String> samplePw = new ArrayList<String>(Arrays.asList("admin", "1111", "2222", "3333"));
ArrayList<String> sampleName = new ArrayList<String>(Arrays.asList("관리자", "이만수", "박영희", "이수민"));
ArrayList<String> sampleGender = new ArrayList<String>(Arrays.asList("남성", "남성", "여성", "여성"));
int log = -1;
session.setAttribute("log", log);

MemberDAO dao = new MemberDAO();
for (int i = 0; i < sampleId.size(); i += 1) {
	Member mem = new Member();
	mem.setId(sampleId.get(i));
	mem.setPw(samplePw.get(i));
	mem.setName(sampleName.get(i));
	mem.setGender(sampleGender.get(i));
	dao.memberList.add(mem);
}
session.setAttribute("dao", dao);
%>
<script>
	msgUrl("정보 로드 완료", `./main.jsp`);
</script>
<%@ include file="./footer.jsp"%>