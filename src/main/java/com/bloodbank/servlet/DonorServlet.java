package com.bloodbank.servlet;




import com.bloodbank.utils.DatabaseConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/donor") // This handles the mapping instead of web.xml
public class DonorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String bloodGroup = request.getParameter("bloodGroup");

        // Basic validation to prevent empty values
        if (name == null || name.trim().isEmpty() || bloodGroup == null || bloodGroup.trim().isEmpty()) {
            response.sendRedirect("donor.jsp");
            return;
        }

        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "INSERT INTO donors (name, blood_group) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name.trim());
            stmt.setString(2, bloodGroup.trim());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("donor.jsp");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/donors.jsp");
    }
}
