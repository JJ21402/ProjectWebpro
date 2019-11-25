<%-- 
    Document   : HomePage
    Created on : Nov 12, 2019, 6:14:45 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .news{
                background-color:#9BCFB8;
                height: 100vh;
            }
            body{
                min-height: 200vh;

            }
            html{

                scroll-behavior: smooth;
            }
        </style>
    </head>
    <body id="banner">
        <jsp:include page="Navbar.jsp"/>
        <div class="bd-example" >
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/banner1.png" class="d-block w-100" alt="..." style="height: 93vh">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="conteiner" style="margin-bottom: 10em;margin-left:25em">
                                <div class="row">
                                    <div class="col" style="text-align: left;font-size: 20px;font-family: 'Questrial', sans-serif;color: #ffffff;margin-top: 5em;">
                                        <h2>Practise Listening and Speaking Skills</h2> 
                                        <p>Spend some time each day improving your English, especially your listening and speaking skills. These skills are very important (and difficult to improve).
                                            People don’t want to use English because their English is terrible. 
                                            That’s why they rely on their native language so much.</p>
                                    </div>
                                </div>
                            </div>
                            <h5>First slide </h5>
                            <p>Writing this article in English.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/banner2.png" class="d-block w-100" alt="..." style="height: 93vh">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="conteiner" style="margin-bottom: 10em;margin-right:25em">
                                <div class="col" style="text-align: left;font-size: 20px;font-family: 'Questrial', sans-serif;color: #ffffff;margin-top: 5em;">
                                    <h2>Make English a Part of Your Daily Life</h2> 
                                    <p>Some people like to do everything in their native language because it’s more comfortable. 
                                        But if you want to think in English, you have to develop the habit of using English whenever possible.
                                        When you make English a part of your life, thinking in English is easy.</p>
                                </div>                       
                            </div>
                            <h5>Second slide </h5>
                            <p>Read something in English quite often.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/banner3.png" class="d-block w-100" alt="..." style="height: 93vh">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="conteiner" style="margin-bottom: 10em;margin-left:25em">
                                <div class="col" style="text-align: left;font-size: 20px;font-family: 'Questrial', sans-serif;color: #ffffff;margin-top: 5em;">
                                    <h3>The Reason You Can’t Think in English</h3> 
                                    <p>Some English students have the habit of translating between English and their native language when they use English.This usually happens when they write and read in English.
                                        If you have this habit, making English a part of your life is NOT enough; you also have to get rid of this bad habit.</p>
                                </div>                       
                            </div>
                            <h5>Third slide </h5>
                            <p>Practice speaking English almost every day.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="news" id="news">

            <div class="container">
                <div class="row">
                    <div class="col" style="text-align: center;font-size: 48px;font-family: 'Questrial', sans-serif;color: #ffffff;margin-top: 1em;">News & Events</div>
                </div>
                <div class="row">
                    <div class="col" style="text-align: center;font-size: 22px;font-family: 'Questrial', sans-serif;color: #ffffff;margin-top: 0.5em;">
                        Some students want to write something in English, they write it in their native language first, then they translate what they wrote to English.
                        They tend to do this when they have to write a long email, passage, or article in English.This is not a proper way to write in English.
                        If you do this often, you must stop. If you have to write something in English, force yourself to just write in English from the start.                
                    </div>
                </div>
                <div class="row d-flex justify-content-center" style="margin-top: 3em;">
                    <div class="col" style="margin-left: 2em;">
                        <div class="card" style="width: 19rem;text-align: center">
                            <div class="card-body">
                                <h5 class="card-title">Youtube</h5>
                                <p class="card-text">Empower Your Life, Empower Your Language</p>
                                <a href="http://www.youtube.com/embed/watch?v=dqNYpzP6n3s&list=PLXaM6KmSrQNanXrLQVUPbzMdtOobF6cnK"class="btn btn-secondary">Enter</a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="margin-left: 2em;">
                        <div class="card" style="width: 19rem;text-align: center">
                            <div class="card-body">

                                <h5 class="card-title">Facebook</h5>
                                <p class="card-text">Empower Your Life, Empower Your Language </p>
                                <a href="https://www.facebook.com/krupnan"class="btn btn-secondary">Enter</a>
                            </div>
                        </div>
                    </div>
                    <div class="col" style="margin-left: 2em;">
                        <div class="card" style="width: 19rem;text-align: center">
                            <div class="card-body">
                                <h5 class="card-title">Twitter</h5>
                                <p class="card-text">Empower Your Life, Empower Your Language</p>
                                <a href="https://twitter.com/krupnan" class="btn btn-secondary">Enter</a>
                            </div>
                        </div>              
                    </div>
                </div>

            </div>
        </div>
        <jsp:include page="Aboutus.jsp"/>
        
    </body>
</html>
