<%@page import="com.MailWale.DAO.SupportDAO"%>
<%@page import="com.MailWale.DAO.ClientRegisterDAO"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mail Wale | Support Details</title>
</head>
<%@ include file="adminHeader.jsp"%>
<body>
	<div class="container-fluid">
		<div class="jumbotron">
			<h2>Support Area</h2>
			<hr>
		</div>
		<h4>Sort By</h4>
		<a href="SortingController?sorting=ALL"><button
				class="btn btn-primary">ALL</button></a> &nbsp;&nbsp;&nbsp; <a
			href="SortingController?sorting=Pending"><button
				class="btn btn-primary">Pending</button></a> &nbsp;&nbsp;&nbsp;<a
			href="SortingController?sorting=Active"><button
				class="btn btn-primary">Active</button></a> &nbsp;&nbsp;&nbsp; <a
			href="SortingController?sorting=In Progress"><button
				class="btn btn-primary">In Progress</button></a> &nbsp;&nbsp;&nbsp; <a
			href="SortingController?sorting=Complete"><button
				class="btn btn-primary">Complete</button></a> &nbsp;&nbsp;&nbsp;<a
			href="SortingController?sorting=Canceled"><button
				class="btn btn-primary">Canceled</button></a>


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
			ArrayList<SupportDAO> list = (ArrayList<SupportDAO>) request.getAttribute("list");
			int i = 1;
		%>

		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				<br>
				<br>
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Ticket No</th>
					<th scope="col">Type</th>
					<th scope="col">Messgae</th>
					<th scope="col">Status</th>
					<th scope="col">Status Update</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<%
				for (SupportDAO sd : list) {
					String ss=sd.getStatus();
					String color="";
					if(ss.equals("Active")){
						color="table-link";
					}else if(ss.equals("Pending")){
						color="table-warning";
					}else if(ss.equals("Canceled")){
						color="table-danger";
					}else if(ss.equals("In Progress")){
						color="table-primary";
					}else if(ss.equals("Complete")){
						color="table-success";
					}
			%>
			<tr class="<%=color%>">
				<td>
					<%
						out.print(i);
					%>
				</td>
				<td><%=sd.getName()%></td>
				<td><%=sd.getEmail()%></td>
				<td><%=sd.getOrderid()%></td>
				<td><%=sd.getSubject()%></td>
				<td><%=sd.getMessage()%></td>
				<td><%=sd.getStatus()%></td>




				<form class="text-center" action="UpdateSupportController"
					method="POST">
					<td><select class="browser-default custom-select mb-4"
						required name="sts">
							<option value="" disabled>Choose option</option>
							<option value="Active" selected>Active</option>
							<option value="Pending">Pending</option>
							<option value="Complete">Complete</option>
							<option value="In Progress">In Progress</option>
							<option value="Canceled">Canceled</option>
					</select></td> <input type="text" name="id" hidden value="<%=sd.getOrderid()%>">
					<td><button class="btn btn-primary" type="submit">UPDATE</button></td>
				</form>
				<!--  <td><a href="DeleteController?empid=<%=sd.getOrderid()%>" class="btn btn-danger"
					onclick= " return confirm('Are you Sure Want to Delete this Record')">DELETE</a></td> -->


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