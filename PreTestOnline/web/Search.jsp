<%-- 
    Document   : Search
    Created on : Oct 19, 2019, 11:58:08 PM
    Author     : Nitro5
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Search</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <style>
            bg1{
                background-color:#9aceb8;
                min-height: 100vh;
            }
            html{

                scroll-behavior: smooth;
            }
            bg2{
                background-color:#7fb174;
                min-height: 100vh;
            }
            html{

                scroll-behavior: smooth;
            }
            bg3{
                background-color:#689c97;
                min-height: 100vh;
            }
            bg4{
                background-color:#66cc99;
                min-height: 100vh;
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
                setVisible('#container', true);
                setVisible('#loading', false);
            });
        </script>
    </head>
    <body >
        <jsp:include page="NavbarforSearch.jsp"/>
        <div id="container">
        <div id="section1" class="container-fluid bg1" style="height: 100vh;background-color: #9aceb8">
            <center style="padding-top: 15em;">
                <h1>Grade 1 - 3 Quiz</h1>
                <p>Many of the lessons in this EnglishClub  end with a quiz. Below are direct links to those quizzes in alphabetical order. </p>
                <p>They can be done online or printed out for home or classroom use!</p>
                 <a href="${user==null?"Login.jsp":"Cat?grade=a"}" class="regis" style="border-color:#FFFFFF; background-color:rgba(0,0,0,0); 
                   color:#FFFFFF;border-radius:10px">Enter</a>
            </center>
        </div>
        <div id="section2" class="container-fluid bg2" style="height: 100vh;background-color: #7fb174">
            <center style="padding-top: 15em;">
                <h2>Grade 4 - 6 Quiz</h2>
                <p>Many of the lessons in this EnglishClub  end with a quiz. Below are direct links to those quizzes in alphabetical order. </p>
                <p>They can be done online or printed out for home or classroom use!</p>
                <a href="Cat?grade=b" class="regis" style="border-color:#FFFFFF; background-color:rgba(0,0,0,0); 
                   color:#FFFFFF;border-radius:10px">Enter</a>
            </center>
        </div>
        <div id="section3" class="container-fluid bg3" style="height: 100vh;background-color:#689c97">
            <center style="padding-top: 15em;">
                <h2>Grade 7 - 9 Quiz</h2>
                <p>Many of the lessons in this EnglishClub end with a quiz. Below are direct links to those quizzes in alphabetical order.</p>
                <p> They can be done online or printed out for home or classroom use!</p>
                 <a href="Cat?grade=c" class="regis" style="border-color:#FFFFFF; background-color:rgba(0,0,0,0); 
                   color:#FFFFFF;border-radius:10px">Enter</a>
            </center>
        </div>
        <div id="section4" class="container-fluid bg4" style="height: 100vh;background-color:#66cc99">
            <center style="padding-top: 15em;">
                <h2>Grade 10 - 12 Quiz</h2>
                <p>Many of the lessons in this EnglishClub end with a quiz. Below are direct links to those quizzes in alphabetical order. </p>
                <p> They can be done online or printed out for home or classroom use!</p>
                <a href="Cat?grade=d" class="regis" style="border-color:#FFFFFF; background-color:rgba(0,0,0,0); 
                   color:#FFFFFF;border-radius:10px">Enter</a>
            </center>
        </div>
        </div>
    </body>
</html>
<div id="loading"></div>
