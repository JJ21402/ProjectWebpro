<head>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Questrial|Varela+Round&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .topnav {
            overflow: hidden;
            background-color: #072A24;
            font-family: 'Questrial', sans-serif;
            height: 65px;
            position: fixed;
            width: 100%;
        }
        .link {
            float: left;
            color: #fff ;
            text-align: center;
            padding: 18px 30px;
            text-decoration: none;


        }
        .topnav a:hover {
            background-color: #5D6D7E;
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

    </style>
</head>
<div class="topnav ">      
    <a href="HomePage.jsp" class="link" style="text-decoration: none;font-size: 20px;">
        <img src="images/penguin.png" alt="logo" width="40px" height="40px" style="margin-right: 0.5em;padding-bottom: 5px;"/>
        Home
    </a>
    <a href="#section1" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">Grade1-3</a>
    <a href="#section2" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">Grade4-6</a>
    <a href="#section3" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">Grade7-9</a>
    <a href="#section4" class="link" style="text-decoration: none;font-size: 20px;height: 75px;margin-top: 3px">Grade10-12</a>     
    <div class="float-right login">
        <a href="${user!=null?"Profile.jsp":"Login"}" class="lore" style="margin-right: 1.5em; text-decoration: none;color: #fff ; background-color: #072A24;"
           <img src="images/man.png"> ${user==null? "Login":user.fname}</a>
        <!--            <a href="Login" class="lore" style="margin-right: 1.5em; text-decoration: none;color: #fff ; background-color: #072A24;">Login</a>-->
        <!--            <a href="Register" class="lore" style=" text-decoration: none;color: #fff ; background-color: #072A24;">Register</a>-->
        <a href="Register" class="lore" style=" text-decoration: none;color: #fff ; background-color: #072A24;">${user==null? "Register":""}</a>
        <a href="Logout" class="lore" style=" text-decoration: none;color: #fff ; background-color: #072A24;">${user!=null? "Logout":""}</a>
    </div>
</div>

