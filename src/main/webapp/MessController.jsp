<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mess Controller</title>
</head>
<body>
    <h2>Feedback Received</h2>

    <c:forEach var="feedback" items="${feedbackList}">
        <div>
            <strong>${feedback.studentName}</strong> said on ${feedback.date}:<br>
            ${feedback.feedback}
        </div>
        <hr>
    </c:forEach>
</body>
</html>


