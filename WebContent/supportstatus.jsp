<%@page import="java.util.ArrayList"%>
<%@page import="com.MailWale.DAO.SupportDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mail Wala | Ticket Status</title>
<link rel="icon" href="images/myLogo.jpeg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="header.jsp"%>
</head>
<body>

	<div class="container-fluid">
	<h3>Your Ticket Details :</h3>
	<hr>
		<%
			ArrayList<SupportDAO> list = (ArrayList<SupportDAO>) request.getAttribute("list");
			int i = 1;
		%>

		<table class="table table-hover" border="1px">
			<thead class="table-dark">
				
				<tr>
					<th scope="col">SNo.</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Order Id</th>
					<th scope="col">Subject</th>
					<th scope="col">Message</th>
					<th scope="col">Status</th>


				</tr>
			</thead>
			<%
				for (SupportDAO cr : list) {
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
				<td><%=cr.getOrderid()%></td>
				<td><%=cr.getEmail()%></td>
				<td><%=cr.getSubject()%></td>
				<td><%=cr.getMessage()%></td>
				<td><%=cr.getStatus()%></td>


				<%
					i++;

					}
				%>
			</tr>
		</table>
		<br>
	</div>
</body>
</html>