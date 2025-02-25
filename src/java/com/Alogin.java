package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Alogin extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Hardcoded admin credentials
        String adminEmail = "admin@gmail.com";
        String adminPassword = "root";

        if (email.equals(adminEmail) && password.equals(adminPassword)) {
            // Admin login successful, redirect to admin dashboard or perform necessary actions
            response.sendRedirect("wAdmin.jsp");
        } else {
            // Admin login failed, redirect back to login page with an error message
            response.sendRedirect("fAdmin.jsp");
        }
    }

    // Handle both GET and POST requests
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
