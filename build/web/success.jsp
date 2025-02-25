
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
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
            height: 25%;
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
            function login() {
            // Redirect to your JSP file using location.href
            location.href = "user_login.jsp";
        } 
        </script>
         <%@include file="component/navsuccess.jsp" %>
        <div class="bgimg">
            <div class="b">
                <P><h4 style="color: white; text-align: center;">Congratulations!!
                <br>Your account creation is successfully done.<br>Now login with your email-id and password.</h4></p>
                <div style="text-align: center;">
                    <button class="btn btn-light btn-sm" onclick="login()" type="submit" text-align="center">Login</button>
                </div>
            </div>
        </div>
    </body>
</html>
