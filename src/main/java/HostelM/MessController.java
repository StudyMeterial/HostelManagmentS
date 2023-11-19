package HostelM;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MessController
 */
@WebServlet("/MessController")
public class MessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessController() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Initialize MessDao with sample meal plans
        MessDao.initializeMealPlans(createSampleMealPlans());
		
		
        // Retrieve meal plans from the database
        List<MessPlan> mealPlans = MessController.getMealPlans();
        request.setAttribute("mealPlans", mealPlans);

        // Forward the request to the JSP page to display meal plans
        RequestDispatcher dispatcher = request.getRequestDispatcher("Meal_plans.jsp");
        dispatcher.forward(request, response);

	}

	private static List<MessPlan> getMealPlans() {
	    // Call the method from MessDao to retrieve the meal plans
	    return MessDao.getMealPlans();
	   

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		// Handle feedback submission
        String studentId = request.getParameter("studentId");
        String feedbackText = request.getParameter("feedbackText");
        String specialRequest = request.getParameter("specialRequest");

        FeedBack feedback = new FeedBack();
        feedback.setStudentId(studentId);
        feedback.setFeedbackText(feedbackText);
        feedback.setSpecialRequest(specialRequest);

        MessController.submitFeedback(feedback);

        // Redirect back to the meal plans page
        response.sendRedirect("MessControllerServlet");
	}

	private static void submitFeedback(FeedBack feedback) {
		// TODO Auto-generated method stub
		 MessDao.submitFeedback(feedback);
		
	}
	// Method to create sample meal plans
    private List<MessPlan> createSampleMealPlans() {
        List<MessPlan> sampleMealPlans = new ArrayList<>();
        sampleMealPlans.add(new MessPlan("Monday", "Omelette", "Chicken Curry", "Pasta"));
        sampleMealPlans.add(new MessPlan("Tuesday", "Pancakes", "Vegetarian Curry", "Pizza"));
        // Add more meal plans as needed
        System.out.println("Sample Meal Plans: " + sampleMealPlans);
        return sampleMealPlans;
    }

}
