package HostelM;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RoomAllocationServlet
 */
@WebServlet("/allocation")
public class AllocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllocationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve student ID and room ID from the form
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        int roomId = Integer.parseInt(request.getParameter("roomId"));

        // Update the roomId for the selected student in the database
        Connection conn = null;
        try {
            conn = DatabaseConnection.getConnection();
            String updateQuery = "UPDATE user2 SET id = ? WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(updateQuery);
            pstmt.setInt(1, roomId);
            pstmt.setInt(2, studentId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        // Redirect back to the allocation page after updating
        response.sendRedirect("allocation.jsp");
    }
}