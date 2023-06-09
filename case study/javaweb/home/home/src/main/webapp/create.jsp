<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2023
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
    <style>
    h2{
        text-align: center;
        margin-bottom: 20px;
        margin-top: 20px;
    }
    .form-input{
        display: flex;
        flex-direction: column;
        align-items: start;
        text-align: center;
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
<jsp:include page="header-admin.jsp"/>

<div class="content">
<h2>Create Customer</h2>
    <h3 style="text-align: center ; margin-top: 15px;color: green;font-size: medium">${mess}</h3>
    <h3 style="text-align: center ; margin-top: 15px;color: red;font-size: medium">${messF}</h3>
<form action="/customer?action=create" method="post">

    <div class="form-input">
        <label for="regexName">Name Customer</label>
        <small  style="color: red" id="checkName" ></small>
        <input style="border: 1px solid; " oninput="checkName()" class="form-control" type="text" name="name" id="regexName" required>

    </div>
    <div class="form-input">
        <label>Phone Number</label>
        <input style="border: 1px solid; " class="form-control" type="text" name="phoneNumber" id="phone" oninput="checkPhoneNumber()" required>
        <small  style="color: red" id="checkPhone" ></small>
    </div>
    <div class="form-input">
        <label>Address</label>
        <input style="border: 1px solid; " class="form-control" type="text" name="address" required>
    </div>
    <div class="form-input">
        <label>Email</label>
        <input style="border: 1px solid; " class="form-control" type="text" name="email" id="email" oninput="checkEmail()" required>
        <small  style="color: red" id="checkEmail" ></small>
    </div>

    <div>
        <button style=" width: 100% ; margin-top: 15px ;background-color:black ; color: yellow ;" class="btn btn-outline-primary" type="submit">Create</button>
    </div>

</form>
    <button type="submit"  class="btn btn-outline-primary" style="width: 100% ; margin-top: 15px ;background-color:black ; color: gold ;"  onclick="window.location.href='/customer?action='">Back</button>
</div>
<%--<c:if test="${check}">Added successfully</c:if>--%>
<%--//  oninput="checkName()
--%>
<%--<script>--%>
<%--  function checkName(){--%>
<%--    let name = document.getElementById("name").value;--%>
<%--    let regexName=//;--%>
<%--    if(regexName.test(name)){--%>
<%--      document.getElementById("nameError").innerText="";--%>
<%--    }else {--%>
<%--      document.getElementById("nameError").innerText="The name is not in the correct format";--%>
<%--    }--%>

<%--  }--%>

<%--</script>--%>
<script src="regex.js"></script>

</body>
</html>
