package HostelM;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/allocateRoom")
public class AllocateRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AllocateRoomServlet() {
        super();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	

    	 int studentId = Integer.parseInt(request.getParameter("students"));
         int roomId = Integer.parseInt(request.getParameter("rooms"));

         // Perform allocation logic and update the database
         boolean allocationSuccess = allocateRoom(studentId, roomId);

         if (allocationSuccess) {
             // Redirect to a confirmation page
             response.sendRedirect("confirmation.jsp");
         } else {
             // Redirect to an error page
             response.sendRedirect("Error.jsp");
         }
     }

     private boolean allocateRoom(int studentId, int roomId) {
         try (Connection connection = DatabaseConnection.getConnection();
              PreparedStatement preparedStatement = connection.prepareStatement("UPDATE user2 SET allocated_room = ? WHERE id = ?")) {

             preparedStatement.setInt(1, roomId);
             preparedStatement.setInt(2, studentId);

             int rowsUpdated = preparedStatement.executeUpdate();

             return rowsUpdated > 0;

         } catch (SQLException e) {
             e.printStackTrace();
             return false;
         }
     }
     
}

