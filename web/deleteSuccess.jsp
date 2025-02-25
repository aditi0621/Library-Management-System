
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>book return</title>
        <%@include file="component/allcss.jsp" %>
        <style>
             .bgimg {
            background-image: url(img/home.jpg);
            width: 1318px;
            height: 598px;
            opacity: 0.8;
            background-size: contain;
            background-size: cover;
            background-repeat: no-repeat;
          } 
          .a {
            opacity: 0.9;
            width: 50%;
            height: 30%;
            border-radius: 10px;
            background-color:rgb(88, 99, 88) ;
            position: absolute;
            left: 27%;
            top: 30%;
          }
        </style>
    </head>
    <body>
        <script>
            function field() {
            // Redirect to your JSP file using location.href
            location.href = "myBooksRetrieve.jsp";
        }
            function mybooks() {
            // Redirect to your JSP file using location.href
            location.href = "MyBag.jsp";
        }
        </script>
    <%@include file="component/navfield.jsp" %>
    <div class="bgimg">
        <div class="a"><br>
            <h4 style="color: white; text-align: center;">Your book is return successfully<br>you want to delete more book?<br>if yes then back to MyBooks otherwise go to My Bag</h4>
            <div style="text-align: center;"><br>
                    <button  class="btn btn-outline-light" onclick="field()" type="submit" text-align="center">My Books</button>
                    <button class="btn btn-outline-light" onclick="mybooks()" type="submit" text-align="center">My Bag</button>
            </div>
        </div>
    </div>    
    </body>
</html>
