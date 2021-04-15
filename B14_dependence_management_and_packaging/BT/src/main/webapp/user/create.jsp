<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/14/2021
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Users</title>
</head>
<body>
<h1>Create User</h1>
<c:if test="${messenger!=null}">
    <p>${messenger}</p>
</c:if>
<a href="/users">Back to User list </a>
<form method="post">
    <p>User Name<input type="text" name="name"></p>
    <p> User Email<input type="text" name="email"></p>
    <p>User Country<input type="text" name="country"></p>
    <input type="submit" value="Create">
</form>
</body>
</html>
