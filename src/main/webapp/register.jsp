<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Donor Registration</title>
</head>
<body>
    <h2>Donor Registration Form</h2>
    <form action="RegisterDonorServlet" method="post">
        <label>Name:</label>
        <input type="text" name="name" required><br><br>

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
        </select><br><br>

        <label>Sex:</label>
        <select name="sex" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Not to Mention">Not to Mention</option>
        </select><br><br>

        <label>Place:</label>
        <input type="text" name="place" required><br><br>

        <label>Last Blood Donation Date:</label>
        <input type="date" name="last_donation_date"><br><br>

        <label>Phone Number:</label>
        <input type="text" name="phone" required pattern="[0-9]{10}" title="Enter 10-digit phone number"><br><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>
