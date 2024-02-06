package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;
import kr.basic.model.MemberVO;

public class MemberContentController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		MemberVO vo = MemberDAO.getInstance().memberContent(num);
		if (vo != null) {
			request.setAttribute("vo", vo);
			return "memberContent";
		} else {
			String ctx = request.getContextPath();
			return "redirect:" + ctx + "/memberList.do";
		}
	}
}
