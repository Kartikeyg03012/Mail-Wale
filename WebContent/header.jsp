<html>

<head>
<%
	response.setHeader("Pragma", "no-cache");
	response.addHeader("cache-control", "no-store");
	response.addHeader("expired", "0");
%>

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
</head>
<body>
	<!--Navbar -->
	<nav class="mb-1 navbar navbar-expand-lg navbar-light"
		style="background-color: #e3f2fd;">
		<a class="navbar-brand" href="#"> <img src="images/myLogo.jpeg"
			width="30" height="30" alt="">
		</a> <a class="navbar-brand" href="home.jsp"> <h
				style="font-family:Algerian; font-size:25px">MAIL WALE</h>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent-333"
			aria-controls="navbarSupportedContent-333" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent-333">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp"><button
							class="btn btn-outline-info">Home</button> </a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><button
							class="btn btn-outline-info">Hosting</button> </a>
					<div class="dropdown-menu dropdown-default"
						aria-labelledby="navbarDropdownMenuLink-333">
						<a class="dropdown-item" href="vps.jsp">Vps Hosting</a> <a
							class="dropdown-item" href="wordpress.jsp">WordPress Hosting</a>
						<a class="dropdown-item" href="bdserver.jsp">Business
							Dedicated Server </a>
					</div></li>
				<li class="nav-item active"><a class="nav-link"
					href="cloudserver.jsp"><button class="btn btn-outline-info">Cloud
							Server</button> </a></li>
				<li class="nav-item active"><a class="nav-link" href="mail.jsp"><button
							class="btn btn-outline-info">Mail Services</button> </a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><button
							class="btn btn-outline-info">Other</button> </a>
					<div class="dropdown-menu dropdown-default"
						aria-labelledby="navbarDropdownMenuLink-333">
						<a class="dropdown-item" href="backup.jsp">Online Backup
							Service</a> <a class="dropdown-item" href="ddos.jsp">DDOS
							Protection</a> <a class="dropdown-item" href="ssl.jsp">SSL</a> <a
							class="dropdown-item" href="mta.jsp">Power MTA Process</a> <a
							class="dropdown-item" href="colocation.jsp">Colocation</a>
					</div></li>
				<li class="nav-item active"><a class="nav-link"
					href="contact.jsp"><button class="btn btn-outline-info">Contact
							Us</button> </a></li>
				<li class="nav-item active"><a class="nav-link"
					href="contact.jsp"><button class="btn btn-outline-info">Support</button>
				</a></li>
			</ul>
			<%
				String s = (String) session.getAttribute("msg");
				String email = (String) session.getAttribute("mail");
				
				if (s != null && email != null) {
					
			%>
			
			<ul class="navbar-nav ml-auto nav-flex-icons">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-user fa-2x"></i>
				</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-default"
						aria-labelledby="navbarDropdownMenuLink-333">
						<a class="dropdown-item"
							href="ProfileDetailController?id=<%=email%>">My Profile</a> <a
							class="dropdown-item" href="#">My Orders</a> <a
							class="dropdown-item" href="ClientSignOutController">Sign Out</a>
							<a
							class="dropdown-item" href="verify.jsp">Change Password</a>
							<a
							class="dropdown-item" href="#">Delete Account</a>
					</div></li>
			</ul>
			<%
				} else {
			%>
			<ul class="navbar-nav ml-auto nav-flex-icons">
				<li class="nav-item"><i class="fa fa-user fa-2x"></i></li>&nbsp;&nbsp;&nbsp;
				<li><a href="login.jsp"><button
							class="btn btn-outline-primary">Login</button></a>&nbsp;&nbsp;&nbsp;</li>
				<li><a href="register.jsp"><button
							class="btn btn-outline-primary">Register</button></a></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<!--/.Navbar -->


	<%
		if (s != null) {
			out.print("<marquee width=500 height=60><h2 style=color:#17202A> Welcome " + s + " ,</h2></marquee>");
		}
	%>
</body>
</html>