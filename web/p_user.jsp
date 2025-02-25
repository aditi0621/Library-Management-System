<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Books Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Books Details</h1>
        <table>
            <tr>
                <th>Book ID</th>
                <th>Book Name</th>
                <th>Date Added</th>
            </tr>
            <% 
                // Get user ID from request parameter
                int userId = Integer.parseInt(request.getParameter("userId"));
                
                // JDBC URL, username, and password
                String url = "jdbc:mysql://localhost:3306/libraryy";
                String user = "root";
                String password = "";
                
                // SQL query to fetch user books details
                String query = "SELECT book_id, book_name, date_added FROM user_books WHERE user_id = ?";
                
                try {
                    // Load the MySQL JDBC driver
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    // Establishing connection
                    Connection connection = DriverManager.getConnection(url, user, password);
                    
                    // Creating prepared statement
                    PreparedStatement preparedStatement = connection.prepareStatement(query);
                    preparedStatement.setInt(1, userId);
                    
                    // Executing query
                    ResultSet resultSet = preparedStatement.executeQuery();
                    
                    // Iterating through the result set
                    while(resultSet.next()) {
                        // Retrieving values by column name
                        int bookId = resultSet.getInt("book_id");
                        String bookName = resultSet.getString("book_name");
                        String dateAdded = resultSet.getString("date_added");
                        
            %>
                        <tr>
                            <td><%= bookId %></td>
                            <td><%= bookName %></td>
                            <td><%= dateAdded %></td>
                        </tr>
            <% 
                    }
                    
                    // Closing resources
                    resultSet.close();
                    preparedStatement.close();
                    connection.close();
                } catch (Exception e) {
                    out.println("Exception: " + e.getMessage());
                }
            %>
        </table>
    </div>
</body>
</html>
