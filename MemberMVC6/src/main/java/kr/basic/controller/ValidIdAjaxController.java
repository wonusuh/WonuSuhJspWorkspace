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
		String isThereId = MemberDAO.getInstance().checkMemberId(inputId);
		String passData = "notValid";
		if (isThereId.equals("valid")) {
			passData = "valid";
		} else if (isThereId.equals("notValid")) {
			passData = "notValid";
		}
		System.out.println("passData : " + passData);
		response.getWriter().print(passData);
		return null;
	}
}
