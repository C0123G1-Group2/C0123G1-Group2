<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        h5, p {
            color: #FFD700;
        }
        .container-fluid{
            margin-left: 0px;
            padding-left: 0px;
        }
        .left {
            padding-right: 0px;
            background: linear-gradient(35deg, black, white, black);
        }

        .card {
            margin: 25px;
            height: 820px;
            background: linear-gradient(35deg, grey, black, white);
        }

        card:hover {
            transform: rotate(45deg);
        }

        .css-center {
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
            background-color: black;
            border: 1px solid #FFD700;
            border-radius: 5px;
        }

        .roll {
            width: 90%;
            margin-top: 10px;
            margin-bottom: 20px;
            height: 60px;
            text-align: center;
            border-radius: 5px;
        }

        .card, img {
            border-radius: 5%;
        }


        .height-card {
            height: 900px;
            padding: 50px;
        }

        .height-card .css-center {
            position: relative;
            transition: 0.5s;
        }

        .height-card .css-center:hover {
            transform: translateY(-20px);
            /*background: linear-gradient(45deg,#99FF99,white);*/
        }

        .height-card .css-center::before {
            position: absolute;
            /*background: linear-gradient(45deg,#99FF99,white);*/

        }

        .height-card .css-center::after {
            position: absolute;
            filter: blur(50px);
            /*background: linear-gradient(45deg,#99FF99,white);*/
        }

        .content {
            background-color: lightgrey;
        }


    </style>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light  "
         style="position: sticky;top: 0;left: 0;right: 0;z-index: +1;margin-left: 0px;background:linear-gradient(45deg,black,black,white,black,black); height: 100px;font-size: 20px">
        <a class="navbar-brand card-r" href="#" style="margin-right: 20px">
            <img
                    src="https://img.freepik.com/premium-vector/football-lion-team-logo_441059-67.jpg?w=1060"
                    style="width: 100px;height: 100%;margin-left: 0px">
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active" style="font-weight: 700;margin-right: 20px;">
                    <a class="nav-link " href="/index.jsp" style="height: 100%;color: #FFD700;">Home</a>
                </li>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/product" style="width: 115%;height: 100%;color: #FFD700">Manager
                        Product</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0 d-flex" style="margin-left: 50%;margin-right: 4%">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                       style="border-color: #FFD700; margin-right: 5%">
                <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Search</button>
            </form>
            <button type="button" class="btn btn-outline-warning">Login</button>
        </div>
    </nav>
    <div class="content ">
        <div class="row ">
            <div class="col-sm-1 left">
                <div class="left-content">
                    <button class="roll drop-left btn btn-outline-warning">Sân bóng 5 người</button>
                    <button class="roll drop-left btn btn-outline-warning">Sân bóng 7 người</button>
                    <button class="roll drop-left btn btn-outline-warning">Sân bóng futsal</button>
                    <button class="roll drop-left btn btn-outline-warning">Vị trí sân</button>
                    <button class="roll drop-left btn btn-outline-warning">Liên hệ</button>
                    <button class="roll drop-left btn btn-outline-warning">Đánh giá</button>
                    <button class="roll drop-left btn btn-outline-warning">Sân đang trống</button>
                    <button class="roll drop-left btn btn-outline-warning">gdsgds</button>
                    <button class="roll drop-left btn btn-outline-warning">Sgdgds</button>
                </div>
            </div>
            <div class="col-sm-11">
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://aobongda24h.com/pic/news/images/images/6369336271236010271.jpg"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 1(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=1'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://images.elipsport.vn/anh-seo-tin-tuc/2020/12/13/san-bong-da-ho-chi-minh-1.jpg"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 2(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px " onclick="window.location.href='/product?action=oder&maDV=2'">Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://images.elipsport.vn/anh-seo-tin-tuc/2020/11/6/tim-hieu-thong-tin-san-bong-da-5-nguoi-2.jpg"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 3(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=3'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://yousport.vn/Media/Blog/Nh%E1%BB%AFng%20m%E1%BA%B7t%20s%C3%A2n%20b%C3%B3ng%20%C4%91%C3%A1%20ph%E1%BB%95%20bi%E1%BA%BFn%20hi%E1%BB%87n%20nay/nhung-mat-san-bong-da-pho-bien-nhat-hien-nay-2G.jpg"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 4(Sân 5 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2020.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=4'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://vecgroup.vn/upload_images/images/2021/12/09/kich-thuoc-san-bong-11-nguoi(1).png"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 1(Sân 7 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2022.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=5'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://vecgroup.vn/upload_images/images/2021/12/09/kich-thuoc-san-bong-11-nguoi(1).png"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 2(Sân 7 người)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2022.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=6'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://trungtambongro.vn/wp-content/uploads/2018/09/ngoisao_san-Q-PN-2.jpg"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 1(Sân Futsal)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2023.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=7'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;">
                            <img style="width: 100%"
                                 src="https://static-images.vnncdn.net/files/publish/2022/8/30/u9-toan-quoc-113.jpg"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="color: #FFD700">Sân sô 2(Sân 5 futsal)</h5>
                                <p class="card-text">Sân chất lượng được xây năm 2023.</p>
                                <button type="button" class="btn btn-outline-warning" style="font-size: xx-large;margin-bottom: 50px;margin-top: 20px" onclick="window.location.href='/product?action=oder&maDV=8'">
                                    Đặt sân
                                </button>
                                <br>
                                <button class="btn btn-outline-warning" style="font-size:24px">Thêm vào giỏ hàng <i class="fa fa-shopping-cart "></i></button>
                            </div>
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