<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/14/2021
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<style>
    body {
        background: floralwhite;
    }

    a:hover {
        color: red;
    }

    a {
        text-decoration: none;
    }

    h1 {
        font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
        text-transform: uppercase;
        text-align: center;
        font-size: 50px;
        height: 108px;
        padding-top: 40px;
        color: #131313;
        letter-spacing: .15em;
    }

</style>

<body>

<div class="container">
    <div class="row text-warning">
        <div class="col-12 text-center">
            <h1>User List</h1>
        </div>
    </div>
    <div class="row text-info p-3">
        <div class="col-4">
            <form action="/users?action=create" method="post">
                <input type="submit" value="Create User" class="btn btn-primary">
            </form>
        </div>
        <div class="col-4">
            <form action="/users?action=selectUser" method="post">
                <p>
                    <input type="submit" value="Search ID" class="btn btn-primary">
                    <input type="number" name="id">
                </p>
            </form>
        </div>
        <div class="col-4">
            <form action="/users?action=searchName" method="post">
                <p>
                    <input type="submit" value="Search Name" class="btn btn-primary">
                    <input type="text" name="name" placeholder="Username">
                </p>
            </form>
        </div>
    </div>

    <c:if test="${messenger!=null}">
        <p>${messenger}</p>
    </c:if>
    <div class="row">
        <div class="col-12">
            <table class="table">
                <tr>
                    <thead class="thead-light">
                    <strong>
                        <th>N0.</th>
                        <th><a href="/users?action=sortName">Name</a></th>
                        <th>Email</th>
                        <th>Country</th>
                        <th colspan="2">Action</th>
                    </strong>
                    </thead>
                </tr>
                <c:forEach items="${users}" var="user" varStatus="loop">
                    <tbody>
                    <tr>
                        <td>${loop.index +1}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getEmail()}</td>
                        <td>${user.getCountry()}</td>
                        <td><a href="/users?action=delete&id=${user.getId()}">Delete</a></td>
                        <td><a href="/users?action=update&id=${user.getId()}">UpDate</a></td>
                    </tr>
                    </tbody>
                </c:forEach>

            </table>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4"></div>
                <div class="col-4">
                    <a href="/users" class="btn btn-primary"> Back to User List</a>
                </div>

            </div>

        </div>
    </div>
</div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
            integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
            crossorigin="anonymous"></script>

</body>
</html>
