<%-- 
    Document   : Register
    Created on : Nov 12, 2019, 6:23:53 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .container{
                box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 30px 0 rgba(0, 0, 0, 0.19);
            }
            input[type=text]{
                width: 200px;
                height: 30px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-sizing: border-box;
                padding-left: 20px;
                padding:8px 8px;
            }
            input[type=password]{
                width: 200px;
                height: 30px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 8px;
                box-sizing: border-box;
                padding-left: 20px;
                padding:8px 8px;
            }
            input[type=submit]{
                display:inline-block;
                padding:0.46em 1.6em;
                border:0.1em solid #3aaf9d;
                margin:0 0.2em 0.2em 0;
                border-radius:0.12em;
                text-decoration:none;
                font-weight:300;
                text-shadow: 0 0.04em 0.04em rgba(0,0,0,0.35);

            }
            a.regis{
                display:inline-block;
                padding:0.46em 1.6em;
                border:0.1em solid #000000;
                margin:0 0.2em 0.2em 0;
                border-radius:0.12em;
                text-decoration:none;
                font-weight:300;
                text-shadow: 0 0.04em 0.04em rgba(0,0,0,0.35);
            }
            a.regis:hover{
                text-shadow: 0 0 2em rgba(255,255,255,1);
                color:#FFFFFF;
                border-color:#FFFFFF;
            }
            a.home{
                text-decoration:none;

            }
            
            #loading {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                z-index: 100;
                width: 100vw;
                height: 100vh;
                background-color: #92b9a2;
                background-image: url(images/onload.gif);
                background-repeat: no-repeat;
                background-position: center;
            }

        </style>
        <script>
            function onReady(callback) {
                var intervalId = window.setInterval(function () {
                    if (document.getElementsByTagName('body')[0] !== undefined) {
                        window.clearInterval(intervalId);
                        callback.call(this);
                    }
                }, 650);
            }

            function setVisible(selector, visible) {
                document.querySelector(selector).style.display = visible ? 'block' : 'none';
            }

            onReady(function () {
                setVisible('.container', true);
                setVisible('#loading', false);
            });
        </script>
    </head>
    <body>
        <div class="container" style="margin-top: 7em;border-radius: 15px;color:#3aaf9d">
            <div class="row justify-content-center">
                <div class="col" style="margin-top: 1.5em;">
                    <div style="margin-left: 1em;font-size: 30px;color:#3aaf9d;text-align: center;font-family: 'Questrial', sans-serif;">
                        Registration Form
                    </div>
                    <div style="color:red;text-align: center">
                        ${message}
                    </div>
                    <div style="text-align: center;margin-top: 1.5em;">
                        <img src="images/logologin.png" alt="regis" width="120px" height="120px"/>
                    </div>

                    <div class="container-fluid " style="margin-top: 1.5em; ">
                        <form action="Register" method="post">  
                            <div class="row">
                                <div class="col" style="font-family: 'Questrial', sans-serif;">
                                    Username <input type="text" name="username"  /><br/>  
                                    Password <input type="password" name="password"   /><br/>
                                    Confirm Password <input type="password" name="conpassword" required/></br>
                                </div>
                                <div class="col" style="font-family: 'Questrial', sans-serif;">
                                    First name <input type="text" name="fname"  /><br/>  
                                    Last name <input type="text" name="lname"/><br/> 
                                    E-mail <input type="text" name="email"  /><br/> 
                                </div>
                            </div>
                            <div class="row justify-content-center" >
                                <div style="margin-top: 0.1em; font-family: 'Questrial', sans-serif;">
                                    <input type="submit" value="register" style="border-color:#3aaf9d; background-color:rgba(0,0,0,0); 
                                           color:#3aaf9d;border-radius:10px;margin-top: 1.5em;"/> 
                                </div>   

                            </div>


                        </form>             
                    </div>


                </div>
                <div class="col-4" style="background-color:#3aaf9d;min-height: 70vh; border-top-right-radius: 15px;
                     border-bottom-right-radius:15px;">
                    <div style="margin-top: 1em; margin-left: 0.5em;font-family: 'Questrial', sans-serif;">
                        <a href="HomePage.jsp" class="home"
                           style="color: #fff"
                           ><img src="images/home.png" alt="home" width="30px" height="35px;" style="margin-right: 10px;"/>HomePage</a>
                    </div>
                    <div style="color: #fff;font-size: 48px;margin-top: 1.7em;text-align: center;font-family: 'Questrial', sans-serif;">
                        Hello Welcome!
                    </div>
                    <div style="margin-top: 2em;text-align: center;color: #fff;font-size: 18px;font-family: 'Questrial', sans-serif;">
                        <div>Have already an account ?</div>
                        <div>you can login here</div>
                    </div>
                    <div style="color: #fff;text-align: center;margin-top: 2.5em;font-family: 'Questrial', sans-serif;">
                        <a href="Login.jsp" class="regis" style="border-color:#FFFFFF; background-color:rgba(0,0,0,0); 
                           color:#FFFFFF;border-radius:10px">Login</a>
                    </div>
                </div>

            </div>

        </div>



    </body>
</html> 
<div id="loading"></div>



