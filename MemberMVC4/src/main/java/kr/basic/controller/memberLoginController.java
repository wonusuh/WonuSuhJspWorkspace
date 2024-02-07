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
		String pw = request.getParameter("pw");
		System.out.printf("id : %s, pw : %s\n", id, pw);
		if (request.getParameter("id") == null) {
			return "memberLogin";
		}
		String dbPw = MemberDAO.getInstance().checkMemberId(id);
		response.setContentType("text/html; charset=UTF-8");
		if (dbPw == null || dbPw.equals(pw) == false) {
			System.out.println("실패");
			response.getWriter().print("notValid");
		} else {
			HttpSession session = request.getSession();
			System.out.println("성공");
			session.setAttribute("log", MemberDAO.getInstance().getMemberNo(id));
			response.getWriter().print("valid");
		}
		return null;
	}
}
