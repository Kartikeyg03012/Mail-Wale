<html>

<head>
<title>Mail Wala | Verify Account</title>
<link rel="icon" href="images/myLogo.jpeg" />
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


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


</head>

<body>

	<br>
	<br>
	<div class="container">
		<div class="jumbotron">
			<h1>
				Welcome To Mail Wale Services <br>Enter 6 Digit OTP Send To Your Email-Id.
			</h1>
			<hr>
			<br>
			<%
				String votp = (String) request.getAttribute("otp");
				String email = (String) request.getAttribute("email");
				String msg = (String) request.getAttribute("msg");
				if (msg != null) {
					if (msg == "success") {
						out.print("<h2 style=color:green>!!! Your Account is SuccessFully Verified !!!</h2>");
						

					} else {
						out.print("<h2 style=color:red>  Failed !!!! </h2>");
					}
				}
			%>

			 <form action="ForgotPasswordController" method="POST">
			 	<div class="form-row">

					<div class="form-group">
						<label for="inputcontact">OTP</label> <input type="text"
							class="form-control" id="inputcontact"
							placeholder="Enter 6 Digit OTP " name="otp" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="inputcontact"
							value="<%=votp%>" name="verify" hidden>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" id="inputcontact"
							value="<%=email%>" name="email" hidden>
					</div>


				</div>
				<br>

				<button type="submit" class="btn btn-outline-success">Verify</button>
				&nbsp;
			</form>
		</div>
	</div>

</body>

</html>