<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/13/2021
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<a href="/product?actionClient=create">Create Product</a>
<table border="1px">
    <tr>
        <th>No.</th>
        <th>name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Vendor</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${products}" var="product" varStatus="loop">
        <tr>
            <td>${loop.index +1}</td>
            <td> ${product.getName()}</td>
            <td> ${product.getPrice()}</td>
            <td> ${product.getDescription()}</td>
            <td> ${product.getVendor()}</td>
            <td><a href="/product?actionClient=update&id=${product.getId()}">Update</a></td>
            <td><a href="/product?actionClient=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
