package HostelM;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RoomAllocation
 */
@WebServlet("/RoomAllocation")
public class RoomAllocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Object availableRoomsList;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomAllocation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/*HttpSession session=request.getSession();
		  session.removeAttribute("username");
		  session.invalidate();
		  response.sendRedirect("RoomAllocation.jsp");
		  
		  
		  String studentName = request.getParameter("studentName");
	        String roomNumber = request.getParameter("roomNumber");

	        // Perform room allocation logic here (e.g., save to a database or in-memory structure)

	        // Send a response to the user
	        response.setContentType("text/html");
	        response.getWriter().println("<html><body>");
	        response.getWriter().println("<div class='container'>");
	        response.getWriter().println("<h2>Room Allocation Result</h2>");
	        response.getWriter().println("<p>Student Name: " + studentName + "</p>");
	        response.getWriter().println("<p>Room Number: " + roomNumber + "</p>");
	        response.getWriter().println("<p>Room allocated successfully!</p>");
	        response.getWriter().println("</div>");
	        response.getWriter().println("</body></html>");*/
		
		
		//Connection connection = DatabaseConnection.getConnection();
        // Write SQL query to retrieve available rooms
        // Execute the query and store the result in a List or other data structure
        // Set the list as an attribute in the request
		String jdbcUrl = "jdbc:mysql://your_database_host:3306/roomallocation";
        String username = "root";
        String password = "cf7oXIVIFhxQmb9";

        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String sql = "SELECT room_id FROM roomstu WHERE IsAvailable =1";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Integer> availableRoomsList = new ArrayList<>();
            while (resultSet.next()) {
                int roomNumber = resultSet.getInt("room_id");
                availableRoomsList.add(roomNumber);
                System.out.println("Available Room Number: " + roomNumber);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

		
        request.setAttribute("availableRoomsList", availableRoomsList);
        request.getRequestDispatcher("RoomAllocation.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		
	}

}
