<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/30/2023
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>

</head>
<body>
<form action="/customer?action=create" method="post">
  <label>Customer Id </label>
  <input  class="form-control" type="text" name="id" required>
  <label>Name Customer</label>
  <input  class="form-control" type="text" name="name" required>
  <label>Phone Number</label>
  <input   class="form-control" type="number" name="phoneNumber"  required>
  <label>Address</label>
  <input  class="form-control"  type="text" name="address" required>
  <label>Email</label>
  <input  class="form-control" type="text" name="email" required>
  <button class="btn btn-primary" type="submit">Create</button>

</form>


</body>
</html>
