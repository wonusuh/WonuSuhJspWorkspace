package kr.basic.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface Controller { // pojo : 서블릿이 아닌 일반 자바클래스
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
}
