package com.MailWale.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;

import com.MailWale.DAO.ClientRegisterDAO;
import com.MailWale.Model.ClientModel;

@WebServlet("/UpdateArchiveController")
public class UpdateArchiveController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String data = request.getParameter("data");
		String status=null;
		if(data.equals("1")) {
			data="0";
			status="In Active";
			
		}else if(data.equals("0")){
			data="1";
			status="Active";
		}
		ClientModel client = new ClientModel();

		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();
		Transaction tt = ss.beginTransaction();
		String query = "update ClientRegisterDAO set archive=:arc, status=:sts where str=:ema";
		Query qq = ss.createQuery(query);
		qq.setString("arc", data);
		qq.setString("sts", status);
		qq.setString("ema", id);
		
		int x = qq.executeUpdate();
		if (x != 0) {
			x = 1;
		}
		tt.commit();
		ss.close();
		if (x == 1) {
			ArrayList<ClientRegisterDAO> al = new ArrayList<ClientRegisterDAO>();
			al = client.getUserDetails();
			RequestDispatcher rd = request.getRequestDispatcher("userdetails.jsp");
			request.setAttribute("list", al);
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
