<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/7/2023
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="/blogs">Blog</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                               aria-expanded="false">
                                Thể Loại
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/blogs?action=option">Gái Xinh </a>
                                <a class="dropdown-item" href="/blogs?action=option1">Kiếm Hiệp</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Hết Rồi</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                               aria-expanded="false">
                                Danh Sách Sắp Xếp
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/blogs?action=sortTime">Theo Thời Gian </a>
                                <a class="dropdown-item" href="/blogs?action=sortlike">Theo Lượng Like</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Hết Rồi</a>
                            </div>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0" action="/blogs?action=seach" method="post">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                               name="seach">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </nav>
        </div>
    </div>
    <div class="row" style="margin-top: 20px">
        <div class="col-2">
            <div class="row">
                <div class="col-12">
                    <form class="form-inline my-2 my-lg-0" action="">
                        <input class="form-control mr-sm-2" type="search" placeholder="Tên User"
                               name="user">
                        <button class="btn btn-outline-success mt -5 my-sm-0 " type="submit" >Gửi</button>
                    </form>
                </div>
            </div>
            <div class="row" style="margin-top: 30px">
                <div class="col-12" >
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQka-7jU60mhdHDiepxNG_cVA-Lpe3_gNBw8cQ1zRr9q3i0vfuwzPIC876fcKy6a7pjGEo&usqp=CAU"
                         class="card-img-top" alt="..." style="height: 200px">
                </div>
            </div>
        </div>
        <div class="col-7 ">
            <div class="row">
                <div class="col-12">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner ">
                            <div class="carousel-item active">
                                <img src="https://static.wixstatic.com/media/9d8ed5_27937e0a1bad4a4e9a73c1f1749461ba~mv2.jpg/v1/fill/w_290,h_164,fp_0.53_0.27,q_90/9d8ed5_27937e0a1bad4a4e9a73c1f1749461ba~mv2.jpg"
                                     class="d-block w-100" alt="..." style="height: 450px">
                            </div>
                            <div class="carousel-item">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUQEdxxxmSRmrpNFGvdUYZpQSY5obpgqJxfQ&usqp=CAU"
                                     class="d-block w-100" alt="..." style="height: 450px">
                            </div>
                            <div class="carousel-item">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMi34LThkYvVsstdbThu8iVuKKncpe0Er8MQ&usqp=CAU"
                                     class="d-block w-100" alt="..." style="height: 450px">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators"
                                data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators"
                                data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 10px">
                <div class="col-4">
                    <div class="card">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvkt3HSwPthdmT2fmIW5up5pxi4PmweFgr8g&usqp=CAU"
                             class="card-img-top" alt="..." style="height: 350px">
                        <div class="card-body">
                            <h5 class="card-title">Giá : Liên Hệ</h5>
                            <a href="#" class="btn btn-primary">Liên Hệ</a>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv9B1-Jotq_9LImxXL9e6r_xKFB2m4Uwbzgg&usqp=CAU"
                             class="card-img-top" alt="..." style="height: 350px">
                        <div class="card-body">
                            <h5 class="card-title">Giá : Liên Hệ</h5>
                            <a href="#" class="btn btn-primary">Liên Hệ</a>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDaXxV6r2MRDnXg_UPuUrh6ZPgTafFjax6mg&usqp=CAU"
                             class="card-img-top" alt="..." style="height: 350px">
                        <div class="card-body">
                            <h5 class="card-title">Giá : Liên Hệ</h5>
                            <a href="#" class="btn btn-primary">Liên Hệ</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <div class="col-3">
            <div class="row">
                <div class="col-12">
                    <img src="https://images.kienthuc.net.vn/zoom/800/uploaded/tuyetmai/2015_06_23/cng%20dong/cho/bo-anh-ngo-nghinh-50-sac-thai-cua-nhung-chu-cho.jpg"
                         class="card-img-top" alt="..." style="height: 450px">
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
