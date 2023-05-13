x1<%@ page import="com.example.model.User" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 05/08/23
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Management Soccer Field</title>
    <style>
        #tableSoccer_paginate .page-item.active a{
            background-color: black !important;
            color: gold;
        }
        #tableSoccer_paginate #tableSoccer_next a{
            background-color: black !important;
            color: gold !important;
        }
        #tableSoccer_paginate #tableSoccer_previous a{
            background-color: black !important;
            color: gold !important ;}
    </style>

</head>
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
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<body>
<jsp:include page="/header-admin.jsp"/>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 10px">
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


                <button type="button" class="btn btn-primary" style="background-color:black ; color: gold ;" onclick="printDiv('contentTable')">
                    Print
                </button>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid" style="margin:50px;margin-right: 50px;padding: 0px;width: 95%">

    <div style="text-align: center">
        <h1>Management Order</h1>
    </div>
    <table class="table table-striped" id="tableSoccer">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>Customer</th>
            <th>Employee</th>
            <th>Soccer Field</th>
            <th>Begin Time</th>
            <th>Rental Time</th>
            <th>Total Price</th>
            <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>
                <th>Function</th>
            </c:if>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="order" items="${orderList}">
            <tr>
                <td>${order.getOrderId()}</td>
                <td>${order.getCustomerId()}</td>
                <td>${order.getEmployeeId()}</td>
                <td>${order.getSoccerFieldId()}</td>
                <td>${order.getBeginTime()}</td>
                <td>${order.getRentalTime()}</td>
                <td>${order.getTotalPrice()} $</td>
                <td>
                    <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>
                        <button type="button" onclick="infoDelete('${order.getOrderId()}','${order.getOrderId()}')"
                                class="btn " data-bs-toggle="modal" data-bs-target="#exampleModal"
                                style="background-color: black;color: #FFD700">
                            Delete
                        </button>
                    </c:if>
                    <c:if test='<%= ((User)session.getAttribute("userSession")).getUsername().equals("admin") %>'>

                        <button type="button" class="btn " style="margin-right: 20px;background-color: black;color: #FFD700"
                                onclick="window.location.href='/product?action=editOrder&value=${order.getOrderId()}'">Edit
                        </button>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
<%--    <h1 style="color: #0082ca">${mess}</h1>--%>



    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/product?action=deleteOrder" method="post">
                    <div class="modal-body">
                        <input hidden id="maDV" name="orderId">
                        <span>Ban co muon xoa dich vu: </span><span style="color: #dd4b39" id="tenLoaiDV"></span>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        function infoDelete(id, name) {
            document.getElementById("maDV").value = id;
            document.getElementById("tenLoaiDV").innerText = name;
        }
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
</div>
<jsp:include page="/footer-admin.jsp"/>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>

    $(document).ready(function() {
        $('#tableSoccer').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 7
        } );
    } );
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
