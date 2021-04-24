<html>

<head>
    <title>Mail Wala | Register</title>
    <link rel="icon" href="images/myLogo.jpeg" />
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


</head>

<body>

    <br><br>
    <div class="container">
        <div class="jumbotron">
            <h1>Welcome To Mail Wale Services <br>Register Here!!! </h1>
            <hr>
            <a class="nav-link active"
						aria-current="page" href="home.jsp" style="font-size: 14px;"><button
								class="btn btn-primary">HOME</button></a>
            <br>
            <%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				if (msg == "success") {
					out.print("<h2 style=color:green>!!! Thank You For Registation !!!</h2>");
					out.print("<h5 style=color:red>Kindly Check Your Mail To Verify Your Account.</h5>");
				} else if(msg == "fail") {
					out.print("<h2 style=color:red>  Failed !!!! </h2>");
				}
			}
		%>

            <form action="ClientRegistationController" method="POST">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputname">Name</label>
                        <input type="text" class="form-control" id="inputname" placeholder="Enter Your Name" name="name"
                            required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputcontact">Contact No. </label>
                    <input type="tel" class="form-control" id="inputcontact"
                        pattern="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$" placeholder="Enter Your contact Number"
                        name="number" required>
                </div>

                <div class="form-group">
                    <label for="inputcontact">Email Id</label>
                    <input type="email" class="form-control" id="inputcontact" placeholder="Enter Your Email "
                        name="email" required>
                </div>
                
                <div class="form-row">
                    <label for="inputAddress">Password</label>
                    <input type="password" placeholder="Create a Strong password" class="form-control" name="pass"
                        id="myInput" minlength="6" required> <br><br>
                   
                </div>
                <div class="form-check">
                    <input type="checkbox" onclick="myFunction()">
                    <label class="form-check-label" for="gridCheck">
                        Show Password
                    </label>
                </div>
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
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="Enter Your Address " required name="address">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Area</label>
                    <input type="text" class="form-control" id="inputAddress2"
                        placeholder="Enter Your Area" required name="area">
                </div>
                <div class="form-row">
                <div class="form-group col-md-4">
                        <label for="inputCity">Country</label>
                        <input type="text" class="form-control" id="inputCity" required name="country">
                    </div>
                   
                    <div class="form-group col-md-4">
                        <label for="inputCity">State</label>
                        <input type="text" class="form-control" id="inputCity" required name="state">
                    </div>
                     <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" class="form-control" id="inputCity" required name="city">
                    </div>
                    

                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" id="inputZip" required name="zip">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Code(Optional)</label>
                        <input type="text" class="form-control" id="inputZip" name="createdby">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck" required>
                        <label class="form-check-label" for="gridCheck">
                            <a href="#">I have read and agree to the Terms of Service</a>
                        </label>
                    </div>
                </div>


                    <br>

                    <button type="submit" class="btn btn-primary ">Register</button>&nbsp;
                    <button type="submit" class="btn btn-danger" onclick="form.reset();">Reset</button>
            </form>
        </div>
    </div>

</body>

</html>