<%@ page import="java.sql.*" %>
<%@ page import="com.bloodbank.utils.DatabaseConnection" %>
<html>
<head>
    <title>Donors</title>
</head>
<body>
    <h2>Donor List</h2>
    <table border="1">
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
</body>
</html>
