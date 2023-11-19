<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Centurian Mess</title>
<!-- Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy6n8c4g5anXqJDDa3grz4iOZq27W93Kb1"
	crossorigin="anonymous">
<style>
body {
	background-color: #f8f9fa;
	padding-top: 56px;
	/* Adjusted to accommodate the fixed navbar height */
}

h2 {
	text-align: center;
	margin-top: 20px;
}

/* Styling for the navigation bar */
ul.navbar {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	position: fixed;
	width: 100%;
	top: 0;
	z-index: 1000;
}

ul.navbar li {
	float: left;
}

ul.navbar li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

ul.navbar li a:hover {
	background-color: #ddd;
	color: black;
}

/* Main content styling */
main {
	margin: 20px;
}
</style>
</head>
<body>

	<!-- Navigation bar -->
	<ul class="navbar">
		<li><a href="#">Home</a></li>
		<li><a href="Meal_plans.jsp">Add Food Item</a></li>
		<li><a href="#">FeedBack From Student</a></li>
		<li><a href="Logout">Logout</a></li>
	</ul>

	<h2>Centurian Mess</h2>

	<!-- Main content -->
	<main>
		<p>This is the main content of your page.</p>
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
