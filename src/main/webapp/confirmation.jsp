<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
        <h1>Room Allocation Confirmation</h1>
        <p>
            <%-- You can use request parameters to display relevant information --%>
            <% if (request.getParameter("action").equals("allocate")) { %>
                Room allocated successfully for student: <%= request.getParameter("student_id") %>
            <% } else if (request.getParameter("action").equals("deallocate")) { %>
                Room deallocated successfully for room ID: <%= request.getParameter("roomIdToDeallocate") %>
            <% } %>
        </p>
        <p><a href="Home.jsp">Back to Home</a></p>
    </div>
</body>
</html>