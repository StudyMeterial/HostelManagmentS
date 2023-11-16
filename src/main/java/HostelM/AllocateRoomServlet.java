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

@WebServlet("/AllocateRoomServlet")
public class AllocateRoomServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Define your database connection details here
    private static final String jdbcUrl = "jdbc:mysql://localhost:3306/roomallocation";
    private static final String username = "root";
    private static final String password = "cf7oXIVIFhxQmb9";

    public AllocateRoomServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This method can be used for other purposes or left empty
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String studentId = request.getParameter("student_id");
        String roomId = request.getParameter("room_id");

        // Allocate the room
        if (roomId!= null && !roomId.isEmpty()) {
            int roomId2 = Integer.parseInt(roomId);

            // Allocate the room
            allocateRoom(studentId, roomId2);
            deallocateRoom(roomId2);

            // Redirect to a confirmation page
           // response.sendRedirect("confirmation.jsp");
            response.sendRedirect("confirmation.jsp?action=allocate&student_id=" + studentId);

        } else {
            // Handle the case where roomIdParam is empty
            response.getWriter().println("Error: Room ID parameter is empty");
        }
        

        // Deallocate a room (if needed)
        // deallocateRoom(roomId);

        // Redirect to a confirmation page
        //System.out.print("hello world");
        //response.sendRedirect("confirmation.jsp"); // Replace "confirmation.jsp" with the actual confirmation page URL
        //System.out.print("hello world");
    }

    private void allocateRoom(String studentId, int roomId) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String sql = "UPDATE roomstu SET IsAvailable = 0, student_id = ? WHERE room_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, studentId);
            preparedStatement.setInt(2, roomId);
            preparedStatement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    private void deallocateRoom(int roomId) {
        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String sql = "UPDATE roomstu SET IsAvailable = 1, student_id = NULL WHERE room_id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, roomId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
     
}
