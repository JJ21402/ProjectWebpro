<%-- 
    Document   : Profile
    Created on : Nov 16, 2019, 2:25:29 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .container{
                border: none; 
                box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 30px 0 rgba(0, 0, 0, 0.19);
                border-radius: 20px;
                margin-top: 1em;
                width: 80vh;
                height: 95vh;
                text-align: center;
            }
            p{
                font-family: 'Questrial', sans-serif;

            }
            

        </style>
    </head>
    <body>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col" style="margin-top: 1em;">

                    <div style="font-size: 40px;color:#3aaf9d;text-align: center">
                        <p>Profile</p> 
                    </div>
                </div>
            </div>

            <div>
                
                <img src="images/man.png" width="100"/>
            </div>
            <br>
            <div style="margin-top:  0.1em;">
                <p >Personal Info<br/></p>
            </div>
            
                
                    <div>
                        <p><input type="text" placeholder="Firstname"  style="border-radius:8px;"required value="${user.fname}"/><br/></p>
                        <p><input type="password" placeholder="Lastname" style="border-radius:8px;" required/></br></p>
                        <p><input type="password" placeholder="email"  style="border-radius:8px;" required/></br></p>
                        <p><input type="password" placeholder="Username"  style="border-radius:8px;" required/></br></p>
                        <p><input type="password" placeholder="Password" style="border-radius:8px;" required/></br></p>
                        <p><input type="password" placeholder="Confirm Password"  style="border-radius:8px;" required/></p>
                        <p> <a href="HomePage.jsp"><input type="submit" value="Confirm" style="border-color:#3aaf9d; background-color:#3aaf9d; 
                                                                     color:white;border-radius:10px;margin-top: 0.3em;"/></a></p>
                    </div>

        </div>
    </body>
</html>
