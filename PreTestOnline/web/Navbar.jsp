<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        /*        .topnav {
                    overflow: hidden;
                    background-color: #072A24;
                    font-family: 'Questrial', sans-serif;
                    height: 65px;
                }
                .link {
                    float: left;
                    color: #fff ;
                    text-align: center;
                    padding: 18px 30px;
                    text-decoration: none;
        
                }
                .topnav a:hover {
                    background-color: #689C97;
                    color: #fff ;
                }
                .login{
                    color: #fff ;
                    text-align: center;
                    padding: 18px 50px;
                    font-size: 17px;
                    padding: 18px 50px;
                    margin-top: 4px
                }
                .loading {
                    position: fixed;
                    z-index: 999;
                    height: 2em;
                    width: 2em;
                    overflow: show;
                    margin: auto;
                    top: 0;
                    left: 0;
                    bottom: 0;
                    right: 0;
                }
        
                 Transparent Overlay 
                .loading:before {
                    content: '';
                    display: block;
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: rgba(0,0,0,0.3);
                }
        
                 :not(:required) hides these rules from IE9 and below 
                .loading:not(:required) {
                     hide "loading..." text 
                    font: 0/0 a;
                    color: transparent;
                    text-shadow: none;
                    background-color: transparent;
                    border: 0;
                }
        
                .loading:not(:required):after {
                    content: '';
                    display: block;
                    font-size: 10px;
                    width: 1em;
                    height: 1em;
                    margin-top: -0.5em;
                    -webkit-animation: spinner 1500ms infinite linear;
                    -moz-animation: spinner 1500ms infinite linear;
                    -ms-animation: spinner 1500ms infinite linear;
                    -o-animation: spinner 1500ms infinite linear;
                    animation: spinner 1500ms infinite linear;
                    border-radius: 0.5em;
                    -webkit-box-shadow: rgba(0, 0, 0, 0.75) 1.5em 0 0 0, rgba(0, 0, 0, 0.75) 1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) 0 1.5em 0 0, rgba(0, 0, 0, 0.75) -1.1em 1.1em 0 0, rgba(0, 0, 0, 0.5) -1.5em 0 0 0, rgba(0, 0, 0, 0.5) -1.1em -1.1em 0 0, rgba(0, 0, 0, 0.75) 0 -1.5em 0 0, rgba(0, 0, 0, 0.75) 1.1em -1.1em 0 0;
                    box-shadow: rgba(0, 0, 0, 0.75) 1.5em 0 0 0, rgba(0, 0, 0, 0.75) 1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) 0 1.5em 0 0, rgba(0, 0, 0, 0.75) -1.1em 1.1em 0 0, rgba(0, 0, 0, 0.75) -1.5em 0 0 0, rgba(0, 0, 0, 0.75) -1.1em -1.1em 0 0, rgba(0, 0, 0, 0.75) 0 -1.5em 0 0, rgba(0, 0, 0, 0.75) 1.1em -1.1em 0 0;
                }
        
                 Animation 
        
                @-webkit-keyframes spinner {
                    0% {
                        -webkit-transform: rotate(0deg);
                        -moz-transform: rotate(0deg);
                        -ms-transform: rotate(0deg);
                        -o-transform: rotate(0deg);
                        transform: rotate(0deg);
                    }
                    100% {
                        -webkit-transform: rotate(360deg);
                        -moz-transform: rotate(360deg);
                        -ms-transform: rotate(360deg);
                        -o-transform: rotate(360deg);
                        transform: rotate(360deg);
                    }
                }
                @-moz-keyframes spinner {
                    0% {
                        -webkit-transform: rotate(0deg);
                        -moz-transform: rotate(0deg);
                        -ms-transform: rotate(0deg);
                        -o-transform: rotate(0deg);
                        transform: rotate(0deg);
                    }
                    100% {
                        -webkit-transform: rotate(360deg);
                        -moz-transform: rotate(360deg);
                        -ms-transform: rotate(360deg);
                        -o-transform: rotate(360deg);
                        transform: rotate(360deg);
                    }
                }
                @-o-keyframes spinner {
                    0% {
                        -webkit-transform: rotate(0deg);
                        -moz-transform: rotate(0deg);
                        -ms-transform: rotate(0deg);
                        -o-transform: rotate(0deg);
                        transform: rotate(0deg);
                    }
                    100% {
                        -webkit-transform: rotate(360deg);
                        -moz-transform: rotate(360deg);
                        -ms-transform: rotate(360deg);
                        -o-transform: rotate(360deg);
                        transform: rotate(360deg);
                    }
                }
                @keyframes spinner {
                    0% {
                        -webkit-transform: rotate(0deg);
                        -moz-transform: rotate(0deg);
                        -ms-transform: rotate(0deg);
                        -o-transform: rotate(0deg);
                        transform: rotate(0deg);
                    }
                    100% {
                        -webkit-transform: rotate(360deg);
                        -moz-transform: rotate(360deg);
                        -ms-transform: rotate(360deg);
                        -o-transform: rotate(360deg);
                        transform: rotate(360deg);
                    }
                }*/
       .topnav {
                    overflow: hidden;
                    background-color: #072A24;
                    font-family: 'Questrial', sans-serif;
                    height: 65px;
                }
                .link {
                    float: left;
                    color: #fff ;
                    text-align: center;
                    padding: 18px 30px;
                    text-decoration: none;
        
                }
                .topnav a:hover {
                    background-color: #689C97;
                    color: #fff ;
                }
                .login{
                    color: #fff ;
                    text-align: center;
                    padding: 18px 50px;
                    font-size: 17px;
                    padding: 18px 50px;
                    margin-top: 4px
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
            background-image: url(images/onload.gif);;
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
            setVisible('.topnav', true);
            setVisible('#loading', false);
        });
    </script>
</head>
<body>
<div class="topnav ">      
    <a href="HomePage.jsp" class="link" style="text-decoration: none;font-size: 20px;">
        <img src="images/penguin.png" alt="logo" width="40px" height="40px" style="margin-right: 0.5em;padding-bottom: 5px;"/>
        Home
    </a>
    <a href="#news" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">News</a>
    <a href="Search.jsp" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">Exam</a>
    <a href="Aboutus.jsp" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">About us</a>       
    <div class="float-right login">
        <a href="${user!=null?"Profile.jsp":"Login"}" class="lore" style="margin-right: 1.5em; text-decoration: none;color: #fff ; background-color: #072A24;"
           <img src="images/man.png"> ${user==null? "Login":user.fname}</a>
           
        <a href="Register" class="lore" style=" text-decoration: none;color: #fff ; background-color: #072A24;">${user==null? "Register":""}</a>
        <a href="Logout" class="lore" style=" text-decoration: none;color: #fff ; background-color: #072A24;">${user!=null? "Logout":""}</a>
    </div>
</div>
</body>
<div id="loading"></div>

<!--<div class="loading"></div>-->
