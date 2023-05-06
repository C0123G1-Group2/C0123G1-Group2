<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/1/2023
  Time: 2:34 PM
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
    <title>Title</title>
</head>
<body>
<form method="post">

  <label>Service Name </label>
  <input class="form-control" type="text" name="name" required>
  <label>Price</label>
  <input  class="form-control" type="text" name="price" required>
  <button type="submit" class="btn btn-outline-success">Edit</button>

</form>

</body>
</html>
