package HostelM;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

			
			
			//getting all the incoming details from the  request...
	response.sendRedirect("signup.jsp");
	String uname=request.getParameter("name");
	String uemail=request.getParameter("email");
	String upwd=request.getParameter("pass");
	String umobile=request.getParameter("contact");
	RequestDispatcher dispatcher=null;
	Connection con=null;
	try
	{
      
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cutm?useSSL=false","root","cf7oXIVIFhxQmb9");
		 PreparedStatement pst=con.prepareStatement("insert into user2(username,email,password,phone) values(?,?,?,?) ");
		 pst.setString(1, uname);
		 pst.setString(2, uemail);
		 pst.setString(3, upwd);
		 pst.setString(4, umobile);
       	int rowCount= pst.executeUpdate();
       	dispatcher=request.getRequestDispatcher("signup.jsp");
       	
       	if(rowCount>0)
       	{
       		request.setAttribute("status", "success");
       	}else {
       		request.setAttribute("status", "failed");
       	}
       	dispatcher.forward(request,response);

	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}
}
	
