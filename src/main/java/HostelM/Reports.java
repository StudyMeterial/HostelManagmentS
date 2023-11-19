package HostelM;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reports
 */
@WebServlet("/Reports")
public class Reports extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reports() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		    String occupancyReport = "Occupancy Report: Date: November 17, 2023\r\n"
		    		+ "\r\n"
		    		+ "Occupancy Status:\r\n"
		    		+ "\r\n"
		    		+ "Total Number of Rooms: 50\r\n"
		    		+ "Occupied Rooms: 45\r\n"
		    		+ "Vacant Rooms: 5\r\n"
		    		+ "\r\n"
		    		+ "Room Details:\r\n"
		    		+ "\r\n"
		    		+ "Room 101: Occupied (Resident ID: 12345)\r\n"
		    		+ "Room 102: Occupied (Resident ID: 67890)\r\n"
		    		+ "Room 103: Vacant\r\n"
		    		+ "Room 104: Occupied (Resident ID: 54321, Maintenance: Pending)\r\n"
		    		+ "\r\n"
		    		+ "Remarks:\r\n"
		    		+ "- Room 103 is vacant and ready for new admissions.\r\n"
		    		+ "- Room 104 needs maintenance; resident scheduled to check out on November 20, 2023.\r\n"
		    		+ "\r\n"
		    		+ "This report is generated to monitor room utilization and plan for future admissions.\r\n"
		    		+ "\r\n"
		    		+ ""; // Replace with actual data
	        String financialReport = "Financial Report: Financial Report for the Month of October 2023\r\n"
	        		+ "\r\n"
	        		+ "Income:\r\n"
	        		+ "Hostel Fees Collected: $50,000\r\n"
	        		+ "Other Income (Vending machines, etc.): $1,000\r\n"
	        		+ "\r\n"
	        		+ "Total Income: $51,000\r\n"
	        		+ "\r\n"
	        		+ "Expenses:\r\n"
	        		+ "Utilities: $8,000\r\n"
	        		+ "Maintenance: $5,000\r\n"
	        		+ "Staff Salaries: $15,000\r\n"
	        		+ "Miscellaneous Expenses: $2,000\r\n"
	        		+ "\r\n"
	        		+ "Total Expenses: $30,000\r\n"
	        		+ "\r\n"
	        		+ "Net Profit: $21,000\r\n"
	        		+ "\r\n"
	        		+ "Remarks:\r\n"
	        		+ "- Outstanding Payments: $2,000\r\n"
	        		+ "- Financial health is stable; expenses are within budget.\r\n"
	        		+ "\r\n"
	        		+ "This report is generated monthly to assess the hostel's financial performance.\r\n"
	        		+ "\r\n"
	        		+ ""; // Replace with actual data
	        String attendanceReport = "Attendance Report: Attendance Report for the Week of November 10-16, 2023\r\n"
	        		+ "\r\n"
	        		+ "Resident Attendance:\r\n"
	        		+ "\r\n"
	        		+ "Resident ID: 12345\r\n"
	        		+ "- Monday: Present\r\n"
	        		+ "- Tuesday: Present\r\n"
	        		+ "- Wednesday: Absent (Leave Request Approved)\r\n"
	        		+ "- Thursday: Present\r\n"
	        		+ "- Friday: Present\r\n"
	        		+ "\r\n"
	        		+ "Resident ID: 67890\r\n"
	        		+ "- Monday: Present\r\n"
	        		+ "- Tuesday: Present\r\n"
	        		+ "- Wednesday: Present\r\n"
	        		+ "- Thursday: Present\r\n"
	        		+ "- Friday: Present\r\n"
	        		+ "\r\n"
	        		+ "Disciplinary Actions:\r\n"
	        		+ "- No disciplinary actions reported this week.\r\n"
	        		+ "\r\n"
	        		+ "This report is generated weekly to monitor resident attendance and ensure compliance.\r\n"
	        		+ "\r\n"
	        		+ ""; // Replace with actual data

	        // Set the reports as attributes in the request object
	        request.setAttribute("occupancyReport", occupancyReport);
	        request.setAttribute("financialReport", financialReport);
	        request.setAttribute("attendanceReport", attendanceReport);

	        // Forward the request to the JSP page
	        request.getRequestDispatcher("/Reports.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
