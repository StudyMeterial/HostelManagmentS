<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="HostelM.MessPlan" %>
<%@ page import="HostelM.FeedBack" %>
<%@ page import="HostelM.MessController" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mess/Food Management</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add your custom styles here -->
    <style>
        /* Add your custom styles */
    </style>
</head>
<body>
    <div class="container">
        <h2>Meal Plans</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Day</th>
                    <th>Breakfast</th>
                    <th>Lunch</th>
                    <th>Dinner</th>
                </tr>
            </thead>
            <tbody>
               <%
    List<MessPlan> mealPlans = (List<MessPlan>) request.getAttribute("mealPlans");
    if (mealPlans != null) {
        for (MessPlan mealPlan : mealPlans) {
%>
            <tr>
                <td><%= mealPlan.getDay() %></td>
                <td><%= mealPlan.getBreakfast() %></td>
                <td><%= mealPlan.getLunch() %></td>
                <td><%= mealPlan.getDinner() %></td>
            </tr>
<%
        }
    } else {
%>
        <tr>
            <td colspan="4">No meal plans available</td>
        </tr>
<%
    }
%>

            </tbody>
        </table>

        <h2>Provide Feedback</h2>
        <form action="MessControllerServlet" method="post">
            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="text" class="form-control" id="studentId" name="studentId" required>
            </div>
            <div class="form-group">
                <label for="feedbackText">Feedback:</label>
                <textarea class="form-control" id="feedbackText" name="feedbackText" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="specialRequest">Special Meal Request:</label>
                <textarea class="form-control" id="specialRequest" name="specialRequest" rows="2"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit Feedback</button>
        </form>
    </div>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
