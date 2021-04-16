<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/16/2021
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Customer</title>
</head>
<body>
<h1>Create customer</h1>
<form action="/customer?action=create">
    <p> Name Customer<input type="text" name="name"></p>
    <p>Type Customer <input type="number" name="type"></p>
    <p>Birth Day <input type="text" name="birthday"></p>
    <p>
        Genger<select name="gender">
        <option value="1">Male</option>
        <option value="0">Female</option>
    </select>
    </p>
    <p> ID card <input type="text" name="idcard"></p>
    <p>Phone <input type="text" name="phone"></p>
    <p> Email<input type="text" name="email"></p>
    <p>Address <input type="text" name="address"></p>
    <input type="submit" value="Create Customer">
</form>
</body>
</html>
