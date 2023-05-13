
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<html>
<head>
    <title>Edit order</title>
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
<jsp:include page="/header-admin.jsp"/>
<div class="content">
    <h2>Edit Customer Order</h2>
    <h3 style="color: green;font-size: medium">${mess}</h3>
    <h3 style="color: red;font-size: medium">${messF}</h3>
    <form method="post" action="/product?action=editOrder&value=${order.getOrderId()}">
        <div>
            <label>Customer ID</label>
            <input  class="form-control" type="number" name="customerId" required value="${order.getCustomerId()}">
        </div>
        <div>
            <label>Employee ID</label>
            <input  class="form-control" type="number" name="employeeId" required value="${order.getEmployeeId()}">
        </div>
        <div>
            <label>Soccer Field ID</label>
            <input  class="form-control"  type="number" name="soccerFieldId" required value="${order.getSoccerFieldId()}">
        </div>
        <div>
            <label>Begin Time</label>
            <select class="form-select" aria-label="Default select example" name="beginTime">
                <option  value="${order.getBeginTime()}">${order.getBeginTime()}:00 hours</option>
                <option  value="7">07:00 hours</option>
                <option  value="8">08:00 hours</option>
                <option  value="9">09:00 hours</option>
                <option  value="10">10:00 hours</option>
                <option  value="11">11:00 hours</option>
                <option  value="12">12:00 hours</option>
                <option  value="13">13:00 hours</option>
                <option  value="14">14:00 hours</option>
                <option  value="15">15:00 hours</option>
                <option  value="16">16:00 hours</option>
                <option  value="17">17:00 hours</option>
                <option value="18">18:00 hours</option>
                <option value="19">19:00 hours</option>
                <option value="20">20:00 hours</option>
                <option value="21">21:00 hours</option>
                <option value="22">22:00 hours</option>
                <option value="23">23:00 hours</option>
            </select>
        </div>
        <div>
            <label>Rental Time</label>
            <select class="form-select" aria-label="Default select example" name="rentalTime">
                <option value="${order.getRentalTime()}">${order.getRentalTime()} hour</option>
                <option value="1">1 hour</option>
                <option value="2">2 hour</option>
            </select>
        </div>
        <div>
            <label>Total Price</label>
            <input  class="form-control"  type="number" name="totalPrice" required value="${order.getTotalPrice()}">
        </div>
        <div>
            <button type="submit"  class="btn btn-warning" style="width: 100% ; margin-top: 15px  ; margin-right: 5px;background-color: black;color: #FFD700 ">Edit</button>
        </div>
    </form>
    <button   class="btn btn-warning" style="width: 100% ; margin-top: 15px;background-color: black;color: #FFD700 " onclick="window.location.href='/product?action=orderList'">Back</button>
</div>
</body>
</html>