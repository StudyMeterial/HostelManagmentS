<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- <!DOCTYPE html>
<html>
<head>
    <title>Room Allocation Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 20px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Stylish Room Allocation Dashboard</h1>
        <form action="RoomAllocation" method="get">
            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required><br><br>
            <label for="roomNumber">Room Number:</label>
            <input type="text" id="roomNumber" name="roomNumber" required><br><br>
            <input type="submit" value="Allocate Room">
        </form>
    </div>
</body>
</html> -->


<!DOCTYPE html>
<html>
<head>
    <title>Room Allocation</title>
</head>
<body>
    <h1>Available Rooms</h1>
    <ul>
        <c:forEach var="room" items="${IsAvailable}">
            <li>Room ID: ${room.room_id}
                <form action="AllocateRoomServlet" method="post">
                    Student ID: <input type="text" name="student_id">
                    <input type="hidden" name="room_id" value="${room.room_id}">
                    <input type="submit" value="Allocate">
                </form>
            </li>
        </c:forEach>
    </ul>
</body>
</html>

