<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/16/2021
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>

<div class="container text-center">
    <div class="row text-warning">
        <div class="col-12 text-center">
            <h1>Customer List</h1>
        </div>
    </div>
    <div class="row text-info p-3">
        <div class="col-4">
<%--            <form action="?action=create" method="get">--%>
<%--                <input type="submit" value="Create Customer" class="btn btn-primary">--%>
<%--            </form>--%>
    <a href="/customer?action=create" class="btn btn-primary">Create Customer</a>
        </div>
        <div class="col-4">
            <form action="/customer?action=search" method="post">
                <p>
                    <input type="submit" value="Search ID" class="btn btn-primary">
                    <input type="number" name="id" placeholder="Customer ID">
                </p>
            </form>
        </div>
        <div class="col-4">
            <form action="/customer?action=searchName" method="post">
                <p>
                    <input type="submit" value="Search Name" class="btn btn-primary">
                    <input type="text" name="name" placeholder="Customer Name">
                </p>
            </form>
        </div>
    </div>

    <c:if test="${messenger!=null}">
        <p>${messenger}</p>
    </c:if>
    <div class="row">
        <div class="col-12">
            <table class="table">
                <tr>
                    <thead class="thead-dark">

                        <th>N0.</th>
                        <th>ID</th>
                        <th>Type Customer</th>
                        <th>Name</th>
                        <th>Birth Day</th>
                        <th>Gender</th>
                        <th>Id Card</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th colspan="2">Action</th>

                    </thead>
                </tr>
                <c:forEach items="${customers}" var="customer" varStatus="loop">
                    <tbody>
                    <tr>
                        <td>${loop.index +1}</td>
                        <td>${customer.getId()}</td>
                        <td>${customer.getTypeId()}</td>
                        <td>${customer.getName()}</td>
                        <td>${customer.getBirthDay()}</td>
                        <td>${customer.isGender()}</td>
                        <td>${customer.getIdCard()}</td>
                        <td>${customer.getPhoneNumber()}</td>
                        <td>${customer.getEmail()}</td>
                        <td>${customer.getAddress()}</td>
                        <td><a href="/customer?action=delete&id=${customer.getId()}">Delete</a></td>
                        <td><a href="/customer?action=update&id=${customer.getId()}">UpDate</a></td>
                    </tr>
                    </tbody>
                </c:forEach>

            </table>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4"></div>
                <div class="col-4">
                    <a href="/index.jsp" class="btn btn-primary"> Back to index</a>
                </div>
            </div>
        </div>
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
