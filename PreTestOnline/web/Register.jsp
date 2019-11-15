<%-- 
    Document   : Register
    Created on : Nov 12, 2019, 6:23:53 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  
        <style>
            body{
                background-color:#9BCFB8;
                text-align: center;
                color: #072A24;              
            }
            p{
                font-family: 'Questrial', sans-serif;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Navbar.jsp"/>
        <form action="Register" method="post">
            <form action="Register" method="post">  
                First name <input type="text" name="fname" placeholder="fname" /><br/>  
                Last name <input type="text" name="lname"  placeholder="lname" /><br/> 
                E-mail <input type="text" name="email"  placeholder="email" /><br/>  
                username <input type="text" name="username"  placeholder="username"/><br/>  
                password <input type="password" name="password"  placeholder="password" /><br/>  
                <input type="submit" value="register"/>  
            </form>             
        </form>
    </body>
</html> 



