<%--
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
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<body>
<div class="container" style="margin-top: 100px">
    <div style="text-align: center">
        <h1>Management Soccer Field</h1>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Mã sân</th>
            <th>Tên Sân</th>
            <th>Loại sân</th>
            <th>Giá Tiền</th>
            <th>Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td>${product.getMaSan()}</td>
                <td>${product.getTenSan()}</td>
                <td>${product.getLoaiSan()}</td>
                <td>${product.getGia()} VND</td>
                <td>
                    <button type="button" class="btn btn-warning" style="margin-right: 20px"
                            onclick="window.location.href='/product?action=edit&value=${product.getMaSan()}'">Edit
                    </button>
                    <button type="button" onclick="infoDelete('${product.getMaSan()}','${product.getTenSan()}')"
                            class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <h1 style="color: #0082ca">${mess}</h1>
    <button class="btn btn-warning" onclick="window.location.href='index.jsp'">Back Home</button>
    <button class="btn btn-warning" style="margin-left: 100px"
            onclick="window.location.href='/product?action=add'">Add new Soccer Field
    </button>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/product?action=delete" method="post">
                    <div class="modal-body">
                        <input hidden id="maDV" name="maDV">
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
</body>
</html>
