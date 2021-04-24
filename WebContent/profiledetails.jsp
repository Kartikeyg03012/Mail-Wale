
<%@page import="com.MailWale.Model.EncryptDecrypt"%>
<%@page import="com.MailWale.DAO.ClientRegisterDAO"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mail Wale | My Profile</title>
</head>
<%@ include file="header.jsp"%>
<body>
	<div class="container-fluid">
		<div class="jumbotron">
			<h2>User Details</h2>
			<hr>
		</div>

		<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				if (msg == "success") {
					out.print("<h4 style=color:green> Successful </h4>");
				} else {
					out.print("<h4 style=color:red>  Failed </h4>");
				}
			}
		%>

		<%
			ArrayList<ClientRegisterDAO> list = (ArrayList<ClientRegisterDAO>) request.getAttribute("list");
			int i = 1;

			EncryptDecrypt ed = new EncryptDecrypt();
			
		%>

		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<br>
				<br>
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Contact No</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Address</th>
					<th scope="col">Area</th>
					<th scope="col">State</th>
					<th scope="col">City</th>
					<th scope="col">Zip Code</th>
					<th scope="col">Status</th>
					<th scope="col"></th>

				</tr>
			</thead>
			<%
				for (ClientRegisterDAO cr : list) {
					String ss = cr.getStatus();
					String color = "";
					if (ss.equals("Active")) {
						color = "table-success";
					} else if (ss.equals("In Active")) {
						color = "table-danger";
					}
			%>
			<tr class="<%=color%>">
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=cr.getName()%></td>
				<td><%=cr.getContact()%></td>
				<td><%=cr.getEmail()%></td>
				<%String dpass = ed.decrypt(cr.getPwd());%>
				<td><%=dpass%></td>
				<td><%=cr.getAddress()%></td>
				<td><%=cr.getArea()%></td>
				<td><%=cr.getState()%></td>
				<td><%=cr.getCity()%></td>
				<td><%=cr.getZip()%></td>
				<td><%=cr.getStatus()%></td>
				<td><button class="btn btn-outline-danger">
						<a href="UpdateController?id=<%=cr.getEmail()%>"
							style="text-decoration: none; font-color: white;">Update</a>
					</button></td>

				<%
					i++;

					}
				%>
			</tr>

			</tbody>
		</table>
		<br>

	</div>

</body>
</html>