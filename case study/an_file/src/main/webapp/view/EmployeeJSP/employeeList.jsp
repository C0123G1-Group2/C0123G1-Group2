<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
<link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer"/>
<html>
<head>
    <title>Employee List</title>
    <style>
        #contentTable{
            padding: 20px 40px;

        }
        .navbar-nav {
            gap: 10px;
        }
        .navbar-collapse {
            justify-content: space-between;
        }
        input.form-control, .btn-search{
            height: 30px;
            border-radius: 5px !important;
        }
        .btn-search {
            padding: 0 6px;
        }
        table thead th, table tbody td {
            text-align: center !important;
            vertical-align: middle;
        }
        a{
            text-decoration: none;
            color: white;
        }
        a:hover{
            font-size: larger;
            color: gold;
            text-underline: gold;
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
<%--<jsp:include page="header-admin.jsp"/>--%>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar ">
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <img style="width: 86px ; height: 86px"  src="https://img.freepik.com/premium-vector/football-lion-team-logo_441059-67.jpg?w=1060" >
                </li>
                <li style="text-align: center">
                    <button style=" background-color: black;color: gold;"  >Employee</button>

                </li>
                <li>
                    <button style=" background-color: black;color: gold">Customer</button>
                </li>
                <li>
                    <button style=" background-color: black;color: gold">Manger Customer</button>

                </li>

            </ul>
            <div style="display: flex; align-items: center;justify-content: space-between">
                <!--                <form class="form-inline my-2 my-lg-0" style="display: flex;  height: 30px" method="post"  action="/customer?action=find">-->
                <!--                    <input class="form-control mr-sm-2" type="search" placeholder="Search" name="name">-->

                <!--                    <button class="btn btn-outline-primary  my-2 my-sm-0" type="submit" style="padding: 0px 12px;" >Search</button>-->
                <!--                </form>-->
                <span id="no-auth"><i style="margin-left: 5px;" class="fa-sharp fa-solid fa-right-to-bracket"></i> </span>
                <div id="auth">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <form id="form-action" method="post">
                                <p class="dropdown-item" onclick="handleClick('myAccount')">My Account</p>
                                <p class="dropdown-item" onclick="handleClick('logout')">Logout</p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </nav>
</header>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 4vw">
    <div class="container-fluid" style="padding: 0">
        <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarTogglerDemo01"
                aria-controls="navbarTogglerDemo01"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo01">

            <ul class="navbar-nav mb-2 mb-lg-0">

                <button class="btn" type="submit"  onclick="window.location.href='/view/EmployeeJSP/createEmployee.jsp'" style="background: black ; color: gold">Create</button>
                <button type="button" class="btn" onclick="printDiv('contentTable')" style="background: black ; color: gold">
                    Print
                </button>
            </ul>
            <form class="d-flex input-group w-auto"  method="post"  action="/employee?action=find" style="margin-block-end: 0; gap: 10px;" >
                <button type="submit"  class="btn " onclick="window.location.href='/employee?action='" style="background: black ; color: gold">Return List</button>
                <input type="search" class="form-control" placeholder="Name" aria-label="Search" name="name" />
                <input type="search"   class="form-control"  placeholder="Phone Number" name="phoneNumber"/>
                <button  style="background: black ; color: gold" class="btn" type="submit" data-mdb-ripple-color="dark">Search</button>
            </form>
        </div>
    </div>
</nav>
<div id="contentTable" >
    <h1 style="text-align: center">List Of Employee</h1>

    <table class="table table-striped table-bordered" id="tableEmployee">
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Day of Birth</th>
            <th>Phone Number</th>
            <th>Email</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employeeList}">
            <tr>
                <td>DN-${employee.getEmployeeID()}</td>
                <td>${employee.getEmployeeName()}</td>
                <td>${employee.getDayOfBirth()}</td>
                <td>${employee.getPhoneNumber()}</td>
                <td>${employee.getEmail()}</td>

                <td>
                    <!-- Button trigger modal -->
                    <button type="button" onclick="deleteUser('${employee.getEmployeeID()}','${employee.getEmployeeName()}')"
                            class="btn btn" data-bs-toggle="modal" style="background: black;color: gold"
                            data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>

                <td>
                    <button type="submit" class="btn btn" style="background: black;color: gold"
                            onclick="window.location.href='/employee?action=edit&id=${employee.getEmployeeID()}'">
                        Edit
                    </button>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">DELETE EMPLOYEE ALERT</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <form action="/employee?action=delete" method="post">
                <div class="modal-body">
                    <input hidden id="id" name="id">
                    <span>Do you want to delete employee </span><span style="color: #b91515" id="nameDelete"></span><span>?</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary" >Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function deleteUser(id,name) {
        document.getElementById("id").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>
<%--<jsp:include page="footer-admin.jsp"/>--%>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });

    const isLogin = localStorage.getItem("login");
    if (isLogin && isLogin === "true") {
        document.getElementById("no-auth").style.display = "none";
        document.getElementById("auth").style.display = "flex";

    } else {
        document.getElementById("no-auth").style.display = "block";
        document.getElementById("auth").style.display = "none";

    }
</script>
<script>
    function printDiv(divID) {
        const divElements = document.getElementById(divID).innerHTML;
        const oldPage = document.body.innerHTML;
        document.body.innerHTML =
            "<html><head><title></title></head><body>" +
            divElements + "</body>";
        window.print();
        window.close();
        document.body.innerHTML = oldPage;
    }
</script>
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