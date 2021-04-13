<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/14/2021
  Time: 12:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<h1>Create Product</h1>
<a href="/product">Back to list product</a>
<form method="post">
    <p> Product Name<input type="text" name = "name" placeholder="ProductName"></p>
    <p>Product Price<input type="text" name = "price" placeholder="ProductPrice"></p>
    <p> Product Description<input type="text" name = "description" placeholder="ProductDescription"></p>
    <p>Product vendor <input type="text" name = "vendor" placeholder="ProductVendor"></p>
    <p><input type="submit" value="Create Product"></p>
</form>

</body>
</html>
