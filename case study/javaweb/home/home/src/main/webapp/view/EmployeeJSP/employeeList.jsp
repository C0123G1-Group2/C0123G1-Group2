<%@ page import="com.example.model.User" %>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer"/>
<html>
<head>
    <title>Employee List</title>
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
         #tableEmployee_paginate .page-item.active a{
             background-color: black !important;
             color: gold;
         }
        #tableEmployee_paginate #tableEmployee_next a{
            background-color: black !important;
            color: gold !important;
        }
        #tableEmployee_paginate #tableEmployee_previous a{
            background-color: black !important;
            color: gold !important ;}

    </style>

<body>
<jsp:include page="/header-admin.jsp"/>
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

                <button class="btn" type="submit" onclick="window.location.href='/view/EmployeeJSP/createEmployee.jsp'"
                        style="background: black ; color: gold">Create
                </button>
                <button type="button" class="btn" onclick="printDiv('contentTable')"
                        style="background: black ; color: gold">
                    Print
                </button>
            </ul>
            <form class="d-flex input-group w-auto" method="post" action="/employee?action=find"
                  style="margin-block-end: 0; gap: 10px;">
                <button type="submit" class="btn " onclick="window.location.href='/employee?action='"
                        style="background: black ; color: gold">Reset
                </button>
                <input type="search" class="form-control" placeholder="Name" aria-label="Search" name="name"/>
                <input type="search" class="form-control" placeholder="Phone Number" name="phoneNumber"/>
                <button style="background: black ; color: gold" class="btn" type="submit" data-mdb-ripple-color="dark">
                    Search
                </button>
            </form>
        </div>
    </div>
</nav>
<div id="contentTable">
    <h1 style="text-align: center">List Of Employee</h1>

    <table class="table table-striped table-bordered" id="tableEmployee">
        <thead>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Day of Birth</th>
            <th>Phone Number</th>
            <th>Email</th>
            <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>
                <th>Function</th>
            </c:if>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employeeList}">
            <tr>
                <td>${employee.getEmployeeID()}</td>
                <td>${employee.getEmployeeName()}</td>
                <td>${employee.getDayOfBirth()}</td>
                <td>${employee.getPhoneNumber()}</td>
                <td>${employee.getEmail()}</td>
                <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>
                    <td>
                        <!-- Button trigger modal -->
                        <button type="button"
                                onclick="deleteUser('${employee.getEmployeeID()}','${employee.getEmployeeName()}')"
                                class="btn btn" data-bs-toggle="modal" style="background: black;color: gold"
                                data-bs-target="#exampleModal">
                            Delete
                        </button>
                        <button type="submit" class="btn btn" style="background: black;color: gold"
                                onclick="window.location.href='/employee?action=edit&id=${employee.getEmployeeID()}'">
                            Edit
                        </button>
                    </td>
                </c:if>
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
                    <span>Do you want to delete employee </span><span style="color: #b91515"
                                                                      id="nameDelete"></span><span>?</span>
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
    function deleteUser(id, name) {
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
        $('#tableEmployee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 7
        });
    });

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
<%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
<%--        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"--%>
<%--        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"--%>
<%--        crossorigin="anonymous"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"--%>
<%--        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
<%--        crossorigin="anonymous"></script>--%>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>



</body>
</html>