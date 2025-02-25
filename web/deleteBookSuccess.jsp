
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Book Successfully</title>
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
          .b {
            opacity: 0.9;
            width: 50%;
            height: 40%;
            border-radius: 10px;
            background-color:rgb(88, 99, 88) ;
            position: absolute;
            left: 27%;
            top: 30%;
          }
          </style>
    </head>
    <body>
        
         <%@include file="component/navbar.jsp" %>
        <div class="bgimg">
            <div class="b">
                <P><h4 style="color: white; text-align: center;">Congratulations!!
                <br>Your book is successfully return.<br>If you want to return more books than go to my books section otherwise go to My Bag option.</h4></p>
                <div style="text-align: center;">
                    <form action="myBooksRetrieve.jsp">
                    <button class="btn btn-light btn-sm"  type="submit" text-align="center">My Books</button>
                    </form><br>
                    <form action="myBag.jsp">
                    <button class="btn btn-light btn-sm"  type="submit" text-align="center">My Bag</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
