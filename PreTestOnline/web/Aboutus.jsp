<%-- 
    Document   : Aboutus
    Created on : Nov 18, 2019, 11:31:15 PM
    Author     : Nitro5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
  </head>
  <body>
      <jsp:include page="Navbar.jsp"/>
    <section id="contact">
       <div class="container" style="margin-top:5em;margin-center: 2em;">
           <h3 class="text-center text-uppercase">contact us</h3>
<!--           <--p class="text-center w-75 m-auto"-->
           <div class="row">
             <div class="col-sm-12 col-md-6 col-lg-3 my-5">
               <div class="card border-0">
                  <div class="card-body text-center">
                    <i class="fa fa-phone fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase mb-5">Call us</h4>
                    <p>+66 87911760</p>
                    <p>+66 87911760</p>
                    <p>+66 889797494</p>
                  </div>
                </div>
             </div>
               <div class="col-sm-12 col-md-6 col-lg-3 my-5">
                   <div class="card border-0">
                       <div class="card-body text-center">
                           <i class="fa fa-map-marker fa-5x mb-3" aria-hidden="true"></i>
                           <h4 class="text-uppercase mb-5">Office loaction</h4>
                           <address>126 Pracha Uthit Rd., Bang Mod, Thung Khru, Bangkok, Thailand 10140</address>
                       </div>
                   </div>
               </div>
               <div class="col-sm-12 col-md-6 col-lg-3 my-5">
                   <div class="card border-0">
                       <div class="card-body text-center">
                           <image src="images/facebook.png" style="width: 65px; height: 65px; margin-top: 1.3vh;"> 
                           <h4 class="text-uppercase mb-5" style="margin-top: 3.8vh;">Facebook</h4>
                           <p>Fb : JJ Wongsripisant</p>
                           <p>Fb : Boos Wasana</p>
                           <p>Fb : Punch Siriyakorn</p>
                       </div>
                   </div>
             </div>
             <div class="col-sm-12 col-md-6 col-lg-3 my-5">
               <div class="card border-0">
                  <div class="card-body text-center">
                    <i class="fa fa-globe fa-5x mb-3" aria-hidden="true"></i>
                    <h4 class="text-uppercase mb-5">email</h4>
                    <p>pasin.pnz@mail.kmutt.ac.th</p>
                    <p>wasana.bt@mail.kmutt.ac.th</p>
                    <p>siriyakorn.suasosit@mail.kmutt.ac.th</p>
                  </div>
                </div>
             </div>
           </div>
       </div>
    </section>
  </body>
</html>
