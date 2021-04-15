<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/15/2021
  Time: 12:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>
<h1>Update User</h1>
<a href="/users"> Back to User List</a>
<form method="post">
    <p>User Name<input type="text" name="name" value="${user.getName()}"></p>
    <p>User Email<input type="text" name="email" value= "${user.getEmail()}"></p>
    <p>User Country<input type="text" name="country" value= "${user.getCountry()}"></p>
    <input type="submit" value="Update">
</form>
</body>
</html>
