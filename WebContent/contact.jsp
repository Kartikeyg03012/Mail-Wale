<%@page import="java.util.ArrayList"%>
<%@page import="com.MailWale.DAO.SupportDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Mail Wala | Contact Support</title>
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
	<!--Contact us-->
	<section id="contact">
	<div class="container-fluid">
		<div class="jumbotron">
			<img src="images/contact.jpg" width="50%" height="50%"
				class="img-fluid"
				style="float: left; margin-right: 20px; padding: 10px;" />
			<div style="text-align: left">
				<h2>Let's Build this Thing Together!</h2>
				<p>
					Our Web hosting experts are always available to solve all your<br>queries
					& to configure a custom plan for your organization.
				</p>
				<button class="btn btn-primary">
					<i class="fa fa-phone"></i>&nbsp;&nbsp;&nbsp;<a
						href="tel:7566437956" style="text-decoration: none; color: white;">Contact
						Us</a>
				</button>
			</div>
		</div>
	</div>
	<!-- Default form contact --> </section>
	<section id="support">
	<div class="container">
		<form class="text-center border border-light p-5"
			action="SupportController" method="POST">

			<p class="h4 mb-4">Support</p>
			<%
				String msg = (String) request.getAttribute("msg");
				String ticket = (String) request.getAttribute("ticket");
				if (msg != null) {
					if (msg == "success") {
						out.print(
								"<h2 style=color:green> Thank You For Connecting With Us!!<br>Your Request has been Submitted </h2>");
						out.print("<h4 style=color:blue>Your Ticket No is: " + ticket
								+ ". An email has sent to your email address.</h4>");
					} else {
						out.print("<h2 style=color:red>  Failed !!!! </h2>");
					}
				}
			%>
			<!-- Name -->
			<input type="text" id="defaultContactFormName"
				class="form-control mb-4" placeholder="Name" required name="name">

			<!-- Email -->
			<input type="email" id="defaultContactFormEmail"
				class="form-control mb-4" placeholder="E-mail" name="email" required>

			<!-- Subject -->
			<label>Subject</label> <select
				class="browser-default custom-select mb-4" required name="subject">
				<option value="" disabled>Choose option</option>
				<option value="Feedback" selected>Feedback</option>
				<option value="Report a bug">Report a bug</option>
				<option value="Suggestion">Suggestion</option>
				<option value="Feature request">Feature request</option>
				<option value="Complaint">Complaint</option>
			</select>

			<!-- Message -->
			<div class="form-group">
				<textarea class="form-control rounded-0"
					id="exampleFormControlTextarea2" rows="3"
					placeholder="Enter Your Message" name="msg" required></textarea>
			</div>
			<!-- Send button -->
			<button class="btn btn-info btn-block" type="submit">Send</button>

		</form>

		<form class="text-center border border-light p-5"
			action="TicketController" method="get">

			<p class="h4 mb-4">Track Your Ticket Status Here</p>


			<input type="text" class="form-control mb-4"
				placeholder="Example MWS/XXXXXX" required name="tkt">


			<button class="btn btn-success" type="submit">Check</button>

		</form>
		
	</div>
	<!-- Default form contact --> </section>

	<%@ include file="footer.jsp"%>
</body>
</html>