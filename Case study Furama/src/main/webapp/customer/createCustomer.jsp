<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/16/2021
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Customer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
<h1>Create customer</h1>
<c:if test="${messenger!=null}">
    <p>${messenger}</p>
</c:if>
<form method="post">
    <p> Name Customer<input type="text" name="name"></p>
    <p>Type Customer <input type="number" name="type"></p>
    <p>Birth Day <input type="date" name="birthDay"></p>
    <p>
        Genger<select name="gender">
        <option value="1">Male</option>
        <option value="0">Female</option>
    </select>
    </p>
    <p> ID card <input type="text" name="idCard"></p>
    <p>Phone <input type="text" name="phoneNumber"></p>
    <p> Email<input type="text" name="email"></p>
    <p>Address <input type="text" name="address"></p>
    <input type="submit" value="Create Customer" class="btn btn-primary">

    <div class="row">
        <div class="col-4"></div>
        <div class="col-4"></div>
        <div class="col-4">
            <a href="/customer" class="btn btn-primary"> Back to User List</a>
        </div>
    </div>
</form>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
</body>
</html>
