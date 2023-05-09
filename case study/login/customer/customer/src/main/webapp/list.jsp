<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2023
  Time: 7:58 AM
  To change this template use File | Settings | File Templates.
--%>
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
    <title>List</title>
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
    </style>
</head>
<body>
<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
<%--    <a class="navbar-brand" href="#" style="margin-right: 0">--%>
<%--        <img style="width: 50px ; height: 30px ; margin-left: 17px"  src="https://www.threelions.nl/wp-content/uploads/2020/09/logo-three-lions-rgb.png" >--%>
<%--    </a>--%>
<%--    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--        <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>

<%--    <div class="collapse navbar-collapse" id="navbarTogglerDemo02" style="display: flex; justify-content: space-between; padding: 0 10px;">--%>
<%--        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">--%>
<%--            <li class="nav-item active">--%>
<%--                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="#">Link</a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link disabled" href="#">Disabled</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <div style="display: flex; align-items: center;margin-right: 10px;">--%>
<%--            <form class="form-inline my-2 my-lg-0" style="display: flex;  height: 30px" method="post"  action="/customer?action=find">--%>
<%--                <input class="form-control mr-sm-2" type="search" placeholder="Search" name="name">--%>

<%--                <button class="btn btn-outline-primary  my-2 my-sm-0" type="submit" style="padding: 0px 12px;" >Search</button>--%>
<%--            </form>--%>
<%--            <span id="no-auth"><i style="margin-left: 5px;" class="fa-sharp fa-solid fa-right-to-bracket"></i> </span>--%>
<%--            <div id="auth">--%>
<%--                <span style="width: 25px; height: 25px; background: #2ea6da; border-radius: 50%; display: inline-block"></span>--%>
<%--                <span >Admin</span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<jsp:include page="header-admin.jsp"/>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
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

                <button class="btn btn-outline-primary" type="submit"  onclick="window.location.href='/customer?action=create'">Create</button>
                <button type="button" class="btn btn-outline-primary" onclick="printDiv('contentTable')">
                    Print
                </button>
            </ul>
            <form class="d-flex input-group w-auto"  method="post"  action="/customer?action=find" style="margin-block-end: 0; gap: 10px;" >
                <input type="search" class="form-control" placeholder="Tên" aria-label="Search" name="name" />
                <input type="search"   class="form-control"  placeholder="Số Điện Thoại" name="phoneNumber"/>
                <button class="btn btn-outline-primary btn-search" type="submit" data-mdb-ripple-color="dark">Search</button>
            </form>
        </div>
    </div>
</nav>
<div id="contentTable" >
    <h1 style="text-align: center">List Of Customer</h1>

    <table class="table table-striped table-bordered" id="tableCustomer">
        <thead>
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Email</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.getCustomerId()}</td>
                <td>${customer.getName()}</td>
                <td>${customer.getPhoneNumber()}</td>
                <td>${customer.getAddress()}</td>
                <td>${customer.getEmail()}</td>

                <td>
                    <!-- Button trigger modal -->
                    <button type="button" onclick="infoDelete('${customer.customerId}','${customer.name}')"
                            class="btn btn-outline-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        Delete
                    </button>


                </td>

                <td>
                    <button type="submit" class="btn btn-outline-primary"
                            onclick="window.location.href='/customer?action=edit&idEdit=${customer.getCustomerId()}' ">
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
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <form action="/customer?action=delete" method="post">
                <div class="modal-body">
                    <input hidden id="deleteId" name="deleteId">
                    <span>Do you want to delete customer </span><span style="color: #b91515" id="deleteName"></span><span>??</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function infoDelete(customerId, name) {
        document.getElementById("deleteId").value = customerId;
        document.getElementById("deleteName").innerText = name;
    }
</script>
<jsp:include page="footer-admin.jsp"/>
<%--<footer class="bg-light text-center text-lg-start">--%>
<%--    <div class="text-center p-3" style="background-color: hsl(216, 25%, 95.1%);">--%>
<%--        © 2023 Copyright:--%>
<%--        <a class="text-dark" target="_blank"  href="https://toanthaydinh.com/wp-content/uploads/2020/05/hinh-anh-mat-cuoi.jpg20.jpg">Group 2</a>--%>
<%--    </div>--%>

<%--</footer>--%>
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

</body>
</html>
