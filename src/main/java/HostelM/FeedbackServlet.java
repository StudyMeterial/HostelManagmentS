package HostelM;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final List<FeedBackCla> feedbackList = new ArrayList<>();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String studentName = request.getParameter("studentName");
        String feedbackText = request.getParameter("feedback");

        FeedBackCla feedback = new FeedBackCla();
        feedback.setStudentName(studentName);
        feedback.setFeedback(feedbackText);
        feedback.setDate(new Date());

        feedbackList.add(feedback);

        response.sendRedirect("MessController.jsp");
	}

}
