package com.MailWale.Controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.DAO.ClientRegisterDAO;
import com.MailWale.DAO.SupportDAO;
import com.MailWale.Model.AdminModel;
import com.MailWale.Model.ClientModel;

@WebServlet("/SortingController")
public class SortingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int s = 0;
	int x = 0;// x=s

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ClientModel client = new ClientModel();

		String value = request.getParameter("sort");
		String bookvalue = request.getParameter("sorting");
		if (value != null) {
			if (value.equals("ALL")) {
				ArrayList<ClientRegisterDAO> al = new ArrayList<ClientRegisterDAO>();
				al = client.getUserDetails();
				RequestDispatcher rd = request.getRequestDispatcher("userdetails.jsp");
				request.setAttribute("list", al);
				rd.forward(request, response);
			} else {
				if (value.equals("InActive")) {
					value = "In Active";
				}
				System.out.println(value);
				ArrayList<ClientRegisterDAO> al = new ArrayList<ClientRegisterDAO>();
				al = client.userSorting(value.trim());
				RequestDispatcher rd = request.getRequestDispatcher("userdetails.jsp");
				request.setAttribute("list", al);
				rd.forward(request, response);
			}
		} else if (bookvalue != null) {

			if (bookvalue.equals("ALL")) {
				ArrayList<SupportDAO> al = new ArrayList<SupportDAO>();
				al = client.getSupportDetails();
				RequestDispatcher rd = request.getRequestDispatcher("supportdetails.jsp");
				request.setAttribute("list", al);
				rd.forward(request, response);

			} else {
				ArrayList<SupportDAO> al = new ArrayList<SupportDAO>();
				al = client.supportStatusSorting(bookvalue);
				RequestDispatcher rd = request.getRequestDispatcher("supportdetails.jsp");
				request.setAttribute("list", al);
				rd.forward(request, response);

			}

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
