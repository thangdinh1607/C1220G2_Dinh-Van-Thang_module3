<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/14/2021
  Time: 12:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<a href="/product">Back to list after update</a>
<form method="post">
    <p>Product Name<input type="text" name="name" value="${product.getName()}"></p>
    <p>Product price<input type="text" name="price" value="${product.getPrice()}"></p>
    <p>Product description<input type="text" name="description" value="${product.getDescription()}"></p>
    <p>Product vendor<input type="text" name="vendor" value="${product.getVendor()}"></p>
    <input type="submit" value="Update Product">
</form>
</body>
</html>
