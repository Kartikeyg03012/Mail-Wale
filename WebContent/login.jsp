<html>
<head>
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

<title>Mail Wala | Login</title>
</head>
<body style="background-image: url('images/bg-registration-form-1.jpg');">

	<div class="container">
	<div class="jumbotron">
	<h1>Welcome To Mail Wala Services</h1><br>
	<h3>Login Here</h3></div><hr>
	<br>
	<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				out.print("<h2 style=color:red>  Incorrect User Id Or Password !!!! </h2>");
			}
		%>
	
		<form action="ClientLoginController" method="post">
			<div class="form-wrapper">
				<label for="exampleInputEmail1">Email Id</label> <input type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Your Email" name="uname"
					required>
			</div>
			<div class="form-wrapper">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="myInput"
					placeholder=" Enter Your Password" name="pass" required>
					<input type="checkbox" onclick="myFunction()">Show Password
					<script>
					function myFunction() {
						var x = document.getElementById("myInput");
						if (x.type === "password") {
							x.type = "text";
						} else {
							x.type = "password";
						}
					}
				</script>
			</div>
			<br>
			<button type="submit" class="btn btn-success">Submit</button>
        </form><br>
        <a href="verify.jsp" style="text-decoration: none;"><button class="btn btn-danger">Forgot Password</button></a>
		<a href="register.jsp" style="text-decoration: none;"><button class="btn btn-info">Sign up/Register Now</button></a>
	</div>
<br>
<br>
<br>

</body>
</html>