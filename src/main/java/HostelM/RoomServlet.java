package HostelM;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/RoomServlet")
public class RoomServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String floor = request.getParameter("floor");
		String room = request.getParameter("room");

		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cutm",
					"root", "cf7oXIVIFhxQmb9");
			PreparedStatement preparedStatement = connection
					.prepareStatement("INSERT INTO rooms (floor_number, room_number, beds) VALUES (?, ?, 2"
							+ ")");
			preparedStatement.setInt(1, Integer.parseInt(floor));
			preparedStatement.setInt(2, Integer.parseInt(room));
			preparedStatement.executeUpdate();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		response.sendRedirect("index.jsp");
	}
}
