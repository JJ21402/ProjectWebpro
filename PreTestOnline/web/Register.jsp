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
    </head>
    <body>
        <jsp:include page="Navbar.jsp"/>
        <form action="Register" method="post">  
            <form class="card-pad" id="signup_form" method="POST" action="/accounts/signup/" role="form">
                <input type="hidden" name="csrfmiddlewaretoken" value="7NvrtCglTd3br2SfMMzBFRvPXNxQaUQO">
                    
                <div class="form-group">

                    <label for="id_username" class="sr-only">Firstname</label>
                    <input id="id_username" class="form-control" maxlength="30" name="fname" placeholder="Firstname" type="text">
                </div>
                <div class="form-group">

                    <label for="id_email" class="sr-only">Lastname</label>
                    <input id="id_email" class="form-control" name="lname" placeholder="Lastname" type="text">
                </div>
                <div class="form-group">

                    <label for="id_password1" class="sr-only">e-mail</label>
                    <input id="id_password1" class="form-control" name="email" placeholder="email" type="password">
                </div>
                <div class="form-group">

                    <label for="id_password2" class="sr-only">username</label>
                    <input id="id_password2" class="form-control" name="username" placeholder="username" type="password">
                </div>
                <div class="form-group">

                    <label for="id_password2" class="sr-only">password</label>
                    <input id="id_password2" class="form-control" name="password" placeholder="password" type="password">
                </div>
                <input type="hidden" name="next" value="/accounts/signup/">
                <button class="btn btn-primary btn-block" type="submit">Register</button>
            </form>
            <br>

        </form>
        <!--        <form action="Register" method="post">  
                    First name <input type="text" name="fname" placeholder="fname" /><br/>  
                    Last name <input type="text" name="lname"  placeholder="lname" /><br/> 
                    E-mail <input type="text" name="email"  placeholder="email" /><br/>  
                    username <input type="text" name="username"  placeholder="username"/><br/>  
                    password <input type="password" name="password"  placeholder="password" /><br/>  
                    <input type="submit" value="register"/>  
                </form>  -->
    </body>
</html>
