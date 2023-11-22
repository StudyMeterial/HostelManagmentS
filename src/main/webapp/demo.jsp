<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Room Allocation</title>
</head>
<body>
    <h2>Room Allocation Page</h2>

    <form action="allocateRoom" method="post">
        <label for="student">Select Student:</label>
        <select name="student" id="student">
            <c:forEach var="student" items="${students}">
                <option value="${student.studentId}">${student.studentName}</option>
            </c:forEach>
        </select>

        <label for="room">Select Room:</label>
        <select name="room" id="room">
            <c:forEach var="room" items="${rooms}">
                <option value="${room.roomId}">${room.roomId} - Floor ${room.floorNumber}</option>
            </c:forEach>
        </select>

        <input type="submit" value="Allocate Room">
    </form>
</body>
</html>
