
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <%@include file="component/allcss.jsp" %>
        <style type="text/css">
            .paint-card{
                box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
            }
         .bgimg {
            background-image: url(img/home.jpg);
            width: 1318px;
            height: 598px;
            opacity: 0.8;
            background-size: contain;
            background-size: cover;
            background-repeat: no-repeat;
          }
        </style>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %> 
        <div class="bgimg">
            
        <div class="container p-5" >
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card paint-card">
                        <div class="card-body">
                            <p class="fs-4 text-center">New user Login</p>
                            
                            
                            <form action="Ulogin1" method="post">
                                
                                <div class="mb-3">
                                    <label class="form-Label">Full Name</label> <input required name="name" type="text" class="form-control">
                                </div>
                                
                                <div class="mb-3">
                                    <label class="form-Label">Email address</label> <input required name="email" type="email" class="form-control">
                                </div>
                                
                                <div class="mb-3">
                                    <label class="form-Label">Password</label> <input required name="password" type="password" class="form-control">
                                </div>
                                
                                <button type="submit" class="btn bg-dark text-white col-md-12">Register</button>
                            
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
    </body>
</html>
