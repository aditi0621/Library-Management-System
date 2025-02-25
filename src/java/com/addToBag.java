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
import javax.servlet.http.HttpSession;


public class addToBag extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get book ID from the form submission
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        // Get book name from the form submission
        String bookName = request.getParameter("bookName");
        // Get image URL from the form submission
        String imageUrl = request.getParameter("imageUrl");

        // Get user ID from the request parameter or session
        HttpSession session = request.getSession();
        String username1 = (String) session.getAttribute("name");
        int userId = (int) session.getAttribute("user_id"); // Assuming userId is passed as a request parameter

        // Insert the record into the user_books table
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/libraryy", "root", "");
           PreparedStatement pstmt = conn.prepareStatement("INSERT INTO user_books (user_id, book_id, user_name, book_name, image_url, date_added) VALUES (?, ?, ?, ?, ?, CURDATE())");

            pstmt.setInt(1, userId);
            pstmt.setInt(2, bookId);
            pstmt.setString(3, username1);
            pstmt.setString(4, bookName);
            pstmt.setString(5, imageUrl);
            pstmt.executeUpdate();
            pstmt.close();
            
            pstmt = conn.prepareStatement("UPDATE all_books SET available_quantity = available_quantity - 1 WHERE book_id = ?");
            pstmt.setInt(1, bookId);
            pstmt.executeUpdate();
            pstmt.close();
            
            conn.close();
            
            response.sendRedirect("moreBook.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}