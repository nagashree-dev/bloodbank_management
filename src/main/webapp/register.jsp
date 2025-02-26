<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Donor Registration</title>
    <link rel="stylesheet" type="text/css" href="assets/css/rigister.css">
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <div class="logo">Blood Bank</div>
        <div class="nav-links">
        <a href="home.jsp">Home</a>
            <a href="donors.jsp">Donor List</a>
                     <a href="login.jsp">Logout</a>
        </div>
    </div>

    <!-- Registration Form -->
    <div class="container">
        <h2>Donor Registration Form</h2>
        <form action="RegisterDonorServlet" method="post">
            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Blood Group:</label>
            <select name="blood_group" required>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select>

            <label>Sex:</label>
            <select name="sex" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Not to Mention">Not to Mention</option>
            </select>

            <label>Place:</label>
            <input type="text" name="place" required>

            <label>Last Blood Donation Date:</label>
            <input type="date" name="last_donation_date">

            <label>Phone Number:</label>
            <input type="text" name="phone" required pattern="[0-9]{10}" title="Enter 10-digit phone number">

            <input type="submit" value="Register">
        </form>
    </div>

</body>
</html>
