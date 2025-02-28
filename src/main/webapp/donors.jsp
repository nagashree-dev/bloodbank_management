<%@ page import="java.sql.*" %>
<%@ page import="com.bloodbank.utils.DatabaseConnection" %>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp?error=Please Login First");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Donor Lists</title>
    <link rel="stylesheet" href="assets/css/donor.css">
   <script src="assets/js/donor.js"></script>

</head>
<body>
    <div class="header">
        <div class="logo">Blood Bank</div>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="register.jsp">Register</a>
            <a href="LogoutServlet">Logout</a>
        </div>
    </div>

    <div class="container">
        <h2>Blood Donor Lists</h2>

        <label for="bloodGroup">Select Blood Group:</label>
        <select id="bloodGroup" onchange="searchDonors()">
            <option value="">All</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
        </select>

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
            <tbody id="donorTableBody">
                <%
                    try (Connection conn = DatabaseConnection.getConnection();
                         Statement stmt = conn.createStatement();
                         ResultSet rs = stmt.executeQuery("SELECT * FROM donors")) {
                        int serialNumber = 1;
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
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
