<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2023
  Time: 7:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>List</title>
</head>
<body>
<h1>List Of Customer</h1>
<table class="table table-striped">
    <thread>
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Email</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
    </thread>
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
                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#exampleModal${customer.getCustomerId()}">
                    Delete
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal${customer.getCustomerId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có chắc là xóa không ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                <button type="button" class="btn btn-primary" onclick="window.location.href='/customer?action=delete&id=${customer.getCustomerId()}'">Yes</button>
                            </div>
                        </div>
                    </div>
                </div>

            </td>

            <td>
                <button type="submit" class="btn btn-outline-success" onclick="window.location.href='/customer?action=edit&idEdit=${customer.getCustomerId()}' ">Edit</button>
            </td>


        </tr>

    </c:forEach>

    </tbody>
</table>

<button type="button" class="btn btn-outline-info" onclick="window.location.href='/customer?action=create'">Create</button>


</body>
</html>
