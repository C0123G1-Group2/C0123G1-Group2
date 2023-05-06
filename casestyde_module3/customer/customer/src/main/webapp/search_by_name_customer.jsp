<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/6/2023
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center">Search By Name </h1>
<table class="table table-striped">
<thread>
    <tr>
        <th>Customer ID</th>
        <th>Name</th>
        <th>Phone Number</th>
        <th>Address</th>
        <th>Email</th>
        <th>Delete</th>
        <th>Edit</th>
    </tr>
</thread>
<tbody>
<c:forEach var="customerList" items="${customerList}">
    <tr>
    <td>${customerList.getCustomerId()}</td>
    <td>${customerList.getName()}</td>
    <td>${customerList.getPhoneNumber()}</td>
    <td>${customerList.getAddress()}</td>
    <td>${customerList.getEmail()}</td>
    <td>
    </tr>
</c:forEach>
</tbody>
    </table>
</body>
</html>
