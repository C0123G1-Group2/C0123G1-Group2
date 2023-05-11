<%@ page import="com.example.model.User" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/8/2023
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
<html>
<head>
    <title>Title</title>
  <style>
    .navbar{
      height: 86px ;
      background-color: black;
      padding: 0 40px;
    }
    .navbar-nav {
      display: flex;
      align-items: center;
      gap: 10px;
    }
    .navbar-collapse {
      justify-content: space-between;
    }
    .dropdown .dropdown-toggle{
      width: 30px;
      height: 30px;
      border-radius: 50%;
    }
    .dropdown .dropdown-toggle:after{
      /*content: "A" !important;*/
      border: none !important;
      /*margin-left: 0;*/
      /*position: absolute;*/
      /*top: 2px;*/
      /*left: 35%;*/
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
<header>
  <nav class="navbar navbar-expand-lg navbar " >
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <img style="width: 86px ; height: 86px"  src="https://img.freepik.com/premium-vector/football-lion-team-logo_441059-67.jpg?w=1060" >
        </li>
        <li style="text-align: center">
          <a style=" background-color: black;color: gold;" class="font-monospace" href="/index.jsp">Home</a>

        </li>
        <li style="text-align: center">
          <a style=" background-color: black;color: gold;" class="font-monospace" href="/employee">Employee</a>

        </li>
        <li>
          <a style=" background-color: black;color: gold" class="font-monospace" href="/customer">Customer</a>
        </li>
        <li>
          <a style=" background-color: black;color: gold" class="font-monospace" href="/product">Service</a>
        </li>
        <li>
          <a style=" background-color: black;color: gold" class="font-monospace" href="/product?action=orderList">Management Order</a>
        </li>
      </ul>

      <div style="display: flex; align-items: center;justify-content: space-between">
        <div>
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <form id="form-action" method="post">
                <div>
                <span class="dropdown-item">
                  <%=
                    session.getAttribute("userSession")!=null
                            ? "Hello " + ((User)session.getAttribute("userSession")).getUsername()
                            :""
                  %>
                </span>
                  <span class="text-white">
                  <%=
                    session.getAttribute("userSession")==null
                            ? ("<a href='/login' class='dropdown-item'>Login</a>")
                            :("<a href='/logout' class='dropdown-item'>Logout</a>")
                  %>
                </span>
                </div>
              </form>
            </div>
          </div>
        </div>
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
<script>
  // const form = document.getElementById('form-action');
  // function handleClick(type) {
  //   if(type === 'myAccount'){
  //      form.action = "/LoginServlet?username=1";
  //      form.method = 'post';
  //   }
  //   else if(type === 'logout'){
  //     localStorage.removeItem('login');
  //     form.action = "/LoginServlet?logout=true";
  //     form.method = 'post';
  //   }
  //   form.submit();
  // }
</script>
</body>
</html>
