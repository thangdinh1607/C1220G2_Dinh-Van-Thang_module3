<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/9/2021
  Time: 4:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Simple Calculator</h1>
  <form action="/index" method="get">
    <p>First operand <input type="number" name="first"></p>
     <p> Operator
    <select name="operator">
      <option  value="addition">Addition</option>
      <option value="subtraction">Subtraction</option>
      <option value="multiplication">Multiplication</option>
      <option value="division">Division</option>
    </select></p>
    </p> Second operand <input type="number" name="second" ></p>
    <input type="submit" value="Calculate">
  </form>
  </body>
</html>
