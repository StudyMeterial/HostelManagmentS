<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Room Allocation</title>
</head>
<body>
	<h1>Available Rooms</h1>
	<table border="1">
		<tr>
			<th>Room ID</th>
			<th>Action</th>
		</tr>
		<ul>
			<c:forEach var="room" items="${availableRoomsList}">
				<tr>
					<td>${room}</td>
					<td>
						<form action="RoomAllocation" method="get">
							Student ID: <input type="text" name="student_id"> <input
								type="hidden" name="room_id" value="${room}"> <input
								type="submit" value="Allocate">
						</form>
					</td>
				</tr>
			</c:forEach>
		</ul>
	</table>
</body>
</html>


