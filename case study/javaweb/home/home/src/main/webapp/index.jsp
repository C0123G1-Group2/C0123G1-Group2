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

        .container-fluid {
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
            background-image: url(https://tophinhanhdep.com/wp-content/uploads/2021/10/Black-and-Gold-Desktop-Wallpapers.jpg);
        }

        .btn-o {
            cursor: pointer;
        }

        .popup {
            height: 500px;
            width: 500px;
            background: black;
            border-radius: 10%;
            position: absolute;
            top: 0;
            left: 50%;
            transform: translate(-50%, -50%) scale(0.1);
            text-align: center;
            padding: 0 30px 30px;
            color: white;
            visibility: hidden;
            transition: transform 0.4s, top 0.4s;
        }

        .popup button {
            cursor: pointer;
        }

    </style>
</head>

<body>
<div class="container-fluid">
    <jsp:include page="/header-admin.jsp"/>
    <div class="content ">
        <div class="row ">

            <div class="col-sm-12">
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100%;border-radius: 3%"
                                 src="https://aobongda24h.com/pic/news/images/images/6369336271236010271.jpg"
                                 alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: xxx-large;color: #FFD700">5</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Soccer field (number 1)</h5>
                                        <h2 style="color: gold">50$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=1'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup" id="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 1 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100%;border-radius: 3%" src="https://images.elipsport.vn/anh-seo-tin-tuc/2020/12/13/san-bong-da-ho-chi-minh-1.jpg" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: xxx-large;color: #FFD700">5</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Soccer field (number 2)</h5>
                                        <h2 style="color: gold">50$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=2'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 2 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100%;border-radius: 3%" src="https://images.elipsport.vn/anh-seo-tin-tuc/2020/11/6/tim-hieu-thong-tin-san-bong-da-5-nguoi-2.jpg" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: xxx-large;color: #FFD700">5</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Soccer field (number 3)</h5>
                                        <h2 style="color: gold">50$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=3'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 3 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100%;border-radius: 3%" src="https://yousport.vn/Media/Blog/Nh%E1%BB%AFng%20m%E1%BA%B7t%20s%C3%A2n%20b%C3%B3ng%20%C4%91%C3%A1%20ph%E1%BB%95%20bi%E1%BA%BFn%20hi%E1%BB%87n%20nay/nhung-mat-san-bong-da-pho-bien-nhat-hien-nay-2G.jpg" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: xxx-large;color: #FFD700">5</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Soccer field (number 4)</h5>
                                        <h2 style="color: gold">50$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=4'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 4 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100% ;border-radius: 3%" src="https://vecgroup.vn/upload_images/images/2021/12/09/kich-thuoc-san-bong-11-nguoi(1).png" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: xxx-large;color: #FFD700">7</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Soccer field (number 5)</h5>
                                        <h2 style="color: gold">80$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=5'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 1 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100% ;border-radius: 3%" src="https://vecgroup.vn/upload_images/images/2021/12/09/kich-thuoc-san-bong-11-nguoi(1).png" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: xxx-large;color: #FFD700">7</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Soccer field (number 6)</h5>
                                        <h2 style="color: gold">80$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=6'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 1 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row height-card">
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100%;border-radius: 3%" src="https://trungtambongro.vn/wp-content/uploads/2018/09/ngoisao_san-Q-PN-2.jpg" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: x-large;color: #FFD700">Futsal</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700">  Futsal stadium (number 7)</h5>
                                        <h2 style="color: gold">100$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=7'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 1 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 css-center">
                        <div class="card " style="width: 90%;border-radius: 3%">
                            <img style="width: 100%;border-radius: 3%" src="https://static-images.vnncdn.net/files/publish/2022/8/30/u9-toan-quoc-113.jpg" alt="...">
                            <div class="card-body row">
                                <div class="col-sm-1" style="justify-content: center">
                                    <button class="btn btn-outline-warning"
                                            style="width: 100px;height: 100px;margin-top: 200%">
                                        <div style="font-size: x-large;color: #FFD700">Futsal</div>
                                    </button>
                                </div>
                                <div class="col-sm-11">
                                    <div style="margin-left: 20px;width: 30vw">
                                        <h5 class="card-title" style="color: #FFD700"> Futsal stadium (number 8)</h5>
                                        <h2 style="color: gold">100$</h2>
                                        <button type="button" class="btn btn-outline-warning"
                                                style="font-size: xx-large;margin-bottom: 50px;margin-top: 15px"
                                                onclick="window.location.href='/product?action=order&maDV=8'">
                                            Book for rental
                                        </button>
                                        <br>
                                        <div>
                                            <div class="popup"
                                                 style="text-align: center;padding-top: 100px;padding-left: 100px;padding-right: 100px">
                                        <span style="color: gold;font-size:30px;margin-top: 20px"
                                              class="font-monospace">field number 1 </span>
                                                <br>
                                                <span> The location is on the sidelines close to the canteen, designed in 2020 and popular with many players</span>
                                                <br>
                                                <span>The football field is invested by: Nguyen Duc Thang</span>
                                                <br>
                                                <span style="font-size: xx-large;">Thank You</span>
                                                <br>
                                                <button type="button" onclick="closePopup()" class="btn btn-warning"
                                                        style="margin-top: 30px">Ok
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div>
        <!-- Footer -->
        <footer class="bg-dark text-center text-white">
            <!-- Grid container -->
            <div class="container p-4">
                <!-- Section: Social media -->

                <!-- Section: Social media -->

                <!-- Section: Form -->
                <section class="">
                    <form action="">
                        <!--Grid row-->
                        <div class="row d-flex justify-content-center">
                            <!--Grid column-->
                            <div class="col-auto">
                                <p class="pt-2">
                                    <strong>Sign up for our newsletter</strong>
                                </p>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-5 col-12">
                                <!-- Email input -->
                                <div class="form-outline form-white mb-4">
                                    <input type="email" id="form5Example21" class="form-control"/>
                                    <label class="form-label" for="form5Example21" style="color: #FFD700">Email
                                        address</label>
                                </div>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-auto">
                                <!-- Submit button -->
                                <button type="submit" class="btn btn-outline-warning mb-4">
                                    Subscribe
                                </button>
                            </div>
                            <!--Grid column-->
                        </div>
                        <!--Grid row-->
                    </form>
                </section>
                <!-- Section: Form -->


            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);color: #FFD700">
                © 2020 Copyright:
                <a href="#" style="color: #FFD700 ">ThreeLions.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </div>
</div>

<script>
    let popup = document.getElementById("popup", "popup1");

    function openPopup() {
        popup.classList.add("open-popup", "open-popup1");
    }

    function closePopup() {
        popup.classList.remove("open-popup", "open-popup1")
    }
</script>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</html>
<%--push test--%>