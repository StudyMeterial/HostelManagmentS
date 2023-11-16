<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Allocation Confirmation</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 600px;
            margin-top: 50px;
        }

        h1 {
            color: #007bff;
        }

        .confirmation-message {
            margin-top: 20px;
        }

        .back-to-home {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container text-center">
        <h1 class="mb-4">Room Allocation Confirmation</h1>
        <div class="confirmation-message">
            <c:choose>
                <c:when test="${param.action == 'allocate'}">
                    <p class="text-success">Room allocated successfully for student: ${param.student_id}</p>
                </c:when>
                <c:when test="${param.action == 'deallocate'}">
                    <p class="text-success">Room deallocated successfully for room ID: ${param.roomIdToDeallocate}</p>
                </c:when>
                <c:otherwise>
                    <p class="text-danger">Invalid action</p>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="back-to-home">
            <p><a class="btn btn-primary" href="Home.jsp">Back to Home</a></p>
        </div>
    </div>

    <!-- Add Bootstrap JS and Popper.js (required for Bootstrap) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>





