<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/8/2021
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DiscountCalculator</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
      integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<style>
    body {
        background: aquamarine;
    }
</style>
<body>


<div class="container">
    <div style="margin-bottom: 30px ">
        <h2 style="text-align: center">Discount Calculator</h2>
    </div>

        <form method="get" action="/display-discount">
            <div class="input-group mb-3 ">
                <div class="input-group-prepend">
                    <span class="input-group-text">Description</span>
                </div>
                <input type="text" name="Description" class="form-control" placeholder="Description"
                       aria-label="Username"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">ListPrice</span>
                </div>
                <input type="number" name="ListPrice" class="form-control" placeholder="ListPrice" aria-label="Username"
                       aria-describedby="basic-addon1">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">Discount</span>
                </div>
                <input type="number" name="Discount" class="form-control" placeholder="Discount" aria-label="Username"
                       aria-describedby="basic-addon1">
            </div>
            <div class="btn btn-primary" style="margin-top:20px ">
                <input type="submit" id="submit" value="Enter"/>
            </div>
        </form>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
</body>
</html>
