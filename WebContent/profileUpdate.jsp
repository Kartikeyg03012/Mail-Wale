<%@page import="com.MailWale.Model.EncryptDecrypt"%>
<%@page import="com.MailWale.DAO.ClientRegisterDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="cities.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Update</title>
</head>
<%@ include file="header.jsp"%>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Profile Update Data</h2>
			<hr>
		</div>
		<%
			String msg = (String) request.getAttribute("msg");
			if (msg != null) {
				out.println("<h2 style=color:blue>" + msg + "</h2>");
			}
			//response.sendRedirect("StudentDetailsServlet");

			ClientRegisterDAO bb = (ClientRegisterDAO) request.getAttribute("STD");
		%>

		<form action="UpdateController" method="POST">
			<div class="form-group">
				<label>Full Name</label> <input type="text" class="form-control"
					placeholder="Enter Full Name" name="name" required
					value="<%=bb.getName()%>">
			</div>

			<div class="form-group">
				<label>Number</label> <input type="tel" class="form-control"
					pattern="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$"
					placeholder="Enter Contact Number" value="<%=bb.getContact()%>"
					name="number" required>
			</div>
			<div class="form-group">
				<label>Email</label> <input type="email" class="form-control"
					placeholder="Provide A Username" value="<%=bb.getEmail()%>"
					name="email" readonly>
			</div>
			<%
			EncryptDecrypt ed = new EncryptDecrypt();
			String dpass= ed.decrypt(bb.getPwd());
			%>
			<div class="form-row">
				<label for="inputAddress">Password</label> <input type="password"
					placeholder="Create a Strong password" class="form-control"
					name="pass" id="myInput" value="<%=dpass%>" minlength="6" required> <br>
				<br>

			</div>
			<div class="form-check">
				<input type="checkbox" onclick="myFunction()"> <label
					class="form-check-label" for="gridCheck"> Show Password </label>
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
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control" id="inputAddress"
					placeholder="Enter Your Address " value="<%=bb.getAddress() %>" required name="address">
			</div>
			<div class="form-group">
				<label for="inputAddress2">Area</label> <input type="text"
					class="form-control" id="inputAddress2"
					placeholder="Enter Your Area" value="<%=bb.getArea()%>" required name="area">
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">City</label> <input type="text"
						class="form-control" id="inputCity" required value="<%=bb.getCity() %>"name="city">
				</div>
				<div class="form-group col-md-4">
					<label for="inputCity">State</label> <input type="text"
						class="form-control" id="inputCity" required value="<%=bb.getState() %>" name="state">
				</div>

				<div class="form-group col-md-2">
					<label for="inputZip">Zip</label> <input type="text"
						class="form-control" id="inputZip" required value="<%=bb.getZip() %>" name="zip">
				</div>
			</div>



			<div class="form-group row">
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">Update</button>
					&nbsp;&nbsp;&nbsp;
					<button type="reset" class="btn btn-danger">clear</button>
				</div>
			</div>
		</form>
		<br> <br>
	</div>

</body>
</html>

