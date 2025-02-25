package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ulogin1")
public class Ulogin1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // JDBC connection details
        String url = "jdbc:mysql://localhost:3306/libraryy?zeroDateTimeBehavior=convertToNull";
        String username = "root";
        String dbPassword = "";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish database connection
            try (Connection connection = DriverManager.getConnection(url, username, dbPassword)) {
                // Prepare SQL statement
                String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, name);
                    statement.setString(2, email);
                    statement.setString(3, password);

                    // Execute the query
                    int rowsInserted = statement.executeUpdate();
                    if (rowsInserted > 0) {
                        // Data inserted successfully
                        response.sendRedirect("success.jsp");
                        return; // Exit method after successful insertion
                    }
                }
            }

            // If execution reaches here, data insertion failed
            response.sendRedirect("failure.jsp");

        } catch (ClassNotFoundException | SQLException e) {
            // Handle database errors
            e.printStackTrace();
            response.sendRedirect("failure.jsp");
        }
    }
}