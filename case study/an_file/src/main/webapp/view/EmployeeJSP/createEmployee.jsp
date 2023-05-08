<%--
  Created by IntelliJ IDEA.
  User: hotruongan
  Date: 06/05/2023
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<html>
<head>
    <title>Create Employee</title>
</head>
<body>
<div>
    <h1 class="font-monospace" style="color: darkgoldenrod">THÊM MỚI NHÂN VIÊN</h1>
</div>
<div align="center" style="background: darkgray;padding: 20px;width: 40%;border-radius: 5% ">
    <form action="/employee?action=create" method="post" >
        <div class="mb-3" >
            <label  class="form-label font-monospace">Tên Nhân Viên</label>
            <input type="text" class="form-control"  name="name" placeholder="Nguyen Van A">
        </div>
        <div class="mb-3">
            <label  class="form-label font-monospace">Số Điện Thoại</label>
            <input type="text" class="form-control"  name="phoneNumber">
        </div>
        <div class="mb-3" >
            <label  class="form-label font-monospace">Ngày tháng năm sinh</label>
            <input type="text" class="form-control"  name="dayOfBirth" placeholder="YYYY-MM-DD">
        </div>
        <div class="mb-3" >
            <label  class="form-label font-monospace">Email</label>
            <input type="text" class="form-control"   name="email" placeholder="nguyenvana@gmail.com">
        </div>
        <button type="submit" class="btn btn-outline-dark font-monospace">Create</button>
    </form>
</div>
<div>
    <button class="btn btn-outline-dark font-monospace" onclick="window.location.href='/employee?action=displayList'">Quay trở lại danh sách</button>
</div>
<small class="font-monospace">${mess}</small>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</html>
