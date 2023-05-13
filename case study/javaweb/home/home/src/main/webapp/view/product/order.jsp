
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<html>
<head>
  <title>Oder</title>
  <style>
    h2{
      text-align: center;
      margin-bottom: 20px;
      margin-top: 20px;
    }

    .content{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 500px;
      text-align: center;
    }
    label{
      font-weight: 700;
    }
  </style>
</head>
<body>
<div class="content">
  <h2>Order</h2>
  <h3 style="color: green;font-size: medium">${mess}</h3>
  <h3 style="color: red;font-size: medium">${messF}</h3>
  <form method="post" style="margin-top: 1.5vw" action="/product?action=order&value=${maDV}">
    <div>
      <label>Pitch booking time</label>
      <select class="form-select" aria-label="Default select example" name="beginTime">
        <option  value="15h">15:00 hours</option>
        <option  value="16h">16:00 hours</option>
        <option  value="17h">17:00 hours</option>
        <option value="18h">18:00 hours</option>
        <option value="19h">19:00 hours</option>
        <option value="20h">20:00 hours</option>
        <option value="21h">21:00 hours</option>
        <option value="22h">22:00 hours</option>
        <option value="23h">23:00 hours</option>
      </select>
    </div>
    <div>
      <label> Amount of time you want to set</label>
      <select class="form-select" aria-label="Default select example" name="rentalTime">
        <option value="1">1 hour</option>
        <option value="2">2 hour</option>
      </select>
    </div>
    <div>
      <button type="submit"  class="btn " style="width: 100% ; margin-top: 15px  ; margin-right: 5px ;background-color: black;color: #FFD700">Book a football field</button>
      <br>
    </div>
  </form>
  <button  class="btn " style="width: 100% ; margin-top: 15px ;background-color: black;color: #FFD700" onclick="window.location.href='/index.jsp'">Back</button>

</div>
</body>
</html>