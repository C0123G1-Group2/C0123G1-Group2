
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<html>
<head>
    <title>Edit</title>
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
            width: 600px;

        }

    </style>
</head>
<body>
<div class="content">
    <h2>Edit Customer</h2>
    <form method="post" action="/product?action=edit&value=${product.getMaSan()}">
        <div>
            <label>Tên sân</label>
            <input  class="form-control" type="text" name="tenSan" required placeholder="${product.getTenSan()}">
        </div>
        <div>
            <label>Loại sân</label>
            <select class="form-select" aria-label="Default select example" name="tenLoaiSan">
                <option value="${product.getLoaiSan()}">${product.getLoaiSan()}</option>
                <option value="Sân 5">Sân 5</option>
                <option value="Sân 7">Sân 7</option>
                <option value="Sân futlsan">Sân futlsan</option>
            </select>
        </div>
        <div>
            <label>Giá</label>
            <input  class="form-control"  type="text" name="gia" required placeholder="${product.getGia()}">
        </div>
        <div>
            <button type="submit"  class="btn btn-outline-primary" style="width: 65% ; margin-top: 15px ;background-color:#0a4275 ; margin-right: 5px ">Edit</button>
            <button type="submit"  class="btn btn-outline-primary" style="width: 32% ; margin-top: 15px ;background-color:#0a4275" onclick="window.location.href='/product?action='">Back</button>
            <br>
            <h3>${mess}</h3>
        </div>
    </form>
</div>
</body>
</html>