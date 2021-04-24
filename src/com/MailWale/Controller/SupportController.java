package com.MailWale.Controller;

import java.io.IOException;
import java.util.SplittableRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.Model.ClientModel;
import com.MailWale.Model.Mail;

@WebServlet("/SupportController")
public class SupportController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static String genrateorderid(int length) {
		SplittableRandom sr = new SplittableRandom();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < length; i++) {
			sb.append(sr.nextInt(0, 10));

		}
		return sb.toString();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("msg");
		String status = "Active";
		String orderid = "MWS/"+genrateorderid(6);
		ClientModel client = new ClientModel();
		
		Object o = client.support(name, email, orderid, subject, message, status.trim());
		RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
		if (o != null) {
			Mail mail=new Mail();
			mail.sendingmail(name, email,orderid);
			request.setAttribute("msg", "success");
			request.setAttribute("ticket",orderid);
			rd.forward(request, response);
		} else {
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
		}
	}

}
