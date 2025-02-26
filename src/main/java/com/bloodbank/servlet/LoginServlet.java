package com.bloodbank.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        System.out.println("Received Username: " + username);
        System.out.println("Received Password: " + password);

        if ("admin".equals(username) && "admin".equals(password)) {
            // Redirect to home.jsp on successful login
            response.sendRedirect("home.jsp");
        } else {
            // Show failure message and redirect back to login page
            response.sendRedirect("login.jsp?error=Invalid Credentials");
        }
    }
}
