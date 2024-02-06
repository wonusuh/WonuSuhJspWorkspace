package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.model.MemberDAO;

public class memberLoginController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		if (request.getParameter("id") == null) {
			return "memberLogin";
		}
		response.setContentType("text/html; charset=UTF-8");
		String pw = request.getParameter("pw");
		String dbPw = MemberDAO.getInstance().checkMemberId(id);
		String ctx = request.getContextPath();
//		PrintWriter writer = response.getWriter();
		if (dbPw == null || dbPw.equals(pw) == false) {
			System.out.println("실패");
//			writer.println("<script>alert('로그인 실패');</script>");
//			writer.close();
			return "redirect:" + ctx + "/memberLogin.do";
		} else {
			HttpSession session = request.getSession();
			System.out.println("성공");
			session.setAttribute("log", MemberDAO.getInstance().getMemberNo(id));
//			writer.println("<script>alert('" + id + "님이 로그인하셨습니다');</script>");
//			writer.close();
			return "redirect:" + ctx + "/memberList.do";
		}
	}
}
