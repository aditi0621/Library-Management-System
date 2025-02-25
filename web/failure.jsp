<%-- 
    Document   : failure
    Created on : 15 Apr, 2024, 1:59:33 AM
    Author     : BAPS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fail</title>
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
            height: 20%;
            border-radius: 10px;
            background-color:rgb(88, 99, 88) ;
            position: absolute;
            left: 27%;
            top: 38%;
          }
          </style>
    </head>
    <body>
        <%@include file="component/navfail.jsp" %>
        <div class="bgimg">
            <div class="b">
                <P><h4 style="color: white; text-align: center;">  Please check your login details and create account again.</h4></p>
            </div>
        </div>
        
    </body>
</html>
