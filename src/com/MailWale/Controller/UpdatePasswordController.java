package com.MailWale.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.Model.ClientModel;
import com.MailWale.Model.EncryptDecrypt;
import com.MailWale.Model.SendingMailForForgetPassword;
import com.MailWale.Model.SendingOTP;

@WebServlet("/UpdatePasswordController")
public class UpdatePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String pass = null;
	String cpass = null;
	String str = null;
	String id=null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 //email = request.getParameter("email");
		 id = request.getParameter("id");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		pass = request.getParameter("pass");
		cpass = request.getParameter("cpass");
		ClientModel client = new ClientModel();
		EncryptDecrypt ed=new EncryptDecrypt();
		if (!email.equals(null)) {
			
			if (pass.equals(cpass)) {
				
				String epass=ed.encrypt(pass);
				int o = client.updateClientPass(email.trim(), epass.trim());
				if (o != 0) {
					RequestDispatcher rd = request.getRequestDispatcher("updatePassword.jsp");
					request.setAttribute("msg", "success");
					rd.forward(request, response);
				} else {
					RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
					request.setAttribute("msg", "success");
					rd.forward(request, response);
				}
			}

		}
	}
}