<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="HostelM.LeaveRequestDao2"%>
<%@ page import="HostelM.leaveRequestDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Leave Request</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 0;
}

h2 {
	color: #007bff;
}

form {
	margin-bottom: 20px;
}

table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #dee2e6;
	padding: 12px;
	text-align: left;
}

th {
	background-color: #007bff;
	color: white;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h2 class="mt-4 mb-4 text-center">Leave Request Form</h2>
				<form action="LeaveRequestServlet" method="post">
					<div class="form-group">
						<label for="studentName">Student Name:</label> <input type="text"
							class="form-control" id="studentName" name="studentName" required>
					</div>
					<div class="form-group">
						<label for="startDate">Start Date:</label> <input type="date"
							class="form-control" id="startDate" name="startDate" required>
					</div>
					<div class="form-group">
						<label for="endDate">End Date:</label> <input type="date"
							class="form-control" id="endDate" name="endDate" required>
					</div>
					<div class="form-group">
						<label for="reason">Reason:</label>
						<textarea class="form-control" id="reason" name="reason" rows="4"
							required></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>

				<h2 class="mt-4 mb-4">Leave Requests Status</h2>
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Student Name</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>Reason</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<%
							LeaveRequestDao2 leaveRequestDAO = new LeaveRequestDao2();
							List<leaveRequestDao> leaveRequests = leaveRequestDAO.getAllLeaveRequests();
							for (leaveRequestDao leaveRequest : leaveRequests) {
							%>
							<tr>
								<td><%=leaveRequest.getStudentName()%></td>
								<td><%=leaveRequest.getStartDate()%></td>
								<td><%=leaveRequest.getEndDate()%></td>
								<td><%=leaveRequest.getReason()%></td>
								<td><%=leaveRequest.getStatus()%></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS and Popper.js -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>





</html>
