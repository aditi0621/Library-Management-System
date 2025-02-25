<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User's Book List</title>
     <%@include file="component/allcss.jsp" %>
</head>
<body>
    <%@include file="component/navfield.jsp" %>
    <div style="background-image: url(img/bookbg.jpg); opacity: 1; background-size: contain; background-size: cover;">
    <%
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the MySQL database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/libraryy", "root", "");

            // Check if user_id attribute is set in the session
            Object userIdObj = session.getAttribute("user_id");
            if (userIdObj == null) {
                out.println("User ID not found in session");
            } else {
                int userId = ((Integer) userIdObj).intValue();
                //out.println("User ID found in session: " + userId);

                // Prepare a statement to retrieve user's book details
                PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM user_books WHERE user_id = ?");
                pstmt.setInt(1, userId);

                // Execute the query
                ResultSet rs = pstmt.executeQuery();
                
                // Iterate over the result set and display details for each book
                while (rs.next()) {
                    String bookName = rs.getString("book_name");
                    String imageUrl = rs.getString("image_url");
                    Date dateAdded = rs.getDate("date_added");
                    
                    // Calculate remaining days for returning the book
                    long millisecondsPerDay = 24 * 60 * 60 * 1000;
                    long currentTime = System.currentTimeMillis();
                    long addedTime = dateAdded.getTime();
                    long remainingDays = 15 - ((currentTime - addedTime) / millisecondsPerDay);
                
    %>
    <div style="display: inline-block; width: 20%; margin: 20px 20px 20px 40px; text-align: center; border: 1px solid #ccc; border-radius: 5px; background-color: rgb(225,225,225); padding: 10px;">
        <h6><%=bookName %></h6>
        
        <img src="<%= imageUrl %>" alt="Book Cover" style="width: 200px; height: 300px; margin-right: 20px;" >
        
        <br><br>
        <button type="button" class="btn btn-outline-secondary btn-sm">Days Remaining for Return: <%= remainingDays %></button>
        <p></p>
        <form action="BookReturn" method="get">
            <input type="hidden" name="bookName" value="<%= bookName %>">
            <input type="hidden" name="userId" value="<%= userId %>">
            <button class="btn btn-dark btn-sm" type="submit">Return Book</button>
        </form>
    </div>
    <%
                }
                
                rs.close();
                pstmt.close();
            }
            
            conn.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    %>
    </div>
</body>
</html>
