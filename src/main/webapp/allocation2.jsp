<%@ page import="java.sql.*"%>
<%@ page import="HostelM.Student"%>
<%@ page import="HostelM.Room"%>
<%@ page import="HostelM.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Room Allocation</title>
<!-- Include your styles or Bootstrap if needed -->
</head>
<body>
	<h2>Room Allocation Page</h2>
	
	<form action="allocation" method="post">
		<label for="studentId">Select Student:</label> <select
			name="studentId">
			<%
			Connection studentConn = null;
			try {
				studentConn = HostelM.DatabaseConnection.getConnection();
				Statement stmt = studentConn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM user2");

				while (rs.next()) {
					HostelM.Student student = new HostelM.Student();
					student.setStudentId(rs.getInt("id"));
					student.setStudentName(rs.getString("username"));

					// Display student details
					out.println("<option value=\"" + student.getStudentId() + "\">" + student.getStudentName() + "</option>");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (studentConn != null) {
					try {
				studentConn.close();
					} catch (SQLException e) {
				e.printStackTrace();
					}
				}
			}
			%>
		</select> <label for="roomId">Select Room:</label> <select name="roomId">
			<%
			Connection roomConn = null;
			try {
				roomConn = HostelM.DatabaseConnection.getConnection();
				Statement stmt = roomConn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM rooms");

				while (rs.next()) {
					HostelM.Room room = new HostelM.Room();
					room.setRoomId(rs.getInt("id"));
					room.setFloorNumber(rs.getInt("floor_number"));
					room.setBeds(rs.getInt("beds"));

					// Display room details
					out.println("<option value=\"" + room.getRoomId() + "\">Room " + room.getRoomId() + " - Beds: " + room.getBeds()
					+ "</option>");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (roomConn != null) {
					try {
				roomConn.close();
					} catch (SQLException e) {
				e.printStackTrace();
					}
				}
			}
			%>
		</select> <input type="submit" value="Allocate Room">
	</form>

	<!-- Include your scripts or Bootstrap JS if needed -->
</body>
</html>
