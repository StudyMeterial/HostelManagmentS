<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="HostelM.MessPlan"%>
<%@ page import="HostelM.MessDao"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food Routine</title>
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

.food-image {
	max-width: 100px;
	max-height: 100px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h2 class="mt-4 mb-4 text-center">Food Routine Menu</h2>
				<form action="FoodRoutineServlet" method="post">
					<div class="form-group">
						<label for="day">Day:</label> <input type="text"
							class="form-control" id="day" name="day" required>
					</div>
					<div class="form-group">
						<label for="breakfast">Breakfast:</label> <input type="text"
							class="form-control" id="breakfast" name="breakfast" required>
					</div>
					<div class="form-group">
						<label for="lunch">Lunch:</label> <input type="text"
							class="form-control" id="lunch" name="lunch" required>
					</div>
					<div class="form-group">
						<label for="dinner">Dinner:</label> <input type="text"
							class="form-control" id="dinner" name="dinner" required>
					</div>
					
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>

				<h2 class="mt-4 mb-4">Food Routine</h2>
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
							MessDao messdao = new MessDao();
							List<MessPlan> foodRoutines =messdao.getAllMessRequests();
							for (MessPlan foodRoutine : foodRoutines) {
							%>
							<tr>
								<td><%=foodRoutine.getDay()%></td>
								<td><%=foodRoutine.getBreakfast()%></td>
								<td><%=foodRoutine.getLunch()%></td>
								<td><%=foodRoutine.getDinner()%></td>
								
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
