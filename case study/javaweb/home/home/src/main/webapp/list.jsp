<%@ page import="com.example.model.User" %>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer"/>
<html>
<head>
    <title>List</title>
    <style>
        #contentTable {
            padding: 20px 40px;
        }

        input.form-control, .btn-search {
            height: 30px;
            border-radius: 5px !important;
        }

        .btn-search {
            padding: 0 6px;
        }

        table thead th, table tbody td {
            text-align: center !important;
            vertical-align: middle !important;
        }

        #tableCustomer_paginate .page-item.active a {
            background-color: black !important;
            color: gold;
        }

        #tableCustomer_paginate #tableCustomer_next a {
            background-color: black !important;
            color: gold !important;
        }

        #tableCustomer_paginate #tableCustomer_previous a {
            background-color: black !important;
            color: gold !important;
        }
    </style>
</head>
<body>
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

                <button class="btn btn-primary" type="submit" style="background-color:black ; color: gold ;"
                        onclick="window.location.href='/customer?action=create'">Create
                </button>
                <button type="button" class="btn btn-primary" style="background-color:black ; color: gold ;"
                        onclick="printDiv('contentTable')">
                    Print
                </button>
            </ul>
            <form class="d-flex input-group w-auto" method="post" action="/customer?action=find"
                  style="margin-block-end: 0; gap: 10px;">
                <input type="search" style="flex: none ;width: 170px" class="form-control" placeholder="Name"
                       aria-label="Search" name="name"/>
                <input type="search" style="flex: none ;width: 125px" class="form-control" placeholder="Phone Number"
                       name="phoneNumber"/>
                <input type="search" style="flex: none ;width: 170px" class="form-control" placeholder="Address"
                       name="address"/>
                <button class="btn btn-primary btn-search" style="background-color: black; color: gold;padding: 0 15px"
                        type="submit" data-mdb-ripple-color="dark">Search
                </button>
            </form>
        </div>
    </div>
</nav>
<div id="contentTable">
    <h1 style="text-align: center">List Of Customer</h1>

    <table class="table table-striped table-bordered" id="tableCustomer">
        <thead>
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Email</th>
            <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>
                <th>Function</th>
            </c:if>


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
                <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>
                    <td>
                        <button type="button" onclick="infoDelete('${customer.customerId}','${customer.name}')"
                                class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal" style="background-color:black ; color: gold ;">
                            Delete
                        </button>
                        <button type="submit" class="btn btn-primary" style="background-color: black ; color: gold"
                                onclick="window.location.href='/customer?action=edit&idEdit=${customer.getCustomerId()}' ">
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
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <form action="/customer?action=delete" method="post">
                <div class="modal-body">
                    <input hidden id="deleteId" name="deleteId">
                    <span>Do you want to delete customer </span><span style="color: #b91515"
                                                                      id="deleteName"></span><span>??</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
<h3>${mess}</h3>
<script>
    function infoDelete(customerId, name) {
        document.getElementById("deleteId").value = customerId;
        document.getElementById("deleteName").innerText = name;
    }
</script>
<jsp:include page="footer-admin.jsp"/>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
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

</body>
</html>
