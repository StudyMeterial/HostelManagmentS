<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Person to Room</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- Your custom CSS file (if any) -->
<link rel="stylesheet" href="styles.css">

<style>
/* Custom CSS styles */
body {
	background-color: #f8f9fa;
	color: #495057;
}

h1 {
	color: #007bff;
}

form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	margin-bottom: 0.5rem;
	color: #007bff;
}

input[type="text"] {
	width: 100%;
	padding: 0.375rem 0.75rem;
	margin-bottom: 1rem;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

button {
	display: block;
	width: 100%;
	padding: 0.75rem;
	color: #fff;
	background-color: #007bff;
	border: 1px solid #007bff;
	border-radius: 0.25rem;
	transition: background-color 0.15s ease-in-out, border-color 0.15s
		ease-in-out;
}

button:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}
</style>
</head>
<body>
	<!-- Your existing HTML content -->

	<h1 class="mt-4">Add Person to Room</h1>
	<form action="PersonServlet" method="post" class="mt-3">
		<input type="hidden" name="roomId"
			value="<%=request.getParameter("roomId")%>" class="form-control mb-2">
		<label for="personName">Person Name:</label> <input type="text"
			name="personName" class="form-control mb-2"> <label
			for="personAge">Person Age:</label> <input type="text"
			name="personAge" class="form-control mb-2">
		<button type="submit" class="btn btn-primary">Add Person</button>
	</form>

	<!-- Bootstrap JS and Popper.js CDN (if you need Bootstrap's JavaScript features) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
