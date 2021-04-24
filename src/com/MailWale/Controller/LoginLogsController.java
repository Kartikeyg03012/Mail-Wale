package com.MailWale.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.DAO.LoginLogDAO;
import com.MailWale.DAO.SupportDAO;
import com.MailWale.Model.ClientModel;


@WebServlet("/LoginLogsController")
public class LoginLogsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientModel client =new ClientModel();
		ArrayList<LoginLogDAO> al = new ArrayList<LoginLogDAO>();
		al = client.userlogs();
		RequestDispatcher rd = request.getRequestDispatcher("userlogs.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
