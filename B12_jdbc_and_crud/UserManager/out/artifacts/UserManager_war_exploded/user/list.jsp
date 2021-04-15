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
</head>
<body>
<h1>User List</h1>
<a href="/users?action=create">Creat User</a>
<p>
    <form action="/users?action=selectUser" method="post">
<p>Input ID <input type="number" name="id"></p>
<input type="submit" value="Search ID">
</form>
<form action="/users?action=searchName" method="post">
    <p>Input Name <input type="text" name="name"></p>
    <input type="submit" value="Search Name">
</form>
</p>


<c:if test="${messenger!=null}">
    <p>${messenger}</p>
</c:if>
<table border="1px">
    <tr>

        <thead>
        <strong>
            <th>N0.</th>
            <th>Name</th>
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
<a href="/users"> Back to User List</a>
</body>
</html>
