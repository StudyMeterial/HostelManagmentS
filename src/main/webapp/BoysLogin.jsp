<!DOCTYPE html>
<html>
<head>
<title>Student Dashboard</title>
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
	padding: 21px;
	border-radius: 11px;
	margin-top: 21px;
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Hostel Management</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="leaveRequest.jsp">Leave</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="StudentProfile">Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="MealNotification.jsp">Meal Notifications</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">Feedback</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Logout">Logout</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Pay</a></li>
			</ul>
		</div>
	</nav>

	<div class="carousel-inner">
		<div class="carousel-item active">
			<img
				src="images/2d hand drawing doll house room of a blue large be.jpg"
				class="d-block w-100 mt-4" alt="...">
			<div class="carousel-caption d-none d-md-block">
				<h5>First slide label</h5>
				<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
			</div>
		</div>
		<div class="carousel-item">
			<img
				src="images/programmer from belarus in Vyshyvanka is working o.jpg"
				class="d-block w-100 mt-4" alt="...">
			<div class="carousel-caption d-none d-md-block">
				<h5>Second slide label</h5>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="https://source.unsplash.com/500x200/?garden,university"
				class="d-block w-100 mt-4" alt="...">
			<div class="carousel-caption d-none d-md-block">
				<h5>Third slide label</h5>
				<p>Praesent commodo cursus magna, vel scelerisque nisl
					consectetur.</p>
			</div>
		</div>
	</div>

</body>
</html>





