package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.model.MemberDAO;

public class ValidIdAjaxController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String inputId = request.getParameter("id");
		System.out.println("inputId : " + inputId);
		String isTherePw = MemberDAO.getInstance().checkMemberId(inputId);
		System.out.println("isTherePw : " + isTherePw);
		String passData = "notValid";
		if (isTherePw == null)
			passData = "valid";
		System.out.println("passData : " + passData);
		response.getWriter().print(passData);
		return null;
	}
}
