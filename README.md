# Library Management System

## Overview
The **Library Management System** is a web-based application designed to manage books and user interactions efficiently. It provides a user-friendly interface for book management, borrowing, and returning operations.

## Features
- **User Authentication:** Secure login and signup system for users and admins.
- **Book Management:** fetch based on category and also Add, delete.
- **Borrow & Return Books:** Users can borrow books and return them within the due date.
- **User Dashboard:** Personalized dashboard displaying borrowed books and due dates.
- **Admin Panel:** Manage users and books

## Technologies Used
- **Frontend:** HTML, CSS, Bootstrap, js
- **Backend:** JSP, Servlets
- **Database:** MySQL
- **Database Connectivity:** JDBC

## Setup & Installation
1. **Clone the repository**
   ```sh
   git clone https://github.com/your-repo/library-management.git
   ```
2. **Import into IDE** (NetBeans or Eclipse)
3. **Setup MySQL Database:**
   - Create a database named `library_db`
   - Import the provided SQL file
4. **Configure Database Connection:**
   - Update JDBC settings in Servlet files
5. **Run the Project**
   - Deploy on Tomcat server
   - Access via `http://localhost:8080/myLibrary`
