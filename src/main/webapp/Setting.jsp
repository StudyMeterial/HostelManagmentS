<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Head content (including Bootstrap CSS) goes here -->
</head>
<body class="bg-secondary">
    <header>
        <!-- Header content goes here -->
    </header>

    <div class="container">
        <!-- Display success message if any -->
        <% String successMessage = (String)request.getAttribute("successMessage");
           if (successMessage != null && !successMessage.isEmpty()) { %>
            <div class="alert alert-success" role="alert">
                <%= successMessage %>
            </div>
        <% } %>

        <!-- Settings form -->
        <form action="SettingsServlet" method="post">
            <div class="form-group">
                <label for="hostelName">Hostel Name:</label>
                <input type="text" class="form-control" id="hostelName" name="hostelName" required>
            </div>
            <div class="form-group">
                <label for="timeZone">Time Zone:</label>
                <input type="text" class="form-control" id="timeZone" name="timeZone" required>
            </div>
            <button type="submit" class="btn btn-primary">Save Settings</button>
        </form>
    </div>

    <!-- Footer content goes here -->

    <!-- JavaScript and Bootstrap JS goes here -->
</body>
</html>
