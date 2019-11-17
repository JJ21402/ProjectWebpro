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
    </head>
    <body>

        <div class="container">
            <h2>Elementary Grade</h2>
            <p>For Grade : 1 - 3 They can be done online or printed out for home or classroom use!</p>
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Grade</th>
                        <th>Icon</th>
                        <th>Icon</th>
                    </tr>
                </thead>
                <tbody>   
                    <c:forEach items="${cate}" var="c">
                    <tr>
                        <td>${c.catName}</td>
                        <td>${c.grade}</td>   
                        <td><a href="Question?catid=${c.catId}">DoExam</a></td>
                    </tr>
                    </c:forEach>
                    
                    
                </tbody>
            </table>
        </div>

    </body>
</html>

