<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2023
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="login.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<style media="screen">
  *,
  *:before,
  *:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
  }
  body{
    background-color: #080710;
    background-image: url(https://tophinhanhdep.com/wp-content/uploads/2021/10/Black-and-Gold-Desktop-Wallpapers.jpg);
  }
  .background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
  }
  .background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
  }
  form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 25px;
  }
  form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
  }
  form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
    color: white;
  }

  label{
    margin-top: 14px;
    font-size: 16px;
    font-weight: 500;
  }
  input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
  }
  ::placeholder{
    color: #e5e5e5;
  }
  button{
    margin-top: 30px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 20px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
  }
  .social{
    margin-top: 30px;
    display: flex;
  }
  .social div{
    background: red;
    width: 150px;
    border-radius: 3px;
    padding: 5px 10px 10px 5px;
    background-color: rgba(255,255,255,0.27);
    color: #eaf0fb;
    text-align: center;
  }
  .social div:hover{
    background-color: rgba(255,255,255,0.47);
  }
  .social .fb{
    margin-left: 25px;
  }
  .social i{
    margin-right: 4px;

  }
  input[type=checkbox] {

  }

</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<html>
<head>
  <title>Login</title>
</head>
<body>
<a href="/index.jsp">
  <img style="width: 120px; height:120px" src="https://img.freepik.com/premium-vector/football-lion-team-logo_441059-67.jpg?w=1060">
</a>
<form action="/login" method="post">
  <h3>Login Here</h3>
  <label for="username">Username</label>
  <input placeholder="Email or Phone" id="username" type="text" value="${name}" name="username">

  <label for="password">Password</label>
  <input placeholder="Password" id="password" value="${pass}" type="password" name="password">

  <div style="display: flex" >
    <div>
      <input type="checkbox" name="rememberMe" value="true">
    </div>
    <div>
      <label id="remember">Remember me</label>
    </div>
  </div>
  <button class=" btn btn-outline-warning" style="font-size:25px">Log in</button>
  <div class="social">
    <p>Do you have an account ? <a href="/sign.jsp">Sign Up</a></p>
  </div>
  <h3 style="color: red" class="font-monospace">${mess}</h3>
</form>



</body>
</html>
