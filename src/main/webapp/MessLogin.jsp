<!DOCTYPE html>
<html>
<head>
    <title>Navigation Bar Example</title>
    <style>
        /* Basic styling for the navigation bar */
        ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        ul.navbar li {
            float: left;
        }

        ul.navbar li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        ul.navbar li a:hover {
            background-color: #ddd;
            color: black;
        }
    </style>
</head>
<body>

    <h2>Centurian Mess</h2>

    <!-- Navigation bar -->
    <ul class="navbar">
        <li><a href="#">Home</a></li>
        <li><a href="Meal_plans.jsp">Add Food Item</a></li>
        <li><a href="#">FeedBack From Student</a></li>
        <li><a href="#">Contact</a></li>
    </ul>

    <p>This is the main content of your page.</p>

</body>
</html>
