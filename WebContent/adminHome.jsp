<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mail Wale | Admin Page</title>
<style>
* {
	box-sizing: border-box;
}

.row::after {
	content: "";
	clear: both;
	display: block;
}

[class*="col-"] {
	float: left;
	padding: 15px;
}

html {
	font-family: "Lucida Sans", sans-serif;
}

.header {
	background-color: #9933cc;
	color: #ffffff;
	padding: 15px;
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.menu li {
	padding: 8px;
	margin-bottom: 7px;
	background-color: #33b5e5;
	color: #ffffff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.menu li:hover {
	background-color: #0099cc;
}

.aside {
	background-color: #33b5e5;
	padding: 15px;
	color: #ffffff;
	text-align: center;
	font-size: 14px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.footer {
	background-color: #0099cc;
	color: #ffffff;
	text-align: center;
	font-size: 12px;
	padding: 15px;
}

/* For desktop: */
.col-1 {
	width: 8.33%;
}

.col-2 {
	width: 16.66%;
}

.col-3 {
	width: 25%;
}

.col-4 {
	width: 33.33%;
}

.col-5 {
	width: 41.66%;
}

.col-6 {
	width: 50%;
}

.col-7 {
	width: 58.33%;
}

.col-8 {
	width: 66.66%;
}

.col-9 {
	width: 75%;
}

.col-10 {
	width: 83.33%;
}

.col-11 {
	width: 91.66%;
}

.col-12 {
	width: 100%;
}

@media only screen and (max-width: 768px) {
	/* For mobile phones: */
	[class*="col-"] {
		width: 100%;
	}
}
</style>
<link rel="icon" href="images/myLogo.jpeg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


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
</head>
<body>
	<%@ include file="adminHeader.jsp"%>
	
	<div class="container">
		<hr>
		<div class="card-columns">
			<div class="card" style="background-color: #7285F6">
				<div class="card-body text-center">
					<a href="User"
						style="text-decoration: none; color: white;">
						<p class="card-text">
							<i class="fa fa-user fa-4x" aria-hidden="true"></i><br>All
							Users
						</p>
					</a>
				</div>
			</div>
			<div class="card" style="background-color: #7285F6">
				<div class="card-body text-center">
					<a href="myproducts.jsp"
						style="text-decoration: none; color: seashell;">
						<p class="card-text">
							<i class="fa fa-cubes fa-4x" aria-hidden="true"></i><br>Our
							Product/Services
						</p>
					</a>
				</div>
			</div>
			<div class="card" style="background-color: #7285F6">
				<div class="card-body text-center">
					<a href="#"
						style="text-decoration: none; color: white;">
						<p class="card-text">
							<i class="fa fa-shopping-cart fa-4x" aria-hidden="true"></i><br>My Orders
						</p>
					</a>
				</div>
			</div>
			<div class="card" style="background-color: #7285F6">
				<div class="card-body text-center">
					<a href="invoice.jsp" style="text-decoration: none; color: white;">
						<p class="card-text">
							<i class="fa fa-file-text fa-4x" aria-hidden="true"></i><br>Genrate Invoice
						</p>
					</a>
				</div>
			</div>
			<div class="card" style="background-color: #7285F6">
				<div class="card-body text-center">
					<a href="SupportDetailController" style="text-decoration: none; color: white;">
						<p class="card-text">
							<i class="fa fa-ticket fa-4x" aria-hidden="true"></i><br>All Tickets
						</p>
					</a>
				</div>
			</div>
			<div class="card" style="background-color: #7285F6">
				<div class="card-body text-center">
					<a href="LoginLogsController"
						style="text-decoration: none; color: white;">
						<p class="card-text">
							<i class="fa fa-cogs fa-4x" aria-hidden="true"></i><br>User Logs
						</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	<br>
	<br>
	<div class="footer">
		<a href="https://kartikeyg03012.github.io/My_Portfolio.github.io/"
			style="text-decoration: none; color: white;" target="_BLANK">
			<p>
				<i class="fa fa-copyright" aria-hidden="true"></i> 2020 All Right
				Reserved | Design And Developed By Kartikey Gupta
			</p>
		</a>
	</div>

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

</body>
</html>