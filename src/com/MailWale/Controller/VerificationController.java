package com.MailWale.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.Model.SendingOTP;

@WebServlet("/VerificationController")
public class VerificationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		SendingOTP otp=new SendingOTP();
		String OTP=otp.sendingmail(email);
		RequestDispatcher rd=request.getRequestDispatcher("otp.jsp");
		request.setAttribute("otp", OTP);
		request.setAttribute("email", email);
		rd.forward(request, response);
	}

}
