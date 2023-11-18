package HostelM;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LeaveRequestServlet
 */
@WebServlet("/LeaveRequestServlet")
public class LeaveRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveRequestServlet() {
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
		
		
		
		 String studentName = request.getParameter("studentName");
	        String startDate = request.getParameter("startDate");
	        String endDate = request.getParameter("endDate");
	        String reason = request.getParameter("reason");

	        leaveRequestDao leaveRequest = new leaveRequestDao();
	        leaveRequest.setStudentName(studentName);
	        leaveRequest.setStartDate(startDate);
	        leaveRequest.setEndDate(endDate);
	        leaveRequest.setReason(reason);
	        leaveRequest.setStatus("Pending");

	        LeaveRequestDao2 leaveRequestDAO = new LeaveRequestDao2();
	        leaveRequestDAO.addLeaveRequest(leaveRequest);

	        response.sendRedirect("leaveRequest.jsp");
	}

}
