<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/1/2023
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<html>
<head>
    <title></title>
</head>
<body>
<form action="/services?action=create" method="post">
  <label>Service Id</label>
  <input class="form-control" type="text" name="id" required>
  <label>Service Name </label>
  <input class="form-control" type="text" name="name" required>
  <label>Price</label>
  <input  class="form-control" type="text" name="price" required>
  <button type="submit" class="btn btn-outline-success">Create</button>

</form>


</body>
</html>
