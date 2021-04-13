<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/13/2021
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create Customer</h1>
<a href="/customers">Back to List Customer</a>
<form method="post">
    <p> Customer Name<input type="text" name="name"></p>
    <p>Customer Email <input type="text" name="email"></p>
    <p>Customer Address<input type="text" name="address"></p>
    <input type="submit" value="Create">
</form>
</body>
</html>
