package HostelM;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RoomInfo
 */
@WebServlet("/RoomInfo")
public class RoomInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		List<Map<String, Object>> students = getStudentsFromDatabase();

        request.setAttribute("studentList", students);
        request.getRequestDispatcher("RoomInfo.jsp").forward(request, response);
    }

    private List<Map<String, Object>> getStudentsFromDatabase() {
        List<Map<String, Object>> students = new ArrayList<>();

        String jdbcUrl = "jdbc:mysql://localhost:3306/cutm";
        String jdbcUsername = "root";
        String jdbcPassword = "cf7oXIVIFhxQmb9";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
            String sql = "SELECT * FROM rooms";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Map<String, Object> student = new HashMap<>();
                student.put("id", resultSet.getInt("id"));
                student.put("floor_number", resultSet.getInt("floor_number"));
                student.put("room_number", resultSet.getInt("room_number"));
                student.put("beds", resultSet.getInt("beds"));
               
                students.add(student);
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return students;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
