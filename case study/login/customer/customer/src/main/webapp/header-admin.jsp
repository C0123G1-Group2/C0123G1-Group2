<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/8/2023
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
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
          <img style="width: 70px ; height: 40px"  src="https://www.threelions.nl/wp-content/uploads/2020/09/logo-three-lions-rgb.png" >
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
      </div>
    </div>
  </nav>
</header>
</body>
</html>
