<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="HostelM.LeaveRequestDao2" %>
<%@ page import="HostelM.leaveRequestDao" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Reports</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px;
            margin-bottom: 20px;
        }

        main {
            padding: 20px;
        }

        .reports {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        h2 {
            color: #007bff;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Your Hostel Management</h1>
    </header>

    <main>
        <div class="reports">
            <h2>Hostel Reports</h2>
            <ul>
                <li>${requestScope.occupancyReport}</li>
                <li>${requestScope.financialReport}</li>
                <li>${requestScope.attendanceReport}</li>
                <!-- Add more reports as needed -->
            </ul>
        </div>

        <h2>Leave Requests Status - Admin Reports</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Student Name</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Reason</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        LeaveRequestDao2 leaveRequestDAO = new LeaveRequestDao2();
                        List<leaveRequestDao> leaveRequests = leaveRequestDAO.getAllLeaveRequests();
                        for (leaveRequestDao leaveRequest : leaveRequests) {
                    %>
                        <tr>
                            <td><%= leaveRequest.getStudentName() %></td>
                            <td><%= leaveRequest.getStartDate() %></td>
                            <td><%= leaveRequest.getEndDate() %></td>
                            <td><%= leaveRequest.getReason() %></td>
                            <td><%= leaveRequest.getStatus() %></td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </main>
    
    <footer>
        &copy; 2023 Your Hostel Management. All rights reserved.
    </footer>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
