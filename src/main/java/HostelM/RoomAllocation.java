package HostelM;

import java.io.IOException;
import java.io.PrintWriter;
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
	private List<Integer> availableRoomsList;

       
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
		String jdbcUrl ="jdbc:mysql://localhost:3306/roomallocation";
        String username = "root";
        String password = "cf7oXIVIFhxQmb9";

        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String sql = "SELECT room_id FROM roomstu WHERE IsAvailable =null";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Integer> availableRoomsList = new ArrayList<>();
            while (resultSet.next()) {
                int roomNumber = resultSet.getInt("room_id");
                availableRoomsList.add(roomNumber);
               // PrintWriter out = response.getWriter();
                //System.out.println("Available Room Number: " + roomNumber);
            }
            request.setAttribute("availableRoomsList", availableRoomsList);
        } catch (SQLException e) {
            e.printStackTrace();
        }

		
       
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
