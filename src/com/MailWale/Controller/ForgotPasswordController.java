package com.MailWale.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String otp = request.getParameter("otp");
		String verify = request.getParameter("verify");
		String email = request.getParameter("email");
		if (otp.equals(verify)) {
			RequestDispatcher rd = request.getRequestDispatcher("updatePassword.jsp");
			request.setAttribute("msg", "verifysuccess");
			request.setAttribute("email", email);
			rd.forward(request, response);
		} else {
			response.sendRedirect("otp.jsp");

		}
	}
}
