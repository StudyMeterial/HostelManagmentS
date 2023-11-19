package HostelM;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/PersonServlet")
public class PersonServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String roomId = request.getParameter("roomId");
		String personName = request.getParameter("personName");
		String personAge = request.getParameter("personAge");
		
	

		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cutm",
					"root", "cf7oXIVIFhxQmb9");

			PreparedStatement checkStatement = connection
					.prepareStatement("SELECT COUNT(*) FROM people WHERE room_id = ?");
			checkStatement.setInt(1, Integer.parseInt(roomId));
			ResultSet resultSet = checkStatement.executeQuery();
			resultSet.next();
			int numberOfPeopleInRoom = resultSet.getInt(1);

			PreparedStatement roomStatement = connection.prepareStatement("SELECT beds FROM rooms WHERE id = ?");
			roomStatement.setInt(1, Integer.parseInt(roomId));
			ResultSet roomResultSet = roomStatement.executeQuery();
			roomResultSet.next();
			
			int numberOfBedsInRoom = roomResultSet.getInt("beds");

			if (numberOfPeopleInRoom < numberOfBedsInRoom) {
				PreparedStatement preparedStatement = connection
						.prepareStatement("INSERT INTO people (person_name, person_age, room_id) VALUES (?, ?, ?)");
				preparedStatement.setString(1, personName);
				preparedStatement.setInt(2, Integer.parseInt(personAge));
				preparedStatement.setInt(3, Integer.parseInt(roomId));
				preparedStatement.executeUpdate();
			} else {
				System.out.println("Room is full. Cannot add more people.");
				// Handle the error as needed (redirect to an error page or display an error
				// message)
			}

			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		response.sendRedirect("addPerson.jsp");
	}
}
