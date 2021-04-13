<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/13/2021
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            font-family: "Times New Roman";
            font-size: 16px;
        }
        table{
            background: chartreuse ;
            border-collapse :  collapse ;
        }
        th,td{
            border: 1px solid black;
            padding: 10px ;
        }
        a{
            text-decoration: none;
        }
        a:hover{
            color: red;
        }
        thead{
            background: blue;
        }
    </style>
</head>
<body>
<h1> Customer List</h1>
<a href="/customers?actionClient=create"> Create Customer</a>
<table >
    <thead >
        <th>No.</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th colspan="2">Action</th>
    </thead>
    <c:forEach items="${customers}" var="customer" varStatus="loop">
        <tbody>
            <td>${loop.index+1}</td>
            <td>${customer.getName()}</td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="/customers?actionClient=edit&id=${customer.getId()}">Edit</a></td>
            <td><a href="/customers?actionClient=delete&id=${customer.getId()}">Delete</a></td>
        </tbody>
    </c:forEach>
</table>
</body>
</html>
