<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/13/2021
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h1>Edit Customer</h1>
<a href="/customers">Load List Customer after update</a>
<form method="post">
    <p> Customer Name<input type="text" name ="name" value="${customer.getName()}" ></p>
    <p> Customer Name<input type="text" name ="email" value="${customer.getEmail()}" ></p>
    <p> Customer Name<input type="text" name ="address" value="${customer.getAddress()}" ></p>
    <input type="submit" value=" Edit">
</form>
</body>
</html>
