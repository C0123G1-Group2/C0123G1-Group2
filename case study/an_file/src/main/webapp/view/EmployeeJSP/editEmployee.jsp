
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
<div class="content">
    <h2>Edit Employee</h2>
    <form action="/employee?action=edit&id=${id}" method="post">

        <div class="form-input">
            <label>Name Employee</label>
            <input value="${name}" class="form-control" type="text" name="name" id="name" oninput="checkName()"  style="border: 1px solid; "required>
            <small style="color: red" id="checkName"></small>
        </div>
        <div class="form-input">
            <label>Day Of Birth</label>
            <input  value="${dayOfBirth}"   class="form-control" type="text" name="dayOfBirth" id="dayOfBirth" oninput="checkDayOfBirth()" style="border: 1px solid; " required>
            <small style="color: red" id="checkDayOfBirth"></small>
        </div>
        <div class="form-input">
            <label>Phone Number</label>
            <input  value="${phoneNumber}" class="form-control"  type="text" name="phoneNumber" oninput="checkPhoneNumber()" style="border: 1px solid; " required>
            <small style="color: red" id="checkPhone"></small>
        </div>
        <div class="form-input">
            <label>Email</label>
            <input value="${email}"  class="form-control" type="text" name="email" oninput="checkEmail()"  id ="email"  style="border: 1px solid; " required>
            <small style="color: red" id="checkEmail"></small>
        </div>
        <div>
            <button type="submit"  class="btn btn-outline-dark" style="width: 48% ; margin-top: 15px ; margin-right: 2% ;background: black ; color: gold">Save</button>
            <button type="submit"  class="btn btn-outline-dark" style="width: 48% ; margin-top: 15px ;background: black ; color: white"" onclick="window.location.href='/employee?action='">Back</button>
            <br>
            <h3 style="text-align: center ; margin-top: 15px">${mess}</h3>
        </div>


    </form>
</div>
<script src="/validate/validate.js"></script>
</body>
</html>
