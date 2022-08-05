<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 04/08/2022
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<style>
    .boxmodel {
        margin: 0 auto;
        width: 800px;
        border: 10px;
        padding: 10px;
        border-color: chartreuse aqua blue blueviolet;
        border-style: solid;
    }

    body {
        background-image: url(view/sean-oulashin-KMn4VEeEPR8-unsplash.jpg);
        background-repeat: no-repeat;
        background-position: right top;
        background-attachment: fixed;
    }
</style>
<html>
<head>
    <title>Furama Resort </title>

</head>
<body>
<div class="col-12">
    <nav class="navbar navbar-expand-lg navbar-secondary bg-info">
        <div class="container col-1">
            <a class="navbar-brand" href="#">
                <img src="data:image/jpeg;base64,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"
                     alt=""
                     width="100"
                     height="100">
            </a>
        </div>
        <div class="container-fluid col-10">
            <div class="col-2">
                <a class="navbar-brand" href="#">Home</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse col-10" id="navbarSupportedContent">
                <div class="col-9">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <div class="col-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Employee</a>
                            </li>
                        </div>

                        <div class="col-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Customer</a>
                            </li>
                        </div>

                        <div class="col-3">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Service
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="view/service_list.jsp">Service List</a></li>
                                    <li><a class="dropdown-item" href="view/adding_service.jsp">Adding New Service</a>
                                    </li>
                                </ul>
                            </li>
                        </div>

                        <div class="col-3">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Contract</a>
                            </li>
                        </div>

                    </ul>
                </div>
                <div class="col-3">
                    <form class="d-flex">
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor"
                             class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>

                        <input class="form-control me-2 rounded-pill" type="search" placeholder="Search"
                               aria-label="Search">
                        <button class="btn btn-outline-success rounded-pill" type="submit">Search</button>
                    </form>
                </div>

            </div>
        </div>
        <div class="col-1"></div>
    </nav>
</div>
<div class="row">
    <div class="col-12">
        <div class="row">
            <div class="col-3">
                <ul>
                    <li style="margin-left: 20px">Item1</li>
                    <li style="margin-left: 20px">Item2</li>
                    <li style="margin-left: 20px">Item3</li>
                </ul>
            </div>
            <div class="col-6">
                <div class="row">
                    <div class="col-12"><h1 class="boxmodel text-center" style="color: black">Welcome to Furama
                        Resort</h1></div>
                    <div>
                        <div id="carouselExampleCaptions" class="carousel slide text-center" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide label</h5>
                                        <p>Some representative placeholder content for the first slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://furamavietnam.com/wp-content/uploads/2020/05/62371531.jpg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide label</h5>
                                        <p>Some representative placeholder content for the second slide.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="https://danangfantasticity.com/wp-content/uploads/2015/12/furama-resort-da-nang-04-1024x768.jpg"
                                         class="d-block w-100" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide label</h5>
                                        <p>Some representative placeholder content for the third slide.</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</div>
<p></p>
<div class="row">
    <div class="col-12">
        <div class="row">
            <div class="col-3"></div>
            <div class="clearfix col-lg-6">
                <div class="row">
                    <div class="col-6">
                        <h4 style="color: #ffcd39">
                            KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI
                            VIỆT
                            NAM.
                        </h4>
                    </div>
                    <div class="col-6">
                        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/IjlT_4mvd-c"
                                title="YouTube video player"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                    </div>
                </div>
                <div class="row">
                    <p>CÁC LOẠI PHÒNG</p>
                    <p>
                        Khu nghỉ dưỡng có 196 phòng được thiết kế theo phong cách truyền thống Việt Nam kết hợp với
                        phong
                        cách Pháp, 2 tòa nhà 4 tầng có hướng nhìn ra biển, nhìn ra hồ bơi trong xanh và những khu vườn
                        nhiệt
                        đới xanh tươi mát. Ngoài ra, khu nghỉ dưỡng Furama còn cung cấp các liệu pháp spa, phòng xông
                        hơi
                        ướt, phòng xông hơi khô, dịch vụ mát-xa cạnh hồ bơi, các dịch vụ thể thao dưới nước và
                        các
                        lớp tập yoga và Thái Cực Quyền trên bãi biển.
                    </p>

                    <p>
                        Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản
                        văn
                        hoá thế giới: Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với
                        70
                        căn biệt thự từ hai đến bốn phòng ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong
                        cách
                        thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ
                        dưỡng
                        danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính
                        khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.
                    </p>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-12">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6">
                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="https://furamavietnam.com/wp-content/uploads/2018/08/Vietnam_Danang_Furama_Villas_Pool_Villas_Twin-Bedroom-1047x563.jpg"
                                 class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Some representative placeholder content for the first slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="https://furamavietnam.com/wp-content/uploads/2018/03/Vietnam_Danang_Furama_Ocean-Suite-Feature-370x239.jpg"
                                 class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Some representative placeholder content for the second slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://furamavietnam.com/wp-content/uploads/2018/03/Vietnam_Danang_Furama_Ocean-Deluxe-double-bed-F-370x239.jpg"
                                 class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Some representative placeholder content for the third slide.</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="col-3"></div>
</div>
<div class="row mt-3 bg-light">
    <div class="col-1"></div>
    <div class="col-10">

        <div class="col-12">
            <h3>Follow us on
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                     class="bi bi-facebook" viewBox="0 0 16 16">
                    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                     class="bi bi-instagram" viewBox="0 0 16 16">
                    <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter"
                     viewBox="0 0 16 16">
                    <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                </svg>
            </h3>
        </div>
    </div>
</div>
<div class="col-1"></div>
<div class="row mt-3 container-fluid">
    <h3>Liên hệ</h3>
    <p>103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam
    Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666
    Email: reservation@furamavietnam.com * www.furamavietnam.com GDS Codes: Amadeus-GD DADFUR, Galileo/Apollo-GD 16236, Sabre-GD 032771, Worldspan- GD DADFU</p>
</div>
</body>
</html>
