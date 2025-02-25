package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Fetch form parameters
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
            Connection connection = DriverManager.getConnection(url, username, dbPassword);

            // Prepare SQL statement
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            // Execute the query
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                // User authenticated, redirect to success page
                       
                        HttpSession session = request.getSession();
                        String username1 = resultSet.getString("name");
                        session.setAttribute("name", username1);
                        session.setAttribute("user_id", resultSet.getInt("user_id"));

                response.sendRedirect("field.jsp");
            } else {
                // Authentication failed, redirect to failure page
                response.sendRedirect("failure.jsp");
            }

            // Close database connection
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            // Handle database errors
            e.printStackTrace();
            response.sendRedirect("failure.jsp");
        }
    }
}
