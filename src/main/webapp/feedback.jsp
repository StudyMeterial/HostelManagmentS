<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback Form</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
body {
	background-color: #f8f9fa;
	padding: 20px;
}

h2 {
	color: #007bff;
}

form {
	max-width: 400px;
	margin: 0 auto;
}

label {
	font-weight: bold;
	margin-top: 10px;
}

input, textarea {
	width: 100%;
	padding: 8px;
	margin-top: 5px;
	margin-bottom: 10px;
	box-sizing: border-box;
	border: 1px solid #ced4da;
	border-radius: 4px;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Provide Feedback</h2>

		<form action="FeedbackServlet" method="post">
			<div class="form-group">
				<label for="studentName">Student Name:</label> <input type="text"
					class="form-control" id="studentName" name="studentName" required>
			</div>

			<div class="form-group">
				<label for="feedback">Feedback:</label>
				<textarea class="form-control" id="feedback" name="feedback"
					rows="4" required></textarea>
			</div>

			<button type="submit" class="btn btn-primary">Submit
				Feedback</button>
		</form>
	</div>

	<!-- Bootstrap JS and dependencies (optional, but may be needed for certain features) -->
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Popper.js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
