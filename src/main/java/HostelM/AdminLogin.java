package HostelM;

import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		
        PrintWriter out=response.getWriter();
		
        
		String username=request.getParameter("username");
		String nPassword=request.getParameter("npassword");
		
		String sql="select * from admin_signup where username=? and Password=?";
		HttpSession session=request.getSession(true);
		RequestDispatcher rd=null;
		try{
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin_hostel","root","cf7oXIVIFhxQmb9");
			 PreparedStatement ps=con.prepareStatement(sql);
			 ps.setString(1,username );
			 ps.setString(2,nPassword);
			 
			 ResultSet rs=ps.executeQuery();
			
			 if(rs.next()) {
				 
				 session.setAttribute("username", username);
				 rd=request.getRequestDispatcher("AdminLogin.jsp");
				 rd.forward(request, response);
			 }
			 else {
				 
				 request.setAttribute("status2", "failed");
				 rd=request.getRequestDispatcher("BoysLogin");
				 rd.forward(request, response);

			 }
			 
			 
		}
			 catch(Exception e) {
				 response.sendRedirect("BoysLogin");
				 e.printStackTrace();
				 
			 }
		
		
	}
	}

