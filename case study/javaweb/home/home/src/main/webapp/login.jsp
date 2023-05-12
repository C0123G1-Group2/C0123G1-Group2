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
    padding: 50px 35px;
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
  }

  label{
    display: block;
    margin-top: 30px;
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
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
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
    transform: scale(0.5);
  }
  #remember{
    text-align: center;
  }

</style>

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
  <div>
    <label id = "remember"><input type="checkbox" name="rememberMe" value="true"> Remember Me</label>
  </div>
  <button>Log In</button>
  <div class="social">
    <p>Do you have an account ? <a href="/sign.jsp">Sign Up</a></p>
  </div>
</form>


<%--<section>--%>
<%--  <div class="noi-dung">--%>
<%--    <div class="form">--%>
<%--      <div class="div-content">--%>
<%--        <div style="text-align: center ; padding: 10px"><h1>Login</h1></div>--%>
<%--        <h5 style="color: red ;text-align: center ; font-size: x-large">${message}</h5>--%>
<%--        <div class="div-input">--%>
<%--          <form action="/login" method="post" style="margin:  0 auto">--%>
<%--            <div class="input-form">--%>
<%--              <span>User</span>--%>
<%--              <input type="text" value="${name}" name="username">--%>
<%--            </div>--%>
<%--            <div class="input-form">--%>
<%--              <span>Password</span>--%>
<%--              <input value="${pass}" type="password" name="password">--%>
<%--            </div>--%>
<%--            <div class="nho-dang-nhap">--%>
<%--              <label><input type="checkbox" name="rememberMe" value="true"> Remember Me</label>--%>
<%--            <span>--%>
<%--            </span>--%>
<%--            </div>--%>
<%--            <div class="input-form">--%>
<%--              <input type="submit" value="Login">--%>
<%--            </div>--%>
<%--            <div class="input-form">--%>
<%--              <p>Do you have an account ? <a href="/sign.jsp">Sign Up</a></p>--%>
<%--            </div>--%>
<%--          </form>--%>
<%--        </div>--%>
<%--        <div class="div-other">--%>
<%--          <h3>Login with social network</h3>--%>
<%--          <ul class="icon-dang-nhap">--%>
<%--            <li>--%>
<%--              <a href="https://www.facebook.com/">--%>
<%--                <i class="fa-brands fa-facebook"></i>--%>
<%--              </a>--%>
<%--            </li>--%>
<%--            <li><a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a></li>--%>
<%--            <li><a href="https://twitter.com/"> <i class="fa-brands fa-twitter"></i></a></li>--%>
<%--          </ul>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>


<%--</section>--%>


</body>
</html>
