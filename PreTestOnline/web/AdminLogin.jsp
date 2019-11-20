<%-- 
    Document   : AdminLogin
    Created on : Nov 19, 2019, 2:35:08 PM
    Author     : bud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style>
            .container{
                border: none; 
                box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 30px 0 rgba(0, 0, 0, 0.19);
                border-radius: 20px;
                margin-top: 15vh;
                width: 100vh;
                height: 70vh;
                text-align: center;

            }
            p{
                font-family: 'Questrial', sans-serif;

            }
            input[type=submit]{
                border:solid 1.5px;
            }
            input[type=text],[type=password]{
                padding-left: 13px;
                border: 1px solid #ccc;
            }
            .page    { display: none; padding: 0 0.5em; }
            /*        .page h1 { font-size: 2em; line-height: 1em; margin-top: 1.1em; font-weight: bold; }
                    .page p  { font-size: 1.5em; line-height: 1.275em; margin-top: 0.15em; }*/

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
        <div class="container" id="oo">
            <div class="row justify-content-center"> 

                
                <div class="col" style="color:#3aaf9d;margin-top: 1.5em;text-align: center">
                    <div style="font-size: 36px;font-family: 'Questrial', sans-serif;">Admin Login</div>
                    <div style="margin-top: 0.4em;">
                        <img src="images/logologin.png" width="125px" height="125px"/>
                        <div style="margin-top: 0.8em;color: #A6ACAF;font-family: 'Questrial', sans-serif;">Welcome Back!</div>
                    </div>
                    <br>
                    <div style="margin-top: 0.5em;font-family: 'Questrial', sans-serif;">
                        <form action="AdminLogin" method="post">
                            <input type="text" placeholder="Username" name="adusername" style="border-radius:10px;" /><br/>
                            <input type="password" placeholder="Password" name="adpassword" style="border-radius:10px;margin-top: 2vh;"  /></br>
                            <input type="submit" value="Login" style="border-color:#3aaf9d; background-color:rgba(0,0,0,0); 
                                   color:#3aaf9d;border-radius:10px;margin-top: 1.5em;font-family: 'Questrial', sans-serif;"/>
                        </form>

                    </div>
                </div>
            </div>

    </body>
</html>
<div id="loading"></div>
