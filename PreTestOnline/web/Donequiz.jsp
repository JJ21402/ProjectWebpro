<%-- 
    Document   : Donequiz
    Created on : Nov 18, 2019, 9:16:45 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Done Quiz</title>
    </head>
    <style>
        .container{
            box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 30px 0 rgba(0, 0, 0, 0.19);
        }
    </style>
    <body>
    <body style="max-height: 75vh"> 
        <div class="container" style="margin-top: 6em;border-radius: 30px;font-family: 'Questrial', sans-serif;">
            <div class="row justify-content-center">
                <div class="col-5" style="background-color:#ffffff;min-height: 60vh; border-top-left-radius: 15px;border-bottom-left-radius:15px;background-size: cover"> 
                    <div style="margin-top: 2em; margin-left: 1.5em;">
                        <div class="col" style="color:#3aaf9d;margin-top: 1.5em;text-align: center">
                            <div style="font-size: 36px">Result of the Exam!</div>
                            <div style="margin-top: 0.8em;font-family: 'Questrial', sans-serif;">
                                <img src="images/logologin.png" width="125px" height="125px"/>
                                <div style="font-size: 28px;margin-top: 0.5em">Category : ${catname}</div>
                                <div style="font-size: 28px;margin-top: 0.5em">Grade : ${catgrade}</div>
                                <div style="font-size: 28px;margin-top: 0.5em">Score : ${score}</div>
                                <div style="margin-top: 0.8em;">
                                </div>
                                <div style="margin-top: 2.5em; margin-bottom : 5em;">
                                    <a href="Search.jsp" style="border-color:#3aaf9d;background-color:rgba(0,0,0,0); 
                                       color:#3aaf9d;border-radius:10px;padding:10px;margin-top: 4.5em;text-align:center; border:0.1em solid;font-family: 'Questrial', sans-serif;">Back</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
</html>

