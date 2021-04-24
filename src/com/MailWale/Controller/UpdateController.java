package com.MailWale.Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MailWale.DAO.ClientRegisterDAO;
import com.MailWale.Model.AdminModel;
import com.MailWale.Model.ClientModel;
import com.MailWale.Model.EncryptDecrypt;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	ClientModel client = new ClientModel();
	ArrayList<ClientRegisterDAO> list = new ArrayList<>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		ClientRegisterDAO emp = client.searchClient(id);
		RequestDispatcher rd = request.getRequestDispatcher("profileUpdate.jsp");
		request.setAttribute("STD", emp);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String area = request.getParameter("area");
		String pass = request.getParameter("pass");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		String country = request.getParameter("country");
		String status = "Active";
		String currentdate = null;
		String lastdate = null;
		String created_by = null;
		String archive = "1";
		String str = "";
		
		EncryptDecrypt ed = new EncryptDecrypt();
		String epass=ed.encrypt(pass);

		ClientRegisterDAO book = new ClientRegisterDAO(name, number, email, epass, address, area, city, state, country, zip, status,currentdate, lastdate, created_by, archive, str);
		int o = client.updateProfileData(book);

		ArrayList<ClientRegisterDAO> slist = client.getProfileDetails(email);

		if (o != 0) {
			RequestDispatcher rd = request.getRequestDispatcher("profiledetails.jsp");
			request.setAttribute("msg", "success");
			request.setAttribute("list", slist);
			rd.forward(request, response);
		}

	}

}
