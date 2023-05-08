<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 05/08/23
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<body>
<form action="/product?action=add" method="post">
    <div class="mb-3">
        <label  class="form-label" >Tên sân</label>
        <input type="text" class="form-control" name="tenLoaiDV" >
        <label  class="form-label" >Loaị sân</label>
        <select class="form-select" aria-label="Default select example" name="tenDV">
            <option value="1">Sân 5</option>
            <option value="2">Sân 7</option>
            <option value="3">Sân futlsan</option>
        </select>
    </div>
<button type="submit">Thêm</button>
</form>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</html>
