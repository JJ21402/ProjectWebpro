<%-- 
    Document   : Index
    Created on : Nov 12, 2019, 4:56:44 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
          
            body{
                background-image: url("images/indexbanner2.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            button{
                border:none;
                width: 200px;
                height: 80px;
                border-radius: 5px;
                 font-family: 'Questrial', sans-serif;
                 font-size: 25px;
            }      
            p{
                font-family: 'Questrial', sans-serif;\
                 font-size: 40px;
            }
            a.index{
            display:inline-block;
            padding:0.3em 2em;
            border:0.1em solid #000000;
            margin:0 0.2em 0.2em 0;
            border-radius:0.12em;
            text-decoration:none;
            font-weight:500;
            text-shadow: 0 0.04em 0.04em rgba(0,0,0,0.35);
            
        }
        </style>
    </head>
    <body>
        <div class="container" style="margin-top:13em;margin-left: 2em;">
            <div class="row">
                <div class="col">
                    <p style="font-size: 90px";>PretestOnline</p>
                </div>
            </div>
            <div class="row" style="margin-top: 2em;margin-left: 9.5em">
                <div class="col">
                    <a href="HomePage.jsp" class="index" style="border-color:#3aaf9d; background-color:rgba(0,0,0,0); 
                                   color:#3aaf9d;border-radius:10px;"> <p style="font-size: 25px;margin-top: 12px;">Get Started</p></a> 
                </div>              
            </div>
        </div>
    </body>
</html>
