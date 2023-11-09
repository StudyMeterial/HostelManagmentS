package HostelM;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoysLogin
 */
@WebServlet("/BoysLogin")
public class BoysLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoysLogin() {
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
		
		String username=request.getParameter("username");
		String nPassword=request.getParameter("npassword");
		
		
		String sql="select * from login where username=? and Password=?";
		try{
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/boys_hostel","root","cf7oXIVIFhxQmb9");
			 PreparedStatement ps=con.prepareStatement(sql);
			 ps.setString(1,username );
			 ps.setString(2,nPassword);
			 
			 ResultSet rs=ps.executeQuery();
			 
			 if(rs.next()) {
				 
				 RequestDispatcher rd=request.getRequestDispatcher("BoysLogin.jsp");
				 rd.forward(request, response);
				

	                
	                
			 }else {
				 RequestDispatcher rd=request.getRequestDispatcher("GirlsLogin");
				 rd.forward(request, response);
			 }
			
		}
			 catch(Exception e) {
				 System.out.println("error");
			 }
	}
	}


