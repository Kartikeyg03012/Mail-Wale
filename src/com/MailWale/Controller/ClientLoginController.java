package com.MailWale.Controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

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

import com.MailWale.Model.ClientModel;
import com.MailWale.Model.EncryptDecrypt;

@WebServlet("/ClientLoginController")
public class ClientLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EncryptDecrypt ed =new EncryptDecrypt();
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String dPass = ed.encrypt(pass);
		//System.out.println(dPass);
		
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();
		String hql = "select name from ClientRegisterDAO where email=:i";
		Query query = ss.createQuery(hql);
		query.setParameter("i", id);
		Collection list = query.list();
		String name = list.toString();
		
		
		ClientModel cm = new ClientModel();
		int i = cm.checkClientLogin(id.trim(), dPass.trim());

		if (i != 0) {
			cm.loginLogs(id);
			HttpSession client = request.getSession();
			client.setMaxInactiveInterval(10000);
			client.setAttribute("msg", name);
			client.setAttribute("mail", id);
			response.sendRedirect("home.jsp");
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Incorrect User Id Or Password");
			rd.forward(request, response);

		}

	}

}
