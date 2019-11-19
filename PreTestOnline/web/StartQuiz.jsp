<%-- 
    Document   : StartQuiz
    Created on : Nov 13, 2019, 3:34:18 PM
    Author     : JJ
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            .container{
                border: none; 
                box-shadow: 0 8px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 30px 0 rgba(0, 0, 0, 0.19);
                border-radius: 20px;
                margin-top: 1em;
                width: 300vh;
                height: 190vh;
                text-align: center;
            }
            p{
                font-family: 'Questrial', sans-serif;

            }
            body{
                height: 200vh;
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
            ol.d {
                list-style-type: lower-alpha;
                font-size: 18px;
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
    <body >
        <div class="container">
            <div class="row justify-content-center">
                <div style="font-size: 45px;color:#3aaf9d;text-align: center;margin-top: 0.5em;">
                    <div style="font-family: 'Questrial', sans-serif;">
                        Start Quiz
                    </div> 
                </div>
            </div>
            <div class="row" style="margin-left:1em;font-family: 'Questrial', sans-serif;font-size: 26px;margin-top: 1em">
                Please make sure that you answer all question
            </div>
            <div class="row" style="margin-left: 2em">
                <form action="Check" method="post">
                    <c:forEach items="${ques}" var="q" varStatus="qvs">
                        <div class="row" style="margin-top: 1.5em">
                            <div style="margin-right: 2em;font-family: 'Questrial', sans-serif;font-size: 22px">${qvs.count}. ${q.questName} </div>
                            <div class="col">
                                <ol class="d">
                                    <c:forEach items="${q.answers}" var="x" varStatus="vs">
                                        <li>
                                            <input type="radio" value="${x.ansId}"name="ans${qvs.count}"/>${x.ansName}
                                        </li>
                                    </c:forEach>
                                </ol>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="row justify-content-center" style="width:100%">
                        <input type="submit" value="submit" style="margin-top: 1em;"/>
                    </div>
                    
                </form>
            </div>

        </div>

    </body>
</html>
<div id="loading"></div>
