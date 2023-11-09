<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hostel Management Dashboard</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add custom CSS for styling -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Hostel Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="n5.png" class="card-img-top" alt="Student Image">
                    <div class="card-body">
                        <h5 class="card-title">Student Name</h5>
                        <p class="card-text">Student ID: ABC123</p>
                        <p class="card-text">Room Number: 101</p>
                        <p class="card-text">Contact: +1 123-456-7890</p>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <!-- Add various panels for managing tasks and information -->
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Academic Information</h5>
                        <!-- Add academic information here -->
                    </div>
                </div>
                <div class="card mt-3">
                    <div class="card-body">
                        <h5 class="card-title">Room Information</h5>
                        <!-- Add room-related information here -->
                    </div>
                </div>
                <!-- Add more panels as needed -->
            </div>
        </div>
    </div>

    <!-- Add Bootstrap and custom JavaScript links if needed -->
</body>
</html>