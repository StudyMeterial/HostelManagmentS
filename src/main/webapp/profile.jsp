
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Include your custom CSS for additional styling -->
<link rel="stylesheet" href="custom.css">

<style>
/* Add your custom styles here */
.dashboard-container {
	margin-top: 20px;
}

.payment-form {
	display: none;
	background-color: #f2f2f2;
	padding: 20px;
	border-radius: 10px;
	margin-top: 20px;
}
</style>
</head>
<body>
	<!-- Dashboard Content -->
	<div class="container mt-4" id="pro">
		<div class="row">
			<div class="col-md-4">
				<div class="card" style="background-color: #48D1CC;">
					<img src="images/n5.png" class="card-img-top" alt="Student Image">
					<div class="card-body">

						<h5 class="card-title">Profile</h5>

				
						<table border="1">
							<tr>
								<th>id</th>
								<th>Username</th>
								<th>Password</th>
							</tr>
							<%
							Connection conn = null;
							Statement stmt = null;
							ResultSet rs = null;
							try {
								// Load the JDBC driver
								Class.forName("com.mysql.cj.jdbc.Driver");

								// Establish a connection
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boys_hostel", "root", "cf7oXIVIFhxQmb9");

								// Create a statement
								stmt = conn.createStatement();

								// Execute SQL query
								String sql = "SELECT * FROM login";
								rs = stmt.executeQuery(sql);

								// Iterate through the result set and display data
								while (rs.next()) {
									int id = rs.getInt("id");
									String username = rs.getString("username");
									String password = rs.getString("Password");
							%>
							<tr>
								<td><%=id%></td>
								<td><%=username%></td>
								<td><%=password%></td>
							</tr>
							<%
							}
							} catch (Exception e) {
							e.printStackTrace();
							} finally {
							// Close the database connections
							try {
							if (rs != null)
								rs.close();
							if (stmt != null)
								stmt.close();
							if (conn != null)
								conn.close();
							} catch (SQLException se) {
							se.printStackTrace();
							}
							}
							%>
						</table>

					</div>
				</div>
			</div>
			<div class="col-md-6">
				<h2>Payment</h2>
				<p>Pay your hostel fees:</p>
				<button class="btn btn-primary" id="show-payment-form">Make
					Payment</button>
				<form class="payment-form">
					<div class="form-group">
						<label for="amount">Payment Amount</label> <input type="text"
							class="form-control" id="amount" placeholder="Enter the amount">
					</div>
					<div class="form-group">
						<label for="card">Card Number</label> <input type="text"
							class="form-control" id="card"
							placeholder="Enter your card number">
					</div>
					<div class="form-group">
						<label for="expiry">Card Expiry</label> <input type="text"
							class="form-control" id="expiry" placeholder="MM/YY">
					</div>
					<div class="form-group">
						<label for="cvv">CVV</label> <input type="text"
							class="form-control" id="cvv" placeholder="Enter CVV">
					</div>
					<button type="submit" class="btn btn-primary">Submit
						Payment</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Add Bootstrap JavaScript (from CDN) and jQuery (required for Bootstrap) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		// JavaScript to toggle the payment form
		$(document).ready(function() {
			$("#show-payment-form").click(function() {
				$(".payment-form").toggle();
			});
		});
	</script>

	<!-- Include Bootstrap and custom JavaScript files if needed -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>





