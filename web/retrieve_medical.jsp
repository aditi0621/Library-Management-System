<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>B.Tech book list</title>
    <%@include file="component/allcss.jsp" %>
    <style>
        /* CSS for displaying each book item */
        .book-item {
            display: inline-block;
            width: 20%; /* Adjust as needed */
            margin: 20px 20px 20px 40px; /* Increase the right margin */
            text-align: center;
            border: 1px solid #ccc; /* Add border */
            border-radius: 5px; /* Add border radius */
            background-color: rgb(225,225,225); /* Light gray background color */
            padding: 10px; /* Add padding */
        }

        /* Ensure there are only 4 items per row */
        @media screen and (max-width: 768px) {
            .book-item {
                width: 45%; /* Adjust as needed */
            }
        }

        @media screen and (max-width: 480px) {
            .book-item {
                width: 100%;
            }
        }

        /* Style for the Add to Bag button */
        .add-to-bag-btn {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Hover effect for the Add to Bag button */
        .add-to-bag-btn:hover {
            background-color: #45a049;
        }
        .bgimg {
            background-image: url(img/bookbg.jpg);
            opacity: 1;
            background-size: contain;
            background-size: cover;
            
        }
        
    </style>
</head>
<body>
    <%@include file="component/navfield.jsp" %>
    <div class="bgimg">
    <%
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the MySQL database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/libraryy", "root", "");

            // Create a statement
            Statement stmt = conn.createStatement();

            // Execute a query to retrieve data from the action1 table
            ResultSet rs = stmt.executeQuery("SELECT * FROM all_books WHERE field='medical'");
            
            // Iterate over the result set and display details for each book
            while (rs.next()) {
                int bookId = rs.getInt("book_id");
                String bookName = rs.getString("book_name");
                String imageUrl = rs.getString("image_url");
                int availableQuantity = rs.getInt("available_quantity");
            
    %>
    <div class="book-item">
        <h6><%=bookName %></h6>
        
        <img src="<%= imageUrl %>" alt="Book Cover" style="width: 200px; height: 300px; margin-right: 20px;" >
        
        <br><br>
        <button type="button" class="btn btn-outline-secondary btn-sm">Available Quantity: <%= availableQuantity %></button>
       <br><br>
        <form action="addToBag" method="post">
            <input type="hidden" name="bookId" value="<%= bookId %>">
            <input type="hidden" name="bookName" value="<%= bookName %>">
            <input type="hidden" name="imageUrl" value="<%= imageUrl %>">
            <button class="btn btn-dark btn-sm" type="submit">Add to Bag</button>
        </form>
    </div>
    <%
            }
            
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
    </div>
</body>
</html>