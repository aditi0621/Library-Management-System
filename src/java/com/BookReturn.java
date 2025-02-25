package com;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/returnBook")
public class BookReturn extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Retrieve parameters from the form submission
        String bookName = request.getParameter("bookName");
        int userId = Integer.parseInt(request.getParameter("userId"));

        // Connection parameters
        String url = "jdbc:mysql://localhost:3306/libraryy";
        String username = "root";
        String password = "";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish a connection to the database
            Connection conn = DriverManager.getConnection(url, username, password);

            // Prepare the SQL delete statement
            String sql = "DELETE FROM user_books WHERE user_id = ? AND book_name = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, userId);
            pstmt.setString(2, bookName);

            // Execute the delete statement
            int rowsAffected = pstmt.executeUpdate();

            // Close resources
            pstmt.close();
             if (rowsAffected > 0) {
                // Update the available quantity in the all_books table
                String updateSql = "UPDATE all_books SET available_quantity = available_quantity + 1 WHERE book_name = ?";
                pstmt = conn.prepareStatement(updateSql);
                pstmt.setString(1, bookName);
                pstmt.executeUpdate();

                // Close resources
                pstmt.close();
                conn.close();

                // Redirect to deleteSuccess.jsp if deletion and update were successful
                response.sendRedirect("deleteBookSuccess.jsp");
            } 
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
            e.printStackTrace();
        }
    }
}
