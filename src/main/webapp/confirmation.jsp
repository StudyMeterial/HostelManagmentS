<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Room Allocation Confirmation</title>
</head>
<body>
    <div align="center">
        <h1>Room Allocation Confirmation</h1>
        <c:choose>
            <c:when test="${param.action == 'allocate'}">
                <p>Room allocated successfully for student: ${param.student_id}</p>
            </c:when>
            <c:when test="${param.action == 'deallocate'}">
                <p>Room deallocated successfully for room ID: ${param.roomIdToDeallocate}</p>
            </c:when>
            <c:otherwise>
                <p>Invalid action</p>
            </c:otherwise>
        </c:choose>
        <p><a href="Home.jsp">Back to Home</a></p>
    </div>
</body>
</html>
