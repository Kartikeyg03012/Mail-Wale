<html>

<head>
<%
	response.setHeader("Pragma", "no-cache");
	response.addHeader("cache-control", "no-store");
	response.addHeader("expired", "0");
%>
<link rel="icon" href="images/logo.jfif" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinet-Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">





</head>
<body> 
  <!--  <nav class="mb-1 navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <a class="navbar-brand" href="#">
      <img src="images/myLogo.jpeg" width="30" height="30" alt="">
    </a>
    <a class="navbar-brand" href="home.jsp">
      <h style="font-family:Algerian; font-size:25px">MAIL WALE</h>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
      aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#"><button class="btn btn-outline-info">Home</button>
          </a>
        </li>
        
        <li class="nav-item active">
          <a class="nav-link" href="UserDetailController"><button class="btn btn-outline-info">User Details</button>
          </a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="#orderdetails.jsp"><button class="btn btn-outline-info">My Orders</button>
          </a>
        </li>
       
        <li class="nav-item active">
          <a class="nav-link" href="SupportDetailController"><button class="btn btn-outline-info">Support</button>
          </a>
        </li>
        
      </ul>
       <div style="float:right">
        <a class="nav-link" href="AdminLogOut"><button class="btn btn-outline-danger">Logout</button> <span class="sr-only">(current)</span></a>
    	</div>  
    </div>
  </nav>-->
  <div class="row">
        <h6 style="text-align:left;margin-left: 20px;"><a href="mailto:info@mailwale.com"
                style="text-decoration: none;"><i class="fa fa-envelope " aria-hidden="true"></i> info@mailwale.com</a>
            &nbsp;|&nbsp;<a href="tel:1234567890" style="text-decoration: none;"><i class="fa fa-phone"
                    aria-hidden="true"></i>
                +91 XXXX XXX XXX</a><a href="" style="text-decoration: none;"><i class="fa fa-bell"
                    style="float:right; margin-top: 5px;margin-right:20px;" aria-hidden="true">
                    Notifications&nbsp;&nbsp; </i></a><a href="#" style="text-decoration: none;"><i
                    class="fa fa-shopping-cart" style="float: right; margin-top: 5px;" aria-hidden="true"> My Cart |
                    &nbsp;&nbsp;</i></a></h6>
    </div>
	<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<a class="navbar-brand" href="#"> <h style="font-size:25px">
				<%
					String s = (String) session.getAttribute("myid");
					if (s != null) {
						out.print("<marquee width=500 height=60><h2 style=color:#DAF7A6> Welcome " + s + " ,</h2></marquee>");
					} else {
						response.sendRedirect("adminlogin.jsp");
					}
				%> </h>
			</a>
		</div>
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1"
				aria-controls="navbarSupportedContent1" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent1">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="adminHome.jsp" style="font-size: 14px;">HOME</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link active dropdown-toggle" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false" style="font-size: 14px;"> SERVICES </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">My Services</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Order New Services</a></li>
							<li><a class="dropdown-item" href="#">View Available
									Addons</a></li>

						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link active dropdown-toggle" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false" style="font-size: 14px;"> DOMAIN </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">My Domains</a></li>
							<li><a class="dropdown-item" href="#">Renew Domains</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Register New
									Domain</a></li>
							<li><a class="dropdown-item" href="#">Transfer Domains
									To Us</a></li>
							<li><a class="dropdown-item" href="#">Domain Search</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link active dropdown-toggle" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false" style="font-size: 14px;"> BILLING </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">My Invoices</a></li>
							<li><a class="dropdown-item" href="#">My Quotes</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Mass Payment</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link active dropdown-toggle" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false" style="font-size: 14px;"> SUPPORT </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Tickets</a></li>
							<li><a class="dropdown-item" href="#">Announcements</a></li>
							<li><a class="dropdown-item" href="#">Downloads</a></li>
							<li><a class="dropdown-item" href="#">Network Status</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="AdminLogOut" style="font-size: 14px;"><button
								class="btn btn-danger">LOGOUT</button></a></li>


				</ul>

			</div>
		</div>

	</nav>

	</div>

	

</body>
</html>