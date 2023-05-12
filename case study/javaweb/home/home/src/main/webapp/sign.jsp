<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/9/2023
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<link rel="stylesheet" href="sign.css">
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="content" style="background: black">
    <h1 style="color:gold;">SIGN UP</h1>
    <form name="formSignUp" action="/sign?action=createUserCustomer" method="post" onsubmit="return validateForm()">
        <div class="form-item">
            <label style="color: gold">User</label>
            <input class="form-control-sm" type="text" name="user">
        </div>
        <div class="form-item">
            <label style="color: gold" >Password</label>
            <input class="form-control-sm" type="password" name="password">
        </div>
        <div class="form-item">
            <label style="color: gold" >Confirm Password</label>
            <input class="form-control-sm"  type="password" name="confirmPassword">
        </div>
        <div class="form-item">
            <label style="color: gold" >Name</label>
            <input class="form-control-sm"  type="text" name="name">
        </div>
        <div class="form-item">
            <label style="color: gold" >Phone Number</label>
            <input class="form-control-sm" type="text" name="phoneNumber">
        </div>
        <div class="form-item">
            <label style="color: gold" >Address</label>
            <input class="form-control-sm" type="text" name="address">
        </div>
        <div class="form-item">
            <label style="color: gold" >Email</label>
            <input class="form-control-sm" type="text" name="email">
        </div>
        <div class="btn-submit" >
            <button type="submit" style="background-color: black ; color: gold">Đăng ký</button>
        </div>
    </form>
</div>

<script>
    function validateForm() {
        const form = document.forms["formSignUp"];
        const user = form["user"].value;
        const password = form["password"].value;
        const confirmPassword = form["confirmPassword"].value;
        const name = form["name"].value;
        const phoneNumber = form["phoneNumber"].value;
        const address = form["address"].value;
        const email = form["email"].value;
        if (user != "" && password != "" && confirmPassword != "" && name != "" && phoneNumber != "" && address != "" && email != "" ){
            if (password === confirmPassword){
                alert('Congratulations, you have successfully registered');
                return true;
            }
            alert('Password does not match')
            return false
        }
        alert('Please enter all the field');
        return false;
    }
</script>
</body>
</html>
