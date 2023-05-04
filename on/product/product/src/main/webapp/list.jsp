<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/3/2023
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table table-striped">
    <thread>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
    </thread>
    <tbody>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal${product.getId()}">
                   Delete
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal${product.getId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Ban có chắc xóa không ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                <button type="button" class="btn btn-primary"  onclick="window.location.href='/product?action=delete&id=${product.getId()}'">Yes</button>
                            </div>
                        </div>
                    </div>
                </div>
                </td>
                <td>
            <button class="btn tbn-outline-primary" onclick="window.location.href='/product?action=edit&idEdit=${product.getId()}'">Edit</button>
                     </td>

        </tr>
    </c:forEach>
    </tbody>

</table>
<button class="btn  btn-outline-primary"  onclick="window.location.href='/product?action=create'" >Create</button>

</body>
</html>
