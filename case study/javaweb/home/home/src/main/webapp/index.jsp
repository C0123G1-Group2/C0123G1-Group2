<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        .left {
            padding-right: 0px;
            background-color: white;
        }
        .card{
            margin: 20px;
            height: 800px;
        }
        .css-center{
            text-align: center;
            padding: 10px;
        }
        .left-content {
            height: 600px;
            overflow-y: scroll;
            color: blue;
        }

        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-thumb {
            background-color: white;
            border: 1px solid blue;
            border-radius: 5px;
        }

        .roll {
            margin-top: 10px;
            margin-bottom: 30px;
            height: 50px;
            text-align: center;
            background-color:white;
            border: 1px solid blue;
            border-radius: 5px;
        }
        .height-card{
            height: 900px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
                    aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Navbar</a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Disabled</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="content">
        <div class="row ">
            <div class="col-sm-1 left">
                <div class="left-content">
                    <div class="roll drop-left"><a>Đặt phụ kiện đi kèm</a></div>
                    <div class="roll drop-left"><a>Sân bóng 5 người</a></div>
                    <div class="roll drop-left"><a>Sân bóng 7 người</a></div>
                    <div class="roll drop-left"><a>Sân futsal</a></div>
                    <div class="roll drop-left"><a>Liên Hệ</a></div>
                    <div class="roll drop-left">Sân được đánh giá tốt</div>
                    <div class="roll drop-left"><a>Một số thông tin sân bóng</a></div>
                    <div class="roll drop-left">fsafsa</div>
                    <div class="roll drop-left">fsafsaf</div>
                    <div class="roll drop-left">safsaf</div>
                </div>
            </div>
            <div class="col-sm-11">
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://aobongda24h.com/pic/news/images/images/6369336271236010271.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 1(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <a href="#" style="font-size: xx-large; color: blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://images.elipsport.vn/anh-seo-tin-tuc/2020/12/13/san-bong-da-ho-chi-minh-1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 2(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <a href="#" style="font-size: xx-large; color: blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://images.elipsport.vn/anh-seo-tin-tuc/2020/11/6/tim-hieu-thong-tin-san-bong-da-5-nguoi-2.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 3(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <a href="#" style="font-size: xx-large; color:blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://yousport.vn/Media/Blog/Nh%E1%BB%AFng%20m%E1%BA%B7t%20s%C3%A2n%20b%C3%B3ng%20%C4%91%C3%A1%20ph%E1%BB%95%20bi%E1%BA%BFn%20hi%E1%BB%87n%20nay/nhung-mat-san-bong-da-pho-bien-nhat-hien-nay-2G.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 4(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <a href="#" style="font-size: xx-large; color: blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://vecgroup.vn/upload_images/images/2021/12/09/kich-thuoc-san-bong-11-nguoi(1).png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 1(Sân 7 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2022.</p>
                                <a href="#" style="font-size: xx-large; color: blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://vecgroup.vn/upload_images/images/2021/12/09/kich-thuoc-san-bong-11-nguoi(1).png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 2(Sân 7 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2022.</p>
                                <a href="#" style="font-size: xx-large; color:blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://trungtambongro.vn/wp-content/uploads/2018/09/ngoisao_san-Q-PN-2.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 1(Sân Futsal)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2023.</p>
                                <a href="#" style="font-size: xx-large; color: blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card border-info" style="width: 90%;">
                            <img style="width: 100%" src="https://static-images.vnncdn.net/files/publish/2022/8/30/u9-toan-quoc-113.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #dd4b39">Sân sô 2(Sân 5 futsal)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2023.</p>
                                <a href="#" style="font-size: xx-large; color: blue">Xem chi tiết sân bóng</a>
                            </div>
                            <ul class="list-group list-group-flush">
                                <a style="font-size: xx-large; color: #dd4b39">Giờ đặt sân</a>
                                <li>
                                    <button type="button" class="btn btn-outline-primary">15h-16h</button>
                                    <button type="button" class="btn btn-outline-secondary">16h-17h</button>
                                    <button type="button" class="btn btn-outline-success">17h-18h</button>
                                    <button type="button" class="btn btn-outline-danger">18h-19h</button>
                                    <button type="button" class="btn btn-outline-warning">19h-20h</button>
                                    <button type="button" class="btn btn-outline-info">20h-21h</button>
                                    <button type="button" class="btn btn-outline-info">21-22h</button>
                                    <button type="button" class="btn btn-outline-dark">22h-23h</button>
                                    <button type="button" class="btn btn-outline-primary">23h-24h</button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div>
        <footer class="bg-light text-center text-white">
            <!-- Grid container -->
            <div class="container p-4 pb-0">
                <!-- Section: Social media -->
                <section class="mb-4">
                    <!-- Facebook -->
                    <a
                            class="btn text-white btn-floating m-1"
                            style="background-color: #3b5998;"
                            href="#!"
                            role="button"
                    ><i class="fab fa-facebook-f"></i
                    ></a>

                    <!-- Twitter -->
                    <a
                            class="btn text-white btn-floating m-1"
                            style="background-color: #55acee;"
                            href="#!"
                            role="button"
                    ><i class="fab fa-twitter"></i
                    ></a>

                    <!-- Google -->
                    <a
                            class="btn text-white btn-floating m-1"
                            style="background-color: #dd4b39;"
                            href="#!"
                            role="button"
                    ><i class="fab fa-google"></i
                    ></a>

                    <!-- Instagram -->
                    <a
                            class="btn text-white btn-floating m-1"
                            style="background-color: #ac2bac;"
                            href="#!"
                            role="button"
                    ><i class="fab fa-instagram"></i
                    ></a>

                    <!-- Linkedin -->
                    <a
                            class="btn text-white btn-floating m-1"
                            style="background-color: #0082ca;"
                            href="#!"
                            role="button"
                    ><i class="fab fa-linkedin-in"></i
                    ></a>
                    <!-- Github -->
                    <a
                            class="btn text-white btn-floating m-1"
                            style="background-color: #333333;"
                            href="#!"
                            role="button"
                    ><i class="fab fa-github"></i
                    ></a>
                </section>
                <!-- Section: Social media -->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2020 Copyright:
                <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</html>