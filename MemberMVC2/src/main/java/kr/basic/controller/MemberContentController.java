package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;
import kr.basic.model.MemberVO;

@WebServlet("/memberContent.do")
public class MemberContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		MemberVO vo = MemberDAO.getInstance().memberContent(num);
		String ctx = request.getContextPath();
		if (vo != null) {
			request.setAttribute("vo", vo);
			RequestDispatcher rd = request.getRequestDispatcher("/member/memberContent.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect(ctx + "/memberList.do");
		}
	}
}
