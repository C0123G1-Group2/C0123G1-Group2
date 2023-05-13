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
        .navbar{
            height: 7vw ;
            background-color: black;
            padding: 0 40px;
        }
        .navbar-nav {
            display: flex;
            align-items: center;
        }
        .dropdown .dropdown-toggle{
            width: 30px;
            height: 30px;
            border-radius: 50%;
        }
        .dropdown .dropdown-toggle:after{
            content: "A" !important;
            border: none !important;
            margin-left: 0;
            position: absolute;
            top: 2px;
            left: 35%;
        }

        .dropdown-menu.show {
            right: 0 !important;
            left: auto !important;
        }
        .nav-item.active {
            margin-left: -18px;
        }
    </style>


</head>
<body>

<jsp:include page="/header-admin.jsp"/>
<div class="content">
    <h2>Create Employee</h2>
    <h3 style=" color:green;text-align: center ; margin-top: 15px;font-size: medium">${mess}</h3>
    <h3 style=" color:red;text-align: center ; margin-top: 15px;font-size: medium">${messF}</h3>
    <form action="/employee?action=create" method="post">
        <div class="form-input">
            <label>Name Employee</label>
            <input oninput="checkName()" style="border: 1px solid; "  class="form-control" type="text" name="name" id="name" required>
            <small style="color: red" id="checkName"></small>
        </div>
        <div class="form-input">
            <label>Phone Number</label>
            <input oninput="checkPhoneNumber()" style="border: 1px solid; " class="form-control" type="text" name="phoneNumber" id="phone" required>
            <small style="color: red" id="checkPhone"></small>
        </div>
        <div class="form-input">
            <label>Day Of Birth</label>
            <input oninput="checkDayOfBirth()" style="border: 1px solid; " class="form-control" type="text" name="dayOfBirth" id="dayOfBirth" required>
            <small style="color: red" id="checkDayOfBirth"></small>
        </div>
        <div class="form-input">
            <label>Email</label>
            <input  oninput="checkEmail()" style="border: 1px solid; " class="form-control" type="text" name="email" id ="email" required>
            <small style="color: red" id="checkEmail"></small>
        </div>

        <div>
            <button style=" width: 100% ; margin-top: 15px ;background: black ; color: gold" class="btn btn-outline-dark" type="submit">Create</button>
        </div>

    </form>
    <button type="submit"  class="btn btn-outline-dark" style="width: 100% ; margin-top: 15px ;color: gold ;background: black"  onclick="window.location.href='/employee?action='">Back</button>
</div>
<script src="/validate/validate.js"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    const form = document.getElementById('form-action');
    function handleClick(type) {
        if(type === 'myAccount'){
            form.action = "/LoginServlet?username=1";
            form.method = 'post';
        }
        else if(type === 'logout'){
            localStorage.removeItem('login');
            form.action = "/LoginServlet?logout=true";
            form.method = 'post';
        }
        form.submit();
    }
</script>
</body>
</html>