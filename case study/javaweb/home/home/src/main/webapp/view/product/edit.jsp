
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
            margin-top: 1.1vw;
        }

        .content{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 500px;
            text-align: center;
            margin-top: 1.1vw;
        }
        label{
            font-weight: 700;
            margin-top: 1.1vw;
        }

    </style>
</head>
<body>
<jsp:include page="/header-admin.jsp"/>
<div class="content">
    <h2>Edit Soccer Field</h2>
    <h3 style="text-align: center ; margin-top: 15px;color: green;font-size: medium">${mess}</h3>
    <h3 style="text-align: center ; margin-top: 15px;color: red;font-size: medium">${messF}</h3>
    <form method="post" action="/product?action=edit&value=${product.getSoccerFieldId()}">
        <div>
            <label>FIELD NAME</label>
            <input  class="form-control" type="text" name="tenSan" required value="${product.getSoccerFieldName()}">
        </div>
        <div>
            <label>TYPE OF FIELD</label>
            <select class="form-select" aria-label="Default select example" name="tenLoaiSan">
                <option value="${product.getSoccerFieldType()}">${product.getSoccerFieldType()}</option>
                <option value="Sân 5">Sân 5</option>
                <option value="Sân 7">Sân 7</option>
                <option value="Sân futlsan">Sân futlsan</option>
            </select>
        </div>
        <div>
            <label>PRICE</label>
            <input  class="form-control"  type="text" name="gia" required value="${product.getPrice()}">
        </div>
        <div>
            <button type="submit"  class="btn btn-warning" style="width: 100% ; margin-top: 15px  ; margin-right: 5px;background-color: black;color: #FFD700 ">Edit</button>
            <br>

        </div>
    </form>
    <button   class="btn btn-warning" style="width: 100% ; margin-top: 15px;background-color: black;color: #FFD700 " onclick="window.location.href='/product?action='">Back</button>

</div>
</body>
</html>