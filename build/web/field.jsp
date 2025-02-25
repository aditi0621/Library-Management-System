
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Field</title>
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
          .selectField {
            opacity: 0.9;
            width: 40%;
            height: 10%;
            border-radius: 10px;
            background-color:rgb(88, 99, 88) ;
            position: absolute;
            left: 5%;
            top: 20%;
          }
          .field1 {
              opacity: 1;
              width: 15%;
              height: 33%;
              border-radius: 10px;
              background-color:rgb(223, 89, 65) ;
              position: absolute;
              right: 30%;
              top: 20%;
          }
          .f12 {
              opacity: 1;
              width: 45%;
              height: 15%;
              border-radius: 10px;
              
              position: absolute;
              right: 28%;
              top: 45%;
          }
          
          .field2 {
              opacity: 1;
              width: 15%;
              height: 33%;
              border-radius: 10px;
              background-color:rgb(116, 185, 218) ;
              position: absolute;
              right: 13%;
              top: 20%;
          }
          
          .field3 {
              opacity: 1;
              width: 15%;
              height: 33%;
              border-radius: 10px;
              background-color:rgb(80, 170, 130) ;
              position: absolute;
              right: 30%;
              top: 56%;
          }
          .field4 {
              opacity: 1;
              width: 15%;
              height: 33%;
              border-radius: 10px;
              background-color:rgb(226, 223, 63) ;
              position: absolute;
              right: 13%;
              top: 56%;
          }
          
          
        </style>
    </head>
    <body>
        <script>
        function field1() {
            // Redirect to your JSP file using location.href
            location.href = "retrieve_btech.jsp";
        }
        function field2() {
            // Redirect to your JSP file using location.href
            location.href = "retrieve_medical.jsp";
        }
        function field3() {
            // Redirect to your JSP file using location.href
            location.href = "retrieve_mech.jsp";
        }
        function field4() {
            // Redirect to your JSP file using location.href
            location.href = "retrieve_space.jsp";
        }
        </script>
         <%@include file="component/navfield.jsp" %>
         
        <div class="bgimg">
            
           <div class="selectField"><br>
              <h4 style="color: white; text-align: center;">Select Field...</h4>
           </div>  
            
            <div class="field1">
                <div>
                    <i class="fa-solid fa-book fa-3x" style="margin-top:15%; margin-left:37%;"></i>
                </div>
                <div class="f12">
                    <h5 style="color: white; text-align: center;">B.Tech</h5>
                </div>
                <div>
                    <button type="button" onclick="field1()" class="btn btn-light btn-sm" style="margin-top:33%; margin-left:28%;">Click here..</button>
                </div>
            </div>
            
            <div class="field2">
                <div>
                    <i class="fa-solid fa-book-medical fa-3x" style="margin-top:15%; margin-left:37%;"></i>
                </div>
                <div class="f12">
                    <h5 style="color: white; text-align: center;">Medical</h5>
                </div>
                <div>
                    <button type="button" onclick="field2()" class="btn btn-light btn-sm" style="margin-top:33%; margin-left:28%;">Click here..</button>
                </div>
            </div>
            
            <div class="field3">
                <div>
                    <i class="fa-solid fa-gear fa-3x" style="margin-top:15%; margin-left:37%;"></i>
                </div>
                <div class="f12">
                    <h5 style="color: white; text-align: center;">Mechanical</h5>
                </div>
                <div>
                    <button type="button" onclick="field3()" class="btn btn-light btn-sm" style="margin-top:33%; margin-left:28%;">Click here..</button>
                </div>
            </div>
            
            <div class="field4">
                <div>
                    <i class="fa-solid fa-rocket fa-3x" style="margin-top:15%; margin-left:37%;"></i>
                </div>
                <div class="f12">
                    <h5 style="color: white; text-align: center;">Space</h5>
                </div>
                <div>
                    <button type="button" onclick="field4()" class="btn btn-light btn-sm" style="margin-top:33%; margin-left:28%;">Click here..</button>
                </div>
            </div>
            
        </div>
    </body>
</html>
