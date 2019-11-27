<%-- 
    Document   : Forgottest
    Created on : Nov 27, 2019, 4:34:06 PM
    Author     : bud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Forgot Password</title>
    </head>
    <style>
            .container{
                border: none; 
                box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 30px 0 rgba(0, 0, 0, 0.19);
                border-radius: 20px;
                margin-top: 1em;
                width: 85vh;
                height: 70vh;
                margin-top: 5.5em;
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
                setVisible('#oo', true);
                setVisible('#loading', false);
            });
        </script>


</head>
<body>

    <div class="container" id="oo">
        <div class="row justify-content-center">

            <div class="col" style=" font-size: 13px;width: 15vh;
                 height: 4vh; border-radius: 15px;">
                <div style="background-color:#3aaf9d; font-size: 13px;width: 15vh;
                     height: 4vh; border-radius: 15px;margin-top: 1em;font-family: 'Questrial', sans-serif;">
                    <a href="HomePage.jsp" style="color: #fff;padding-top: 30px;"><div style="margin-top: 1em;padding-top: 0.3em;padding-right: 0.3em;"><img src="images/home.png" alt="home" width="15px" height="20px;"/>&nbsp;HomePage</div></a>
                </div>

                <div style="font-size: 45px;color:#3aaf9d;text-align: center;margin-top: 1em;">
                    <p>Forgot Password</p> 
                </div>
                
                
                <div style="font-family: 'Questrial', sans-serif;text-align: center;margin-top: 0.1em;" >
                    <form action="Forgot" method="post">
                        Enter your email &nbsp; <input type="text" name="email" style="border-radius:8px; width: 25vh;height: 4.8vh;margin-top: 1.5em;" ><br>
                        New password &nbsp; <input type="password" name="password" style="border-radius:8px; width: 25vh;height: 4.8vh;margin-top: 1.5em;" ><br>
                        Confirm password  &nbsp; <input type="password" name="cpass" style="border-radius:8px; width: 25vh;height: 4.8vh;margin-top: 1.5em;" ><br>
                        <input type="submit" value="submit" style="border-color:#3aaf9d; background-color:rgba(0,0,0,0); 
                               color:#3aaf9d;border-radius:10px;margin-top: 2.5em;font-family: 'Questrial', sans-serif;"/>
                    </form>
                </div>
            </div>
        </div>
    </div>   
</body>
</html>
<div id="loading"></div>
