package com.basic.rentcar.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		System.out.print("uri : " + uri);
		String ctx = request.getContextPath();
		System.out.print("ctx : " + ctx);
		String command = uri.substring(ctx.length());
		System.out.println("command : " + command);
		Controller controller = null;
		String nextPage = null;
	}
}
