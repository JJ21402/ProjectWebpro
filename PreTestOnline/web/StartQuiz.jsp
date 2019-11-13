<%-- 
    Document   : StartQuiz
    Created on : Nov 13, 2019, 3:34:18 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Quiz</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .todo{
                margin-top: 15px;
                background-color:#9BCFB8;
                height: 480px;
                box-shadow: 1px 2px 2px 0 #072A24;
                border-radius: 6px;
            }
            .detail{
                font-size: 36px;
                font-family: 'Questrial', sans-serif;
                margin-top: 15px;
                padding-top: 20px;
                margin-left: 20px;
            }
            button{
                 border:none;
                width: 180px;
                height: 80px;
                 box-shadow: 1px 2px 2px 0 #072A24;
            }
        </style>
    </head>
    <body >
        <jsp:include page="Navbar.jsp"/>
    <center style="font-size: 50px;font-family: 'Questrial', sans-serif;margin-top: 15px;">Start Quiz</center>
        <div class="container todo">
            <div class="col detail">
                Category :
            </div>
            <div class="col detail">
                Subject :
            </div>
            <div class="col detail">
                Grade :
            </div>
            <div class="col detail">
                Quantity :
            </div>
            <div class="col" style="text-align: center;margin-top: 10px;padding-top: 10px;">
                <a><button style="border-radius: 10px;font-family: 'Questrial', sans-serif;
                 font-size: 28px;">Do Quiz</button></a>
            </div>
                
        </div>
    </body>
</html>
