<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2023
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<html>
<head>
    <title>Edit</title>
    <style>
        h2{
            text-align: center;
            margin-bottom: 20px;
            margin-top: 20px;
        }
        .form-input{
            flex-direction: column;
            align-items: start;
            text-align: center;
            display: flex;
            margin-top: 1.1vw;


        }
        .content{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 400px;

        }

    </style>
</head>
<body>
<jsp:include page="/header-admin.jsp"/>
<div class="content">
<h2>Edit Customer</h2>
    <h3 style="text-align: center ; margin-top: 15px;color: green;font-size: medium">${mess}</h3>
    <h3 style="text-align: center ; margin-top: 15px;color: red;font-size: medium">${messF}</h3>
<form action="/customer?action=edit&idEdit=${customer.getCustomerId()}" method="post">

    <div class="form-input">
        <label>Name Customer</label>
        <input value="${customer.getName()}" class="form-control" type="text" name="name"  required>
    </div>
    <div>
        <label>Phone Number</label>
        <input  value="${customer.getPhoneNumber()}"   class="form-control" type="number" name="phoneNumber"     required>
    </div>
    <div>
        <label>Address</label>
        <input  value="${customer.getAddress()}" class="form-control"  type="text" name="address"  required>
    </div>
    <div>
        <label>Email</label>
        <input value="${customer.getEmail()}"  class="form-control" type="text" name="email"   required>
    </div>
    <div>
        <button type="submit"  class="btn btn-outline-primary" style="width: 100% ; margin-top: 15px ;background-color:black ; color: gold ; margin-right: 2%">Edit</button>
    </div>


</form>
    <button type="submit"  class="btn btn-outline-primary" style="width: 100% ; margin-top: 15px ;background-color:black ; color: gold ;" onclick="window.location.href='/customer?action='">Back</button>
</div>
</body>
</html>
