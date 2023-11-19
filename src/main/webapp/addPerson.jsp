<!DOCTYPE html>
<html>
<head>
    <title>Add Person to Room</title>
</head>
<body>
    <h1>Add Person to Room</h1>
    <form action="PersonServlet" method="post">
        <input type="hidden" name="roomId" value="<%= request.getParameter("roomId") %>">
        Person Name: <input type="text" name="personName"><br>
        Person Age: <input type="text" name="personAge"><br>
        <input type="submit" value="Add Person">
    </form>
</body>
</html>
