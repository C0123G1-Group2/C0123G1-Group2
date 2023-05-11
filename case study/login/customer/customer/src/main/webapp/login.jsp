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

<html>
<head>
  <title>Login</title>
</head>
<body>

<section>
  <div class="noi-dung">
    <div class="form">
      <div class="div-content">
<%--        <div style="display: flex ; align-content: center ">--%>
<%--          <img style="width: 70px ; height: 50px ; margin-left: 50px"  src="https://www.threelions.nl/wp-content/uploads/2020/09/logo-three-lions-rgb.png" >--%>
<%--          <h1 class="div-header">--%>
<%--            Three Lions Football</h1>--%>
<%--        </div>--%>

        <div style="text-align: center ; padding: 10px"><h1>Login</h1></div>
        <h5 style="color: red ;text-align: center ; font-size: x-large">${message}</h5>
        <div class="div-input">
          <form action="/login" method="post" style="margin:  0 auto">
            <div class="input-form">
              <span>User</span>
              <input type="text" value="${name}" name="username">

            </div>
            <div class="input-form">
              <span>Password</span>
              <input value="${pass}" type="password" name="password">
            </div>
            <div class="nho-dang-nhap">
              <label><input type="checkbox" name="rememberMe" value="true"> Remember Me</label>
            <span>

            </span>


            </div>
            <div class="input-form">
              <input type="submit" value="Login">
            </div>
            <div class="input-form">
              <p>Do you have an account ? <a href="/sign.jsp">Sign Up</a></p>
            </div>
          </form>
        </div>
        <div class="div-other">
          <h3>Login with social network</h3>
          <ul class="icon-dang-nhap">
            <li>
              <a href="https://www.facebook.com/">
                <i class="fa-brands fa-facebook"></i>
              </a>
            </li>
            <li><a href="https://www.instagram.com/"><i class="fa-brands fa-instagram"></i></a></li>
            <li><a href="https://twitter.com/"> <i class="fa-brands fa-twitter"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>


</section>


</body>
</html>
