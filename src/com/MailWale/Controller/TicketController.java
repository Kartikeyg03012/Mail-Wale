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
import com.MailWale.Model.ClientModel;

/**
 * Servlet implementation class TicketController
 */
@WebServlet("/TicketController")
public class TicketController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TicketController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ticket=request.getParameter("tkt");
		ClientModel client=new ClientModel();
		ArrayList<SupportDAO> al = new ArrayList<SupportDAO>();
		al = client.getTicketDetails(ticket);
		RequestDispatcher rd = request.getRequestDispatcher("supportstatus.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String ticket=request.getParameter("tkt");
	ClientModel client=new ClientModel();
	ArrayList<SupportDAO> al = new ArrayList<SupportDAO>();
	al = client.getTicketDetails(ticket);
	RequestDispatcher rd = request.getRequestDispatcher("supportstatus.jsp");
	request.setAttribute("list", al);
	rd.forward(request, response);
	
	}

}
