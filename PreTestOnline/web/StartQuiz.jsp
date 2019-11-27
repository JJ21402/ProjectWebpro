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
                
            }
            p{
                font-family: 'Questrial', sans-serif;

            }
            body{
                height: 200vh;
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
            ol.d {
                list-style-type: lower-alpha;
                font-size: 18px;
            }
                 input[type=text]{
            width: 100%;
            height: 25%;
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
            <div class="row justify-content-center">
                <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"> 
                    ${admin==null?"":"ADD"}
                </a>
                <div class="collapse" id="collapseExample" style="margin-top: 1.5em;">
                    <div class="card card-body" style="width:70vh;margin-top: 1em">
                        <form action="Addqueschoice" method="get"> 
                            <input type="text" name="catid" value="${catid}" hidden>
                            Question : <input type="text" name="ques"/><br>
                            Choice1 : <input type="text" name="choice"/><br>
                            Choice2 : <input type="text" name="choice"/><br>
                            Choice3 : <input type="text" name="choice"/><br>
                            
                            Answer : <select name="answer">
                                <option value="1" >choice1</option>
                                <option value="2"  >choice2</option>
                                <option value="3" >choice3</option>
                                

                            </select>
                            <input type="submit" value="confirm" style="border-color:#3aaf9d; background-color:rgba(0,0,0,0); 
                                   color:#3aaf9d;margin-left: 13em"/>
                        </form>                  
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
                                        <br>
                                        <li>
                                            <input type="radio" value="${x.ansId}"name="ans${qvs.count}"/>${x.ansName}
                                        </li>
                                    </c:forEach>
                                </ol>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="row justify-content-center" style="width:100%">
                         <input type="text" name="catname" value="${namecat}" hidden>
                         <input type="text" name="catgrade" value="${gradecat}" hidden>
                        <input type="submit" value="submit" style="margin-top: 1em;background-color:rgba(0,0,0,0);"/>
                    </div>
                    
                </form>
            </div>

        </div>

    </body>
</html>
<div id="loading"></div>
