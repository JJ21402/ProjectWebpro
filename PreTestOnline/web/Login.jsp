<%-- 
    Document   : Login
    Created on : Oct 17, 2019, 3:39:52 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <style>
        .container{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        butt{
            color: white;
             background-color: #4CAF50;
               border: none;
        }

    </style>
    <body>

        <!--        <form action="Login" method="post">
                    <p><h2 class="form-heading">Log in</h2></p>
                <p><span>${message}</span></p>
                <p><input name="username" type="text" class="form-control" placeholder="Username"
                          autofocus="true"/></p>
                <p><input name="password" type="password" class="form-control" placeholder="Password"/></p>
                <p><button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button></p>
                <p><input type="checkbox" name="remember" style="margin-bottom:15px"> Remember me</p>
                <p><a href="Register.jsp">Create an account</a></p> 
            </form>-->
        <div class="container" style="margin-top: 7em;border-radius: 15px;">
            <div class="row justify-content-center">
                <div class="col-5" style="background-color:#3aaf9d;height: 70vh; border-top-left-radius: 15px;
                     border-bottom-left-radius:15px;">
                     <img src="images/penguin.png" alt="logo" width="40px" height="40px" style="margin-top: 0.5em;"/>
                     <div style="color: #fff;font-size: 48px;margin-top: 1.5em;text-align: center">
                         Hello Welcome!
                     </div>
                     <div style="margin-top: 2em;text-align: center;color: #fff">
                         <div>To keep connected with us please</div>
                         <div>login with your personal info</div>
                     </div>
                     <div style="color: #fff">
                         <button class="butt">Register</button>
                     </div>
                </div>
                <div class="col">
                    hh
                </div>
            </div>

        </div>
    </body>
</html>
