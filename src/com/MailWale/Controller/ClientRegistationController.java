package com.MailWale.Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.DAO.ClientRegisterDAO;
import com.MailWale.Model.ClientModel;
import com.MailWale.Model.EncryptDecrypt;
import com.MailWale.Model.Verification;

@WebServlet("/ClientRegistationController")
public class ClientRegistationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClientModel client = new ClientModel();
		EncryptDecrypt ed=new EncryptDecrypt();
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String area = request.getParameter("area");
		String pass = request.getParameter("pass");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		String status = "In Active";
		String country = request.getParameter("country");
		String created_by = request.getParameter("createdby");
		String currentdate = null;
		String lastdate = null;
		String archive = "1";
		String str = null;
		str=client.genrateRandomString(25);
		String ePass= ed.encrypt(pass);
		if(created_by.isEmpty()) {
			created_by="0000";
		}
		
		Object o = client.register(name, number, email, ePass, address, area, city, state, country, zip, status.trim(),currentdate, lastdate, created_by, archive, str);
		
		if (o != null) {
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			Verification mail =new Verification();
			mail.sendingmail(name, email,str);
			request.setAttribute("msg", "success");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			request.setAttribute("msg", "fail");
			rd.forward(request, response);
		}

	}

}
