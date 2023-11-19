<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="HostelM.RoomAllocation"%>
<%@ page import="HostelM.AllocateRoomServlet"%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Room Allocation</title>
<!-- Add Bootstrap CSS link -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
/* Add your custom styles here */
body {
	padding: 20px;
}

.container {
	max-width: 600px;
}

form {
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Available Rooms</h2>
		<form action="AllocateRoomServlet" method="post">
			<div class="form-group">
				<label for="room_id">Select Room:</label> <select
					class="form-control" name="room_id">
					<%
					List<Integer> availableRoomsList = (List<Integer>) request.getAttribute("availableRoomsList");
					if (availableRoomsList != null) {
						for (Integer roomNumber : availableRoomsList) {
					%>
					<option value="<%=roomNumber%>">Room
						<%=roomNumber%></option>
					<%
					}
					}
					%>
				</select>
			</div>
			<div class="form-group">
				<label for="student_id">Student ID:</label> <input type="text"
					class="form-control" name="student_id" required />
			</div>
			<button type="submit" class="btn btn-primary">Allocate Room</button>
		</form>

		<h2>Deallocate Room</h2>
		<form action="AllocateRoomServlet" method="post">
			<div class="form-group">
				<label for="room_id_deallocate">Room ID to deallocate:</label> <input
					type="text" class="form-control" name="room_id" required />
			</div>
			<button type="submit" class="btn btn-danger">Deallocate Room</button>
		</form>
	</div>

	<!-- Add Bootstrap JS and Popper.js (required for Bootstrap) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
