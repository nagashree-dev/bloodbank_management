<%
    HttpSession sessionObj = request.getSession(false);
    if (sessionObj == null || sessionObj.getAttribute("user") == null) {
        response.sendRedirect("login.jsp?error=Please Login First");
        return;
    }
%>
<%@ page import="java.sql.*" %>
<%@ page import="com.bloodbank.utils.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>Donor List</title>
    <link rel="stylesheet" type="text/css" href="assets/css/donor.css">
</head>
<body>
    <!-- Header Section -->
    <div class="header">
        <div class="logo">Blood Bank</div>
        <div class="nav-links">
        <a href="home.jsp">Home</a>
               <a href="register.jsp">Register</a>
            <a href="LogoutServlet">Logout</a>
        </div>
    </div>

    <div class="container">
        <h2>Donor List</h2>
        <table>
            <tr>
                <th>Sl No</th>
                <th>Name</th>
                <th>Blood Group</th>
                <th>Phone</th>
                <th>Sex</th>
                <th>Place</th>
                <th>Last Donated Date</th>
            </tr>
            <%
                try (Connection conn = DatabaseConnection.getConnection()) {
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM donors");

                    int serialNumber = 1; // For Sl No
                    while (rs.next()) {
            %>
            <tr>
                <td><%= serialNumber++ %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("blood_group") %></td>
                <td><%= rs.getString("phone") %></td>
                <td><%= rs.getString("sex") %></td>
                <td><%= rs.getString("place") %></td>
                <td><%= rs.getString("last_donation_date") %></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
