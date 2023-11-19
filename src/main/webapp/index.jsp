<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Management System</title>

    <!-- Add Bootstrap CSS link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
            padding: 50px 0;
        }

        h1 {
            color: #007bff;
            text-align: center;
            margin-bottom: 40px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <h1>Room Management System</h1>
                <form action="RoomServlet" method="post">
                    <div class="form-group">
                        <label for="floor">Floor:</label>
                        <input type="text" class="form-control" name="floor" required>
                    </div>
                    <div class="form-group">
                        <label for="room">Room:</label>
                        <input type="text" class="form-control" name="room" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Add Room</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Add Bootstrap JS and Popper.js script links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
