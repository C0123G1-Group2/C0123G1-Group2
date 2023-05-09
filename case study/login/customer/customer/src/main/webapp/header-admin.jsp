<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/8/2023
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <style>
    .navbar{
      height: 7vw ;
      background-color: #0a4275;
      padding: 0 40px;
    }
    .avatar {
      width: 25px;
      color: white;
      height: 25px;
      background: #1ba2c1;
      border-radius: 50%;
      display: inline-block
    }
    .avatar img {
      width: 70px;
      height: 40px
    }
  </style>
</head>
<body>
<header>
  <nav class="navbar navbar-expand-lg navbar " >
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <img style="width: 70px ; height: 40px"  src="https://img.freepik.com/premium-vector/football-lion-team-logo_441059-67.jpg?w=1060" >
        </li>
        <li class="nav-item">
          <a style=" color: white" class="nav-link" href="#">Manager Product</a>
        </li>
        <li class="nav-item">
          <a style=" color: white" class="nav-link" href="#">Employee</a>
        </li>
        <li class="nav-item">
          <a style=" color: white" class="nav-link" href="#">Customer</a>
        </li>

        <!--                <li class="nav-item dropdown">-->
        <!--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->
        <!--                        Dropdown link-->
        <!--                    </a>-->
        <!--                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">-->
        <!--                        <a class="dropdown-item" href="#">Action</a>-->
        <!--                        <a class="dropdown-item" href="#">Another action</a>-->
        <!--                        <a class="dropdown-item" href="#">Something else here</a>-->
        <!--                    </div>-->

        <!--                </li>-->

      </ul>
      <div style="display: flex; align-items: center;justify-content: space-between">
        <!--                <form class="form-inline my-2 my-lg-0" style="display: flex;  height: 30px" method="post"  action="/customer?action=find">-->
        <!--                    <input class="form-control mr-sm-2" type="search" placeholder="Search" name="name">-->

        <!--                    <button class="btn btn-outline-primary  my-2 my-sm-0" type="submit" style="padding: 0px 12px;" >Search</button>-->
        <!--                </form>-->
        <span id="no-auth"><i style="margin-left: 5px;" class="fa-sharp fa-solid fa-right-to-bracket"></i> </span>
        <div id="auth">
          <span class="avatar">
          </span>
          <span >Admin</span>
        </div>

        <form action="/LoginServlet?username=" method="post">
        <button type="submit" class="btn btn-primary" >Logout</button>
        </form>
      </div>
    </div>

<%--    <div class="dropdown">--%>
<%--      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--        Dropdown--%>
<%--      </button>--%>
<%--      <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">--%>
<%--        <li><button class="dropdown-item" type="button">Action</button></li>--%>
<%--        <li><button class="dropdown-item" type="button">Another action</button></li>--%>
<%--        <li><button class="dropdown-item" type="button">Something else here</button></li>--%>
<%--      </ul>--%>
<%--    </div>--%>
    <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Dropdown button
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <a class="dropdown-item" href="#">Something else here</a>
      </div>
    </div>
  </nav>
</header>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
