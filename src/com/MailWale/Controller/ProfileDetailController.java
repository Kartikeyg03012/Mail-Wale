package com.MailWale.Controller;

import java.awt.print.Book;
import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.DAO.ClientRegisterDAO;
import com.MailWale.Model.ClientModel;



@WebServlet("/ProfileDetailController")
public class ProfileDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int s=0;
	int x=0;//x=s
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email=request.getParameter("id");
		ClientModel client =new ClientModel();
		ArrayList<ClientRegisterDAO> al = new ArrayList<ClientRegisterDAO>();
		al = client.getProfileDetails(email.trim());
		RequestDispatcher rd = request.getRequestDispatcher("profiledetails.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
