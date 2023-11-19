<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="HostelM.MessDao"%>
<%@ page import="HostelM.MessPlan"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Your Hostel Management</title>
<!-- Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy6n8c4g5anXqJDDa3grz4iOZq27W93Kb1"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
}

header {
	background-color: #007bff;
	color: #fff;
	text-align: center;
	padding: 20px 0;
}

main {
	margin: 20px;
}

table {
	width: 100%;
	margin-bottom: 1rem;
	color: #212529;
	border-collapse: collapse;
}

th, td {
	padding: 0.75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6;
}

th {
	background-color: #007bff;
	color: #fff;
}

tbody tr:nth-child(even) {
	background-color: #f8f9fa;
}
</style>
</head>
<body>
	<header>
		<h1>Your Hostel Management</h1>
	</header>
	<main>
		<div class="table-responsive">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Day</th>
						<th>Breakfast</th>
						<th>Lunch</th>
						<th>Dinner</th>
					</tr>
				</thead>
				<tbody>
					<%
					MessDao leaveRequestDAO = new MessDao();
					List<MessPlan> leaveRequests = leaveRequestDAO.getAllMessRequests();
					for (MessPlan leaveRequest : leaveRequests) {
					%>
					<tr>
						<td><%=leaveRequest.getDay()%></td>
						<td><%=leaveRequest.getBreakfast()%></td>
						<td><%=leaveRequest.getLunch()%></td>
						<td><%=leaveRequest.getDinner()%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</main>
	<!-- Bootstrap JS and Popper.js scripts (required for Bootstrap components) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/JmC2uU2MRTPX4jzFp70I5qjFf"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy6n8c4g5anXqJDDa3grz4iOZq27W93Kb1"
		crossorigin="anonymous"></script>
</body>
</html>
