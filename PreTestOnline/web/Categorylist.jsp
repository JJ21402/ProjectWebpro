<%-- 
    Document   : ElementaryGrade
    Created on : Nov 15, 2019, 5:58:15 PM
    Author     : Nitro5
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Categories List</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <style>
          

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
            padding:0.40em 1em;
            border:0.1em solid #3aaf9d;
            margin:0 0.2em 0.2em 0;
            border-radius:0.12em;
            text-decoration:none;
/*            font-weight:300;*/
/*            text-shadow: 0 0.04em 0.04em rgba(0,0,0,0.35);*/

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
            function myFunctin(){
                confirm("Do you want to delete ?");
            }
        </script>
    </head>
    <body>

        <div class="container" style="margin-top: 3em;border-radius: 30px;font-family: 'Questrial', sans-serif;">
            <h2>Categories List</h2>
            <p>English Quizzes : Do as many questions as you like. Get the answer after each question!</p>
            <p>${admin==null?"":"Admin :"}${admin.name}</p>
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th>Categories</th>
                        <th>Grade</th>
                        <th>Todo</th>
                        <th>${admin==null?"":"Delete"}</th>
                    </tr>
                </thead>
                <tbody>   
                    <c:forEach items="${cate}" var="c">
                        <tr>
                            <td>${c.catName}</td>
                            <td>${c.grade}</td>   
                            <td><a href="Question?catid=${c.catId}" >Quiz</a></td>
                            <td><a href="DeleteCat?catid=${c.catId}" onclick="myFunctin()">${admin==null?"":"Delete"}</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
                    <div class="row justify-content-center" style="font-family: 'Questrial', sans-serif;">
                <a data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample"> 
                    ${admin==null?"":"ADD"}
                </a>
                <div class="collapse" id="collapseExample" style="margin-top: 1.5em;font-family: 'Questrial', sans-serif;">
                    <div class="card card-body" style="width:70vh;margin-top: 1em">
                        <form action="Add" method="post">
                            <input type="text" name="grade_page" value="${page}" hidden>
                            Category : <input type="text" name="cat"/><br>
                            Grade : <input type="text" name="grade"/><br>
                            <input type="submit" value="confirm" style="border-color:#3aaf9d;background-color:#ffffff;margin-left: 12em; 
               color:#3aaf9d;border-radius:10px;padding:10px;text-align:center; border:0.1em solid #3aaf9d;font-family: 'Questrial', sans-serif;"/>
                        </form>                            
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div style="margin-top: 2.5em; margin-bottom : 5em;">
                <a href="Search.jsp" style="border-color:#3aaf9d;background-color:#ffffff; 
               color:#3aaf9d;border-radius:10px;padding:10px;margin-bottom: 4.5em;text-align:center; border:0.1em solid #3aaf9d;font-family: 'Questrial', sans-serif;">Back</a>
            </div>
        </div>
    </body>
</html>
<div id="loading"></div>

