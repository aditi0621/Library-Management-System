<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fetch User Details</title>
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

        .user-details p {
            display: none;
        }

        .show-details {
            background-color: #4CAF50;
            color: white;
            padding: 8px 12px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Details</h1>
        <table>
            <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>User Email</th>
                <th>Action</th>
            </tr>
            <% 
                // JDBC URL, username, and password
                String url = "jdbc:mysql://localhost:3306/libraryy";
                String user = "root";
                String password = "";
                
                // SQL query to fetch user details
                String query = "SELECT * FROM users";
                
                try {
                    // Load the MySQL JDBC driver
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    // Establishing connection
                    Connection connection = DriverManager.getConnection(url, user, password);
                    
                    // Creating statement
                    Statement statement = connection.createStatement();
                    
                    // Executing query
                    ResultSet resultSet = statement.executeQuery(query);
                    
                    // Iterating through the result set
                    while(resultSet.next()) {
                        // Retrieving values by column name
                        int userId = resultSet.getInt("user_id");
                        String userName = resultSet.getString("name");
                        String userEmail = resultSet.getString("email");
                        // Retrieve other columns as needed
                        
            %>
                        <tr>
                            <td><%= userId %></td>
                            <td><%= userName %></td>
                            <td><%= userEmail %></td>
                            <td>
                                <form action="p_user.jsp" method="post">
                                    <input type="hidden" name="userId" value="<%= userId %>">
                                    <button class="show-details" class="btn bg-dark" type="submit">Show Details</button>
                                </form>
                            </td>
                        </tr>
                        <tr class="user-details">
                            <td colspan="4">
                                <p>User ID: <%= userId %></p>
                                <p>User Name: <%= userName %></p>
                                <p>User Email: <%= userEmail %></p>
                            </td>
                        </tr>
            <% 
                    }
                    
                    // Closing resources
                    resultSet.close();
                    statement.close();
                    connection.close();
                } catch (Exception e) {
                    out.println("Exception: " + e.getMessage());
                }
            %>
        </table>
    </div>
</body>
</html>
