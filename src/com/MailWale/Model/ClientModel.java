package com.MailWale.Model;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;
import com.MailWale.DAO.ClientRegisterDAO;
import com.MailWale.DAO.LoginLogDAO;
import com.MailWale.DAO.SupportDAO;


public class ClientModel {
	// create connection
	public Session connection() {
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session ss = sf.openSession();
		return ss;
	}

	// SQL Connection
	public Connection createSQLConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mail_Wale", "root", "root");

		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

		return conn;

	}

	// Client login
	public int checkClientLogin(String id, String pass) {
		int i = 0;
		Session ss = connection();
		String hql = "select status from ClientRegisterDAO where id=:i";
		Query query = ss.createQuery(hql);
		query.setParameter("i", id);
		List status = query.list();
		// System.out.println(status);
		if (status.contains("Active")) {
			Criteria c = ss.createCriteria(ClientRegisterDAO.class);
			c.add(Restrictions.eq("email", id));
			c.add(Restrictions.eq("pwd", pass));
			System.out.println(id);
			System.out.println(pass);
			List list = c.list();
			if (!(list.isEmpty())) {
				i = 1;

			}
		}
		System.out.println(i);
		return i;
	}

	// Registration
	public Object register(String name, String contact, String email, String pwd, String address, String area,
			String city, String state, String country, String zip, String status, String created_date,
			String last_Update_date, String created_by, String archive, String str) {
		created_date = dateTime();
		last_Update_date = dateTime();
		ClientRegisterDAO client = new ClientRegisterDAO(name, contact, email, pwd, address, area, city, state, country,
				zip, status, created_date, last_Update_date, created_by, archive, str);
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		Object o = ss.save(client);
		tt.commit();

		return o;

	}

	// Support
	public Object support(String name, String email, String orderid, String subject, String message, String status) {
		SupportDAO sup = new SupportDAO(name, email, orderid, subject, message, status);
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		Object o = ss.save(sup);
		tt.commit();

		return o;
	}

	// user details
	public ArrayList<ClientRegisterDAO> getUserDetails() {
		Session ss = connection();
		String hql = "from ClientRegisterDAO ORDER BY name";
		Query query = ss.createQuery(hql);
		ArrayList<ClientRegisterDAO> list = (ArrayList<ClientRegisterDAO>) query.list();
		return list;
	}

	// Support details
	public ArrayList<SupportDAO> getSupportDetails() {
		Session ss = connection();
		String hql = "from SupportDAO ORDER BY name";
		Query query = ss.createQuery(hql);
		ArrayList<SupportDAO> list = (ArrayList<SupportDAO>) query.list();
		return list;
	}

	// update Client Status
	public int updateClientStatus(String data) {
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		String query = "update ClientRegisterDAO set status=:stu where str=:ema";
		Query qq = ss.createQuery(query);
		qq.setString("ema", data);
		qq.setString("stu", "Active");
		int x = qq.executeUpdate();
		if (x != 0) {
			x = 1;
		}
		tt.commit();
		ss.close();

		return x;

	}

	// Profile Details
	public ArrayList<ClientRegisterDAO> getProfileDetails(String id) {
		ArrayList<ClientRegisterDAO> list = new ArrayList<ClientRegisterDAO>();
		ClientRegisterDAO erd = null;
		try {
			Connection conn = createSQLConnection();
			PreparedStatement ps = conn.prepareStatement("select * from ClientRegistation where email=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				erd = new ClientRegisterDAO(rs.getString("name"), rs.getString("contact"), rs.getString("email"),
						rs.getString("pwd"), rs.getString("address"), rs.getString("area"), rs.getString("city"),
						rs.getString("state"), rs.getString("zip"), rs.getString("status"), rs.getString("state"),
						rs.getString("state"), rs.getString("state"), rs.getString("state"), rs.getString("state"),
						rs.getString("state"));
				list.add(erd);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// Search Client Data
	public ClientRegisterDAO searchClient(String id) {
		ClientRegisterDAO ee = null;
		Session ss = connection();

		Criteria ct = ss.createCriteria(ClientRegisterDAO.class);
		ct.add(Restrictions.eq("email", id));// coloum name in table and pass String
		ee = (ClientRegisterDAO) ct.list().get(0);
		return ee;
	}

	// Update Profile Data
	public int updateProfileData(ClientRegisterDAO book) {
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		String query = "update ClientRegisterDAO set name=:n, contact=:num, address=:add, area=:ar, city=:c, state=:state, zip=:z, pwd=:pass, status=:stu where email=:e";

		Query qq = ss.createQuery(query);
		qq.setString("n", book.getName());
		qq.setString("e", book.getEmail());
		qq.setString("num", book.getContact());
		qq.setString("add", book.getAddress());
		qq.setString("state", book.getState());
		qq.setString("c", book.getCity());
		qq.setString("ar", book.getArea());
		qq.setString("z", book.getZip());
		qq.setString("pass", book.getPwd());
		qq.setString("stu", book.getStatus());
		int x = qq.executeUpdate();
		if (x != 0) {
			x = 1;
		}
		tt.commit();
		ss.close();

		return x;
	}

	// get Ticket Details
	public ArrayList<SupportDAO> getTicketDetails(String ticket) {
		ArrayList<SupportDAO> list = new ArrayList<SupportDAO>();
		SupportDAO erd = null;
		try {
			Connection conn = createSQLConnection();
			PreparedStatement ps = conn.prepareStatement("select * from Support where orderid=?");
			ps.setString(1, ticket);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				erd = new SupportDAO(rs.getString("name"), rs.getString("orderid"), rs.getString("email"),
						rs.getString("subject"), rs.getString("message"), rs.getString("status"));
				list.add(erd);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// Update Support Status
	public int updateSupportStatus(String id, String sts) {
		int x = 0;
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		String query = "update SupportDAO set status=:stu where orderid=:id";

		Query qq = ss.createQuery(query);

		qq.setString("id", id);
		qq.setString("stu", sts);
		x = qq.executeUpdate();
		if (x != 0) {
			x = 1;
		}
		tt.commit();
		ss.close();

		return x;
	}

	// Forgot Password
	public int updateClientPass(String email, String pass) {
		int x = 0;
		String last_Update_date = dateTime();
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		String query = "update ClientRegisterDAO set pwd=:pass, last_Update_date=:last where email=:id";

		Query qq = ss.createQuery(query);

		qq.setString("pass", pass);
		qq.setString("last", last_Update_date);
		qq.setString("id", email);

		x = qq.executeUpdate();
		if (x != 0) {
			x = 1;
		}
		tt.commit();
		ss.close();

		return x;
	}

	// Current Date Time
	public String dateTime() {
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date = new Date();
		System.out.println(formatter.format(date));
		return formatter.format(date);
	}

	// Genrate Random String
	public String genrateRandomString(int n) {

		// chose a Character random from this String
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}

	// Login Logs For User

	public Object loginLogs(String id) {
		String logindate = dateTime();
		LoginLogDAO lld = new LoginLogDAO(logindate, id);
		Session ss = connection();
		Transaction tt = ss.beginTransaction();
		Object o = ss.save(lld);
		tt.commit();

		return o;
	}

	// User Login Logs Details
	public ArrayList<LoginLogDAO> userlogs() {
		Session ss = connection();
		String hql = "from LoginLogDAO ORDER BY logindate DESC";
		Query query = ss.createQuery(hql);
		ArrayList<LoginLogDAO> list = (ArrayList<LoginLogDAO>) query.list();
		return list;
	}

	// Sorting Status
	public ArrayList<ClientRegisterDAO> userSorting(String value) {
		ArrayList<ClientRegisterDAO> list = null;

		if (value.equals("Active") || value.equals("In Active")) {
			Session ss = connection();
			String hql = "from ClientRegisterDAO where status=:nm";
			Query query = ss.createQuery(hql);
			query.setParameter("nm", value);
			list = (ArrayList<ClientRegisterDAO>) query.list();

		} else {
			String arc = "0";
			if (value.equals("Archive")) {
				arc = "1";
			}
			Session ss = connection();
			String hql = "from ClientRegisterDAO where archive=:nm";
			Query query = ss.createQuery(hql);
			query.setParameter("nm", arc);
			list = (ArrayList<ClientRegisterDAO>) query.list();

		}

		return list;
	}

	//Support Status Sorting
	public ArrayList<SupportDAO> supportStatusSorting(String bookvalue) {
		Session ss = connection();
		String hql = "from SupportDAO where status=:nm";
		Query query = ss.createQuery(hql);
		query.setParameter("nm", bookvalue);
		ArrayList<SupportDAO> list = (ArrayList<SupportDAO>) query.list();
		
		return list;
	}

}
