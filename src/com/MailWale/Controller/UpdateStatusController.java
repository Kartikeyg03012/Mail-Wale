package com.MailWale.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.Model.ClientModel;


@WebServlet("/UpdateStatusController")
public class UpdateStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String data=request.getParameter("data");
		String status=request.getParameter("status");
		String id=request.getParameter("id");
		ClientModel client =new ClientModel();
		
		int o= client.updateClientStatus(data);
		if (o != 0) {
			response.sendRedirect("login.jsp");
		}else {
			response.sendRedirect("");
		}
	}
		
		
		
		
		
		//	String otp=request.getParameter("otp");
//	String verify=request.getParameter("verify");
//	String email=request.getParameter("email");
//	ClientModel client =new ClientModel();
//	if(otp.equals(verify)) {
//		int o= client.updateClientStatus(email);
//		if (o != 0) {
//			RequestDispatcher rd = request.getRequestDispatcher("otp.jsp");
//			request.setAttribute("msg", "success");
//			rd.forward(request, response);
//		}
//	}
	

}
