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
<div align="center">

    <button class="btn btn-primary" onclick="window.location.href='/employee?action=displayList'">Xem danh sach</button>
</div>
<div align="center">
    <form action="/employee?action=create" method="post">
        <label>Name Employee</label>
        <input  class="form-control" type="text" name="name" required>
        <label>Phone Number</label>
        <input   class="form-control" type="number" name="phoneNumber"  required>
        <label>Day of Birth</label>
        <input  class="form-control"  type="text" name="dayOfBirth" required>
        <label>Email</label>
        <input  class="form-control" type="text" name="email" required>
        <button class="btn btn-primary" type="submit">Create</button>
    </form>
</div>
<small>${mess}</small>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</html>
