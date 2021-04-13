<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/9/2021
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<body>
<h1 style="text-align: center">List Customer</h1>
<div class="container">
    <table  class="border w-100 text-center" >
        <tr class="border-bottom " bgcolor="#7fffd4">
            <th>Name</th>
            <th>Birth Day</th>
            <th>Address</th>
            <th>Picture</th>
        </tr>
        <c:forEach var="customer" items="${customerListServlet}" varStatus="loop">
            <tr class="border" >
                <td class="border">${customer.name}</td>
                <td class="border">${customer.birthDay}</td>
                <td class="border">${customer.address}</td>
                <td class="border"><img src="${customer.picture}" width="50"></td>
            </tr>
        </c:forEach>
    </table>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>
