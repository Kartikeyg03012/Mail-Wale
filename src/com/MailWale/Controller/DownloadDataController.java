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
import com.MailWale.Model.ClientModel;
import com.MailWale.Model.DownloadData;


@WebServlet("/DownloadDataController")
public class DownloadDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ClientModel client =new ClientModel();
		DownloadData dd =new DownloadData();
		try {
			dd.getDefendants();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<ClientRegisterDAO> al = new ArrayList<ClientRegisterDAO>();
		al = client.getUserDetails();
		RequestDispatcher rd = request.getRequestDispatcher("userdetails.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientModel client =new ClientModel();
		DownloadData dd =new DownloadData();
		try {
			dd.getDefendants();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<ClientRegisterDAO> al = new ArrayList<ClientRegisterDAO>();
		al = client.getUserDetails();
		RequestDispatcher rd = request.getRequestDispatcher("userdetails.jsp");
		request.setAttribute("list", al);
		rd.forward(request, response);
	}

}
