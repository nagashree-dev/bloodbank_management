<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="assets/css/home.css">
</head>
<body>

    <div class="header">
        <div class="logo">Blood Bank</div>
        <div class="nav-links">
            <a href="donors.jsp">Donor List</a>
            <a href="register.jsp">Register</a>
            <a href="login.jsp">Logout</a>
        </div>
    </div>

    <!-- Welcome Text Outside the Box -->
    <h2 class="welcome-text">Welcome to Blood Bank Management System</h2>

    <div class="container">
        <div class="button-container">
            <a href="register.jsp"><button class="btn">Register as Donor</button></a>
            <a href="donors.jsp"><button class="btn">Check Donors</button></a>
        </div>
    </div>

</body>
</html>
