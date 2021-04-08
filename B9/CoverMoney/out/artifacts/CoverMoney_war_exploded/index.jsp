<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/8/2021
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>CoverMoney</title>
  </head>
  <body>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <html>
  <head>
    <title>Currency Converter</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
  <h2>Currency Converter</h2>
  <form method="post" action="/cover">
    <label>Rate: </label><br/>
    <input type="text" name="rate" placeholder="RATE" /><br/>
    <label>USD: </label><br/>
    <input type="text" name="usd" placeholder="USD"/><br/>
    <input type = "submit" id = "submit" value = "Converter"/>
  </form>
  </body>
  </html>
  </body>
</html>
