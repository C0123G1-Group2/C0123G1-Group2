<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/9/2023
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href="sign.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
<style media="screen">
    *,
    *:before,
    *:after {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    body {
        background-color: #080710;
    }

    .background {
        width: 560px;
        height: 560px;
        position: absolute;
        transform: translate(-50%, -50%);
        left: 50%;
        top: 50%;
    }

    .background .shape {
        height: 200px;
        width: 200px;
        position: absolute;
        border-radius: 50%;
    }

    .shape:first-child {
        background-image: repeating-linear-gradient( 105deg,
        var(--gold) 0% ,
        var(--dark-shadow) 15%,
        var(--gold) 85%);
    );
        left: -120px;
        top: -80px;
    }

    .shape:last-child {
        background: linear-gradient(
                to right,
                #ff512f,
                #f0be19
        );
        right: -30px;
        bottom: -80px;
    }

    form {
        height: 900px;
        width: 460px;
        background-color: rgba(255, 255, 255, 0.13);
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 50px 35px;
    }

    form * {
        font-family: 'Poppins', sans-serif;
        color: #ffffff;
        letter-spacing: 0.5px;
        outline: none;
        border: none;
    }
    #div{
        width: 30vw;
        height: 20vh;
        margin-left: 4vw ;
        margin-top: 20vw;
    }

    label {
        display: block;
        margin-top: 30px;
        font-size: 16px;
        font-weight: 500;
    }

    input {
        display: block;
        height: 50px;
        width: 100%;
        background-color: rgba(255, 255, 255, 0.07);
        border-radius: 3px;
        padding: 0 10px;
        margin-top: 8px;
        font-size: 15px;
        font-weight: 300;
    }

    ::placeholder {
        color: #e5e5e5;
    }

    button {
        margin-top: 50px;
        width: 100%;
        background-color: #ffffff;
        color: #080710;
        padding: 15px 0;
        font-size: 18px;
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
    }

    .social div {
        background: red;
        width: 150px;
        border-radius: 3px;
        padding: 5px 10px 10px 5px;
        background-color: rgba(255, 255, 255, 0.27);
        color: #eaf0fb;
        text-align: center;
    }

    .social div:hover {
        background-color: rgba(255, 255, 255, 0.47);
    }
    :root {
        --gold: #ffb338;
        --light-shadow: #77571d;
        --dark-shadow: #3e2904;
    }
    body {
        margin: 0;
    }
    .wrapper {
        background: black;
        display: grid;
        grid-template-areas: 'overlap';
        place-content: center;
        text-transform: uppercase;
        height: 100vh;
    }
    .wrapper > div {
        background-clip: text;
        -webkit-background-clip: text;
        color: #363833;
        font-family: 'Poppins', sans-serif;
        font-weight: 200;
        font-size: clamp( 2em, 6vw, 10rem);
        grid-area: overlap;
        letter-spacing: 1px;
        -webkit-text-stroke: 4px transparent;
    }
    div.bg {
        background-image: repeating-linear-gradient( 105deg,
        var(--gold) 0% ,
        var(--dark-shadow) 5%,
        var(--gold) 12%);
        color: transparent;
        filter: drop-shadow(5px 15px 15px black);
        transform: scaleY(1.05);
        transform-origin: top;
    }
    div.fg{
        background-image: repeating-linear-gradient( 5deg,
        var(--gold) 0% ,
        var(--light-shadow) 23%,
        var(--gold) 31%);
        color: #1e2127;
        transform: scale(1);
    }
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="background">
    <div class="shape"></div>
    <div class="shape"></div>
</div>
<div id="div" class="wrapper">
    <div class="bg">Sign up</div>
    <div class="fg">Sign up</div>
</div>

<form action="/sign?action=createUserCustomer" method="post">
    <label for="username">Username</label>
    <input type="text" placeholder="Example: Jonh123" id="username" type="text" name="user">
    <label for="password">Password</label>
    <input type="password" placeholder="Password" id="password" type="password" name="password">
    <label for="password"> Confirm Password</label>
    <input type="password" placeholder="Password" id="confirmPass" type="password" name="password">
    <label for="password">Your Name</label>
    <input  placeholder="Your Name" id="customerName" type="text" name="name">
    <label for="password">Phone Number</label>
    <input  placeholder="Your phone number" id="phoneNumber" type="text" name="phoneNumber">
    <label for="password">Address</label>
    <input  placeholder="Address" id="address" type="text" name="address">
    <label for="password">Email</label>
    <input  placeholder="Example: abc@gmail.com" id="email" type="text" name="email">
    <button>Submit</button>
</form>
</body>
</html>
