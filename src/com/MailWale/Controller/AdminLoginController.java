package com.MailWale.Controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.MailWale.DAO.AdminDAO;
import com.MailWale.Model.AdminModel;



@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		String id=request.getParameter("uname");
		String pass= request.getParameter("pass");
		
		HttpSession admins =request.getSession();
		admins.setMaxInactiveInterval(10000);
		admins.setAttribute("myid", id);
		
		
		//AdminDAO al= new AdminDAO(id,pass);
		AdminModel admin = new AdminModel();
		int i=admin.checkadminlogin(id,pass);
	
		if (i != 0) {
			response.sendRedirect("adminHome.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
			request.setAttribute("msg", "Incorrect User Id Or Password");
			rd.forward(request, response);
			// response.sendRedirect("admin.jsp");
		}
	
	
	
	}

}

