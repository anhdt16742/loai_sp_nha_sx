
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>2 Bán hàng tại quầy</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/admin/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <%-- import axios     --%>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


    <%-- Library jquery support pagination --%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-pagination/1.2.7/jquery.pagination.min.js"></script>

    <%--    Khai bao thu vien jquery--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


</head>
<body>
<!-- Left Panel -->
<aside id="left-panel" class="left-panel ">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="">
                    <a href="dashboard_2.html"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                </li>
                <li class="menu-title">Bán hàng</li><!-- /.menu-title -->
                <li class="active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-file-text-o"></i>Bán hàng tại quầy</a>
                </li>
                <li class="menu-title">Thống kê</li><!-- /.menu-title -->
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-bar-chart-o"></i>Thống kê doanh thu</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-puzzle-piece"></i><a href="ui-buttons.html">Hàng ngày</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="ui-badges.html">Hàng tháng</a></li>
                        <li><i class="fa fa-bars"></i><a href="ui-tabs.html">Hàng năm</a></li>
                    </ul>
                </li>
                <li class="menu-title">Quản lý</li><!-- /.menu-title -->
                <li class="menu-item-has-children dropdown ">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>Quản lý giày</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-puzzle-piece"></i><a href="ui-buttons.html">Giày</a></li>
                        <li><i class="fa fa-gear"></i><a href="ui-badges.html">Chất liệu</a></li>
                        <li><i class="fa fa-eraser"></i><a href="ui-tabs.html">Màu sắc</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="ui-badges.html">Thương hiệu</a></li>
                        <li><i class="fa fa-arrows-h"></i><a href="ui-tabs.html">Kích cỡ</a></li>
                        <li><i class="fa fa-inbox"></i><a href="ui-tabs.html" >Kiểu dáng</a></li>
                        <li><i class="fa fa-suitcase"></i><a href="ui-tabs.html">NSX</a></li>
                        <li ><i class="fa fa-sun-o" ></i><a  href="ui-tabs.html">Dòng sản phẩm</a></li>
                    </ul>

                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-print" ></i>Quản lý hóa đơn</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-puzzle-piece"></i><a href="ui-buttons.html">Xuất hóa đơn</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="ui-badges.html">Quản lý hóa đơn</a></li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-pencil-square-o" ></i>Quản lý khách hàng</a>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-users" ></i>Quản lý nhân viên</a>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-leaf" ></i>Quản lý khuyến mãi</a>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-user" ></i>Quản lý tài khoản</a>
                </li>



            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside>
<!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">

    <!-- Header-->
    <header id="header" class="header">
        <div class="top-left">
            <div class="navbar-header">
                <a class="navbar-brand" href="./"><img src="/admin/images/logo.png" alt="Logo"></a>
                <a class="navbar-brand hidden" href="./"><img src="/admin/images/logo2.png" alt="Logo"></a>
                <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
            </div>
        </div>
        <div class="top-right">
            <div class="header-menu">
                <div class="header-left">
                    <div class="for-message" style="margin-top: 15px;">
                        <p>Tên người dùng</p>
                    </div>
                </div>

                <div class="user-area dropdown float-right">
                    <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img class="user-avatar rounded-circle" src="/admin/images/admin.jpg" alt="User Avatar">
                    </a>

                    <div class="user-menu dropdown-menu">
                        <a class="nav-link" href="#"><i class="fa fa-user"></i>My Profile</a>

                        <a class="nav-link" href="#"><i class="fa fa-bell-o"></i>Notifications <span class="count">13</span></a>

                        <a class="nav-link" href="#"><i class="fa fa-cog"></i>Settings</a>

                        <a class="nav-link" href="#"><i class="fa fa-power-off"></i>Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </header><!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="breadcrumbs-inner">
            <div class="row m-0">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Dashboard</h1>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="page-header float-right">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="#">Dashboard</a></li>
                                <li><a href="#">Bán hàng tại quầy</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="breadcrumbs">
        <!-- Nút để tạo tab mới -->
        <div class="row" style="margin-bottom: 20px;">
            <div class="col-lg-10"></div>
            <div class="col-lg-2" style="margin-right: -5px;">
                <button id="createTabBtn" class="btn btn-primary">Tạo hóa đơn</button>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#hoaDon1" type="button" role="tab" aria-controls="home" aria-selected="true">Hóa đơn 1
                            <span><a href=""  class="btn"><i class="menu-icon fa fa-times fa-lg" style="margin-left: 10px"></i></a></span>
                        </button>
                    </li>
                </ul>
            </div>
            <div class="col-lg-12">
                <div class="tab-content " id="myTabContent">
                    <div class=" row tab-pane fade show active" id="hoaDon1" role="tabpanel" aria-labelledby="home-tab">
                    <!-- Tab 1
                         -->

                        <div class="col-lg-12 container mt-4 " >
                            <div class="animated fadeIn ">
                                <div class="card ">
                                    <div class="card-header">
                                        <div class="row">
                                            <div class="col-lg-10">
                                                <strong class="card-title" style="font-size: 20px;">Danh sách sản phẩm trong hóa đơn</strong>
                                            </div>
                                            <div class="col-lg-2" style="margin-left: -40px;">
                                                <strong class="card-title" >
                                                    <a href="#" class="btn btn-success" data-toggle="modal"
                                                       data-target="#chonSanPhamVaoHoaDonCho"> <i class="menu-icon fa fa-plus"></i> Thêm sản phẩm</a>
                                                </strong>
                                            </div>

                                        </div>


                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive row">
                                            <table class="table table-bordered table-hover no-wrap " >
                                                <thead>
                                                <tr style="text-align: center;">
                                                    <th scope="col">STT</th>
                                                    <th scope="col">Ảnh</th>
                                                    <th scope="col">Tên</th>
                                                    <th scope="col">Size - màu sắc</th>
                                                    <th scope="col">Số lượng mua</th>
                                                    <th scope="col">xóa sản phẩm</th>
                                                </tr>
                                                </thead>
                                                <tbody id="danhSachSanPham_duocChonVaoHoaDon">
<%--                                                    <tr style="text-align: center;">--%>
<%--                                                        <th scope="row">1</th>--%>
<%--                                                        <td > <img width="80px" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/40e9a096-e6cc-4c39-aec8-46a330f80681/invincible-3-road-running-shoes-jkhK7v.png" alt=""></td>--%>
<%--                                                        <td >Nike Invincible 3</td>--%>
<%--                                                        <td >Size: 34 - màu: trắng viền đen</td>--%>
<%--                                                        <td ><input type="number" value="1" min="1" class="form-control" style="width: 50%; margin: 0px auto;"></td>--%>
<%--                                                        <td > <a href="#" class="btn btn-warning"> <i class="menu-icon fa fa-trash-o" style="margin-right: 5px;"></i>Xóa</a> </td>--%>
<%--                                                    </tr>--%>


<%--                                                    <tr style="text-align: center;">--%>
<%--                                                        <th scope="row">1</th>--%>
<%--                                                        <td > <img width="80px" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/40e9a096-e6cc-4c39-aec8-46a330f80681/invincible-3-road-running-shoes-jkhK7v.png" alt=""></td>--%>
<%--                                                        <td >Nike Invincible 3</td>--%>
<%--                                                        <td >Size: 34 - màu: trắng viền đen</td>--%>
<%--                                                        <td ><input type="number" value="1" min="1" class="form-control" style="width: 50%; margin: 0px auto;"></td>--%>
<%--                                                        <td > <a href="#" class="btn btn-warning"> <i class="menu-icon fa fa-trash-o" style="margin-right: 5px;"></i>Xóa</a> </td>--%>
<%--                                                    </tr>--%>
<%--                                                    <tr style="text-align: center;">--%>
<%--                                                        <th scope="row">1</th>--%>
<%--                                                        <td > <img width="80px" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/40e9a096-e6cc-4c39-aec8-46a330f80681/invincible-3-road-running-shoes-jkhK7v.png" alt=""></td>--%>
<%--                                                        <td >Nike Invincible 3</td>--%>
<%--                                                        <td >Size: 34 - màu: trắng viền đen</td>--%>
<%--                                                        <td ><input type="number" value="1" min="1" class="form-control" style="width: 50%; margin: 0px auto;"></td>--%>
<%--                                                        <td > <a href="#" class="btn btn-warning"> <i class="menu-icon fa fa-trash-o" style="margin-right: 5px;"></i>Xóa</a> </td>--%>
<%--                                                    </tr>--%>

                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row" style="margin-top: 20px;">
                                            <div class="col-lg-8">

                                            </div>
                                            <div class="col-lg-4">
                                                <div id="phanTrangChoSanPhamDuocChonVaoHoaDon">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- .animated -->
                        </div><!-- .content -->



                    </div>

                </div>
            </div>
            <div class="col-lg-12">
                <div class=" container col-lg-12" >
                    <div class="animated fadeIn row">
                        <div class="card col-lg-12">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-lg-11">
                                        <strong class="card-title" style="font-size: 20px;">Thông tin khách hàng</strong>
                                    </div>
                                    <div class="col-lg-1" style="margin-left: -30px;" >
                                        <strong class="card-title" >
                                            <a href="#" class="btn btn-success" data-toggle="modal"
                                               data-target="#chonThongTinKhachHang"> <i class="menu-icon fa fa-plus"></i> Chọn</a>
                                        </strong>
                                    </div>

                                </div>


                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <span>Họ và tên:</span>
                                        <input type="text" placeholder="Khách hàng vãng lai" class="form-control" readonly="true">
                                    </div>
                                    <div class="col-lg-3">
                                        <span>SĐT:</span>
                                        <input type="text" placeholder="" class="form-control" readonly="true">
                                    </div>
                                    <div class="col-lg-3">
                                        <span>Email:</span>
                                        <input type="text" placeholder="" class="form-control"  readonly="true">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- .animated -->
                </div><!-- .content -->

            </div>

            <div class="col-lg-12">
                <div class=" container col-lg-12" >
                    <div class="animated fadeIn row">
                        <div class="card col-lg-12">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <strong class="card-title" style="font-size: 20px;">Thông tin thanh toán</strong>
                                    </div>
                                </div>


                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <span>Hình thức thanh toán</span>
                                        <select name="" class="form-control">
                                            <option value="" class="form-control">Tiền mặt</option>
                                            <option value="" class="form-control">Chuyển khoản</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-6">
                                        <span>Mã giảm giá</span>
                                        <!-- <strong class="card-title" >
                                            <a href="#" class="btn btn-success" data-toggle="modal"
                                            data-target="#chonThongTinKhachHang"> <i class="menu-icon fa fa-plus"></i> Chọn</a>
                                        </strong>
                                    </div>
                                    <div class="container">
                                        <div class="modal fade" id="chonThongTinKhachHang" tabindex="-1" role="dialog"
                                            aria-labelledby="createDiscountModalLabel" aria-hidden="true"> -->
                                        <div class="row">
                                            <div class="col-lg-9">
                                                <input type="text" placeholder="Nhập mã giảm giá" class="form-control">
                                            </div>
                                            <a href="#" class="btn btn-success" data-toggle="modal"
                                               data-target="#chonMaGiamGia"> Chọn</a>

                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="margin-top: 20px;">
                                        <div class="row">
                                            <span class="col-lg-4">Tổng tiền hàng: </span> <span class="col-lg-3">6.500.000</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="margin-top: 20px;">
                                        <div class="row">
                                            <span class="col-lg-4">Tiền được giảm: </span> <span class="col-lg-3">500.000</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="margin-top: 20px;">
                                        <div class="row">
                                            <span class="col-lg-4">Tổng thanh toán: </span> <span class="col-lg-3">6.000.000</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12" style="margin-top: 20px;">
                                        <div class="row">
                                            <div class="col-lg-2">
                                                <button class="btn btn-primary">Xuất hóa đơn</button>
                                            </div>
                                            <div class="col-lg-2" style="margin-left: 10px;">
                                                <button class="btn btn-warning">Hủy hóa đơn</button>
                                            </div>
                                            <div class="col-lg-9">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- .animated -->
                </div><!-- .content -->

            </div>
        </div>


    </div>

    <div class="container">
        <div class="modal fade" id="chonSanPhamVaoHoaDonCho" tabindex="-1" role="dialog"
             aria-labelledby="createDiscountModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document" style="max-width: 1200px;">
                <div class="modal-content" >
                    <div class="modal-header">
                        <h4 class="modal-title" id="createDiscountModalLabel" style="  margin-left: 10px; font-size: 25px;"><b>Thêm sản phẩm vào hóa đơn chờ</b></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="font-size: 50px; margin-top: -70px;" >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="content" >
                            <div class="animated fadeIn row">
                                <div class="card col-lg-12">
                                    <div class="card-header"  style="background-color: #F7F7F7; padding-bottom: 35px;">
                                        <form action="" class="row">
                                            <div class="col-lg-3">
                                                <span>Nhập tên</span>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="col-lg-3">
                                                <span>Nhập màu sắc</span>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="col-lg-3">
                                                <span>Nhập giá</span>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="col-lg-3">
                                                <span>Nhập size</span>
                                                <input type="text" class="form-control">
                                            </div>

                                            <div class="col-lg-3" style="margin-top: 15px;">
                                                <span>Chọn loại giày</span>
                                                <select name="" id="" class="form-control">
                                                    <option value="" class="form-control">Chọn loại giày</option>
                                                    <option value="" class="form-control">Giày chạy bộ</option>
                                                    <option value="" class="form-control">Giày thể thao</option>
                                                </select>
                                            </div>


                                            <div class="col-lg-2" style="margin-top: 15px;">
                                                <button class="form-control btn btn-primary" style="margin-top: 24px;">Tìm kiếm</button>

                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-body" style="">
                                        <p>Danh sách sản phẩm </p>
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover no-wrap" id="data-table" >
                                                <thead>
                                                <tr style="text-align: center;">
                                                    <th scope="col">STT</th>
                                                    <th scope="col">Ảnh</th>
                                                    <th scope="col">Tên</th>
                                                    <th scope="col">Size - màu sắc</th>
                                                    <th scope="col">Số lượng kho</th>
                                                    <th scope="col">Giá</th>
                                                    <th scope="col">Số lượng mua</th>
                                                    <th scope="col">Chọn</th>
                                                </tr>
                                                </thead>
                                                <tbody id="table-body-chiTietSP">
<%--                                                    <c:forEach items="${dsSanPhamChiTiet}" var="sanPhamCT" varStatus="SPCT">--%>
<%--                                                        <tr style="text-align: center;">--%>
<%--                                                                <th scope="row">${SPCT.index+1}</th>--%>
<%--                                                                <td > <img width="80px" src="${sanPhamCT.hinhAnh}" alt=""></td>--%>
<%--                                                                <td >${sanPhamCT.sanPham.ten}</td>--%>
<%--                                                                <td >Size: ${sanPhamCT.kichCo.ten} - màu: ${sanPhamCT.mauSac.ten}</td>--%>
<%--                                                                <td>${sanPhamCT.soLuong}</td>--%>
<%--                                                                <td>${sanPhamCT.giaTriSanPham}</td>--%>
<%--                                                                <td ><input type="number" id="${sanPhamCT.id}" value="1" min="1" class="form-control" style="width: 50%; margin: 0px auto;"></td>--%>
<%--                                                                <td > <a href="#" class="btn btn-success" onclick="addToBill('${sanPhamCT.id}');"> Chọn mua</a> </td>--%>
<%--                                                        </tr>--%>
<%--                                                    </c:forEach>--%>
                                                </tbody>
                                            </table>

                                            <div id="pagination-container-chiTietSP">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- .animated -->
                        </div><!-- .content -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="modal fade" id="chonThongTinKhachHang" tabindex="-1" role="dialog"
             aria-labelledby="createDiscountModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document" style="max-width: 1200px;">
                <div class="modal-content" >
                    <div class="modal-header">
                        <h4 class="modal-title" id="createDiscountModalLabel" style="  margin-left: 10px; font-size: 25px;"><b>Chọn thông tin khách hàng</b></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="font-size: 50px; margin-top: -70px;" >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="content" >
                            <div class="animated fadeIn row">
                                <div class="card col-lg-12">
                                    <div class="card-header"  style="background-color: #F7F7F7; padding-bottom: 35px;">
                                        <form action="" class="row justify-content-center">
                                            <div class="col-lg-5">
                                                <input type="text" class="form-control" placeholder="Nhập SĐT của khách hàng">
                                            </div>
                                            <div class="col-lg-2" style="margin-top: -24px;">
                                                <button class="form-control btn btn-primary" style="margin-top: 24px;">Tìm kiếm</button>

                                            </div>
                                        </form>


                                    </div>
                                    <div class="card-body" style="">
                                        <p>Danh sách thông tin khách hàng </p>
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover no-wrap" >
                                                <thead>
                                                <tr style="text-align: center;">
                                                    <th scope="col">STT</th>
                                                    <th scope="col">Họ và tên</th>
                                                    <th scope="col">Giới tính</th>
                                                    <th scope="col">SĐT</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Chọn</th>
                                                </tr>
                                                </thead>
                                                <tbody id="table-body-khachHang">


                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row" style="margin-top: 20px;">
                                            <div class="col-lg-8">
                                                <a href="" class="btn btn-success">Thêm mới khách hàng</a>
                                            </div>
                                            <div class="col-lg-4">
                                                <div id="pagination-container-khachHang">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- .animated -->
                        </div><!-- .content -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="modal fade" id="chonMaGiamGia" tabindex="-1" role="dialog"
             aria-labelledby="createDiscountModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document" style="max-width: 1200px;">
                <div class="modal-content" >
                    <div class="modal-header">
                        <h4 class="modal-title" id="createDiscountModalLabel" style="  margin-left: 10px; font-size: 25px;"><b>Chọn mã giảm giá</b></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="font-size: 50px; margin-top: -70px;" >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="content" >
                            <div class="animated fadeIn row">
                                <div class="card col-lg-12">
                                    <div class="card-header"  style="background-color: #F7F7F7; padding-bottom: 35px;">
                                        <form action="" class="row justify-content-center">
                                            <div class="col-lg-5">
                                                <input type="text" class="form-control" placeholder="Nhập mã, tên mã giảm giá">
                                            </div>
                                            <div class="col-lg-2" style="margin-top: -24px;">
                                                <button class="form-control btn btn-primary" style="margin-top: 24px;">Tìm kiếm</button>

                                            </div>
                                        </form>


                                    </div>
                                    <div class="card-body" style="">
                                        <p>Danh sách mã giảm giá phù hợp</p>
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover no-wrap" >
                                                <thead>
                                                    <tr style="text-align: center;">
                                                        <th scope="col">STT</th>
                                                        <th scope="col">Tên</th>
                                                        <th scope="col">Ngày bắt đầu</th>
                                                        <th scope="col">Ngày kết thúc</th>
                                                        <th scope="col">Giá trị giảm</th>
                                                        <th scope="col">Hình thức giảm</th>
                                                        <th scope="col">Điều kiện giảm</th>
                                                        <th scope="col">Giá tiền xét điều kiện</th>
                                                        <th scope="col">Chọn</th>
                                                    </tr>

                                                </thead>
                                                <tbody id="table-body-phieuGiamGia">

                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="row" style="margin-top: 20px;">
                                            <div class="col-lg-8">
                                            </div>
                                            <div class="col-lg-4">
                                                <div id="pagination-container-phieuGiamGia">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- .animated -->
                        </div><!-- .content -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <footer class="site-footer">
        <div class="footer-inner bg-white">
            <div class="row">
                <div class="col-sm-6">
                    NiceStore 2024
                </div>
                <div class="col-sm-6 text-right">
                    Designed by <a href="https://colorlib.com">Team SD-09</a>
                </div>
            </div>
        </div>
    </footer>

    <input type="text" id="tabNameCurrent" hidden>

</div><!-- /#right-panel -->

<!-- Right Panel -->

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="/admin/assets/js/main.js"></script>

<script>
    // lấy ra danh sách hóa dơn chờ
    function getListHoaDonCho() {
        $.ajax({
            url: "http://localhost:8080/api/ban-hang/getDanhSachHoaDonTheoTrangThai_hoaDonCho",
            type: "GET",
            success: function(data) {
                // kiểm tra data length xem có kết quả ko
                var isCheck = data.length;
                if(isCheck > 0){
                    console.log("Có hóa dơn chờ");
                    console.log(data);
                    // tạo ra các button tabpane mới với số lượng tương ứng = data.size
                    // set id của các tabpane tương ứng với idHoaDon chờ lấy được từ data trả về
                    // Lặp qua dữ liệu để lấy idHoaDonCho
                    var tabContainer = document.getElementById("myTab");
                    tabContainer.innerHTML = ""; // Xóa các tab cũ trước khi tạo mới

                    data.forEach(function(item, index) {
                        var idHoaDonCho = item.id;
                        console.log(idHoaDonCho);

                        var tabId = "hoaDon" + (index + 1);
                        var tabName = "Hóa đơn " + (index + 1);

                        var li = document.createElement("li");
                        li.classList.add("nav-item");

                        var button = document.createElement("button");
                        button.classList.add("nav-link");
                        if ((index + 1) === 1) {
                            button.classList.add("active");
                        }

                        button.setAttribute("id", idHoaDonCho);
                        console.log("id được set : " + idHoaDonCho);
                        button.setAttribute("data-bs-toggle", "tab");
                        button.setAttribute("data-bs-target", "#" + tabId);
                        button.setAttribute("type", "button");
                        button.setAttribute("role", "tab");
                        button.setAttribute("aria-controls", tabId);
                        button.setAttribute("aria-selected", ((index + 1) === 1).toString());
                        button.textContent = tabName;

                        var span = document.createElement("span");
                        var a = document.createElement("a");
                        a.setAttribute("href", "#");
                        a.classList.add("btn");

                        var iElement = document.createElement("i");
                        iElement.classList.add("menu-icon", "fa", "fa-times", "fa-lg");
                        iElement.style.marginLeft = "10px";

                        a.appendChild(iElement);
                        span.appendChild(a);
                        button.appendChild(span);
                        li.appendChild(button);
                        tabContainer.appendChild(li);
                    });



                    // tạo sự kiện xử lý mỗi khi click vào tabpane
                    // lấy ra sự kiện đang được active cuối cùng
                    // list ra các thông tin tương ứng với idHoaDonCho của tabpane đó

                    // hàm lấy ra id của tabpane đang actice

                    // var idHoaDon_active = layIDCuaButtonTabPane_active();
                    // console.log("id hóa dơn đang active : " + idHoaDon_active);

                }else{
                    console.log("Không có hóa đơn chờ nào");

                    // tạo 1 hóa đơn chờ trong DB
                    // lấy ra idHoaDonCho => thiết lập vào tabpane id cho button của tabpane
                    tuDongTao_1_hoaDonCho();

                    console.log("chạy xong tự tạo 1 hóa đơn chờ");

                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function layIDCuaButtonTabPane_active() {
        // Lấy danh sách tất cả các button trong tab
        var buttons = document.querySelectorAll('.nav-link');

        // Duyệt qua từng button để tìm button có class active
        for (var i = 0; i < buttons.length; i++) {
            if (buttons[i].classList.contains('active')) {
                // Nếu button đó có class active, trả về id của nó
                return buttons[i].getAttribute('id');
            }
        }

        // Nếu không tìm thấy button nào có class active, trả về null
        return null;
    }

    // tự đọng tạo 1 hóa đơn chờ
    function  tuDongTao_1_hoaDonCho(){
        console.log("Chạy vào function thưc hiện tạo 1 hóa đơn chờ ");
        $.ajax({
            url: "http://localhost:8080/ban-hang/tuDongTao1HoaDonCho",
            type: "POST",
            success: function(data) {
                var idHoaDonCho_new = data.idHoaDon;
                console.log("Id hóa đơn chờ mới được tạo : " + idHoaDonCho_new);

                // Lấy tab hiện tại
                var currentTabPane = document.querySelector('.tab-pane.active');

                // Lấy ra button hiện tại
                var button = document.getElementById("home-tab");

                // Đặt id mới cho button
                var newButtonId = idHoaDonCho_new;
                button.setAttribute("id", newButtonId);

            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    // tạo tab
    function createTabs(tabCount, data) {
        var tabContainer = document.getElementById("myTab");
        tabContainer.innerHTML = ""; // Xóa các tab cũ trước khi tạo mới

        for (var i = 1; i <= tabCount; i++) {
            var tabId = "hoaDon" + i;
            var tabName = "Hóa đơn " + i;

            var li = document.createElement("li");
            li.classList.add("nav-item");

            var button = document.createElement("button");
            button.classList.add("nav-link");
            if (i === 1) {
                button.classList.add("active");
            }
            button.setAttribute("id", tabId + "-tab");
            button.setAttribute("data-bs-toggle", "tab");
            button.setAttribute("data-bs-target", "#" + tabId);
            button.setAttribute("type", "button");
            button.setAttribute("role", "tab");
            button.setAttribute("aria-controls", tabId);
            button.setAttribute("aria-selected", (i === 1).toString());
            button.textContent = tabName;

            var span = document.createElement("span");
            var a = document.createElement("a");
            a.setAttribute("href", "#");
            a.classList.add("btn");

            var iElement = document.createElement("i");
            iElement.classList.add("menu-icon", "fa", "fa-times", "fa-lg");
            iElement.style.marginLeft = "10px";

            a.appendChild(iElement);
            span.appendChild(a);
            button.appendChild(span);
            li.appendChild(button);
            tabContainer.appendChild(li);
        }
    }



    // hàm thực hiện mỗi lần load trang sẽ thực hiện các hàm bên trong
    document.addEventListener("DOMContentLoaded", function() {
        // lấy ra hóa đơn chờ
        getListHoaDonCho();
    });
</script>
<script>
    // Sử dụng JavaScript để đặt giá trị của trường ngày thành ngày hôm nay
    document.getElementById('dateToday').valueAsDate = new Date();

    // lấy ra tab hiện tại
    function currentTab(){

    }

    // thêm sản phẩm vào hóa đơn chờ
    function addToBill(sanPhamId) {


        // lấy ra tên tabpane đang được chọn để setSession, thêm sản phẩm vào hoaDonCho cho chuẩn của tabPane đó
        var activeTab = document.querySelector(".tab-pane.fade.show.active");
        if (activeTab) {
            var tabName = activeTab.getAttribute("id");
            var tabNameInput = document.getElementById("tabNameCurrent");
            tabNameInput.value = tabName;
            // console.log("Current Tab Name:", tabName);
            // console.log("Current Tab Name current hidden:", tabNameInput);
        } else {
            console.log("No active tab found.");
        }

        // Lấy giá trị của số lượng mua từ trường nhập liệu
        var soLuongMua = document.getElementById(sanPhamId).value;
        let idSanPhamCTDuocChon = sanPhamId;
        var tabNameCurrentPage = document.getElementById("tabNameCurrent").value;

        // console.log("ID sản phẩm:", sanPhamId);
        // console.log("Số lượng mua:", soLuongMua);
        // console.log("tabNameCurrentPage : " + tabNameCurrentPage);


        //id="sizeGiayDuocChon"
        let data = {
            idSanPhamCT: idSanPhamCTDuocChon, //lay theo id
            soLuong: soLuongMua ,
            tenHoaDon: tabNameCurrentPage
        };

        $ === jQuery
        jQuery.ajax({
            url : "/ban-hang/add-to-hoaDonCho",
            type : "POST",
            contentType: "application/json",
            data : JSON.stringify(data),
            dataType : "json", //Kieu du lieu tra ve tu controller la json

            success : function(jsonResult) {
                / alert(jsonResult.code + ": " + jsonResult.message); /
                let totalProducts = jsonResult.totalCartProducts;
                let totalPrice = jsonResult.totalPriceResult;
                let soLuongMuaVuotQua = jsonResult.soLuongMuaVuotQua;
                $("#totalCartProductsId").html(totalProducts);
                // $("#totalPriceInCart").html(totalPrice);
                if(soLuongMuaVuotQua===true){
                    alert("Số lượng trong kho không đủ, vui lòng chọn sản phẩm khác hoặc liên hệ với chúng tôi để đặt hàng sớm nhất.");
                }
            },

            error : function(jqXhr, textStatus, errorMessage) {
                //alert(jsonResult.code + ': Luu thanh cong...!')
            }

        });
    }

</script>

<script>
    // tạo tab mới khi bấn click button tạo hóa đơn mới
    document.getElementById("createTabBtn").addEventListener("click", function() {
        var tabCount = document.querySelectorAll("#myTab .nav-link").length;
        var tabContainer = document.getElementById("myTab");

        if (tabCount >= 5) {
            alert("Số lượng tab hóa đơn đã đạt đến giới hạn tối đa là 5.");
            return;
        }

        $.ajax({
            url: "http://localhost:8080/ban-hang/tuDongTao1HoaDonCho",
            type: "POST",
            success: function(data) {
                var idHoaDonCho = data.idHoaDon;
                // console.log("Id hóa đơn chờ thêm mới vào tabpane mới : " + idHoaDonCho);

                var tabId = "hoaDon" + (tabCount + 1);
                var tabName = "Hóa đơn " + (tabCount + 1);

                var li = document.createElement("li");
                li.classList.add("nav-item");

                var button = document.createElement("button");
                button.classList.add("nav-link");

                // Lặp qua tất cả các tab và loại bỏ class "active"
                var navLinks = document.querySelectorAll("#myTab .nav-link");
                navLinks.forEach(function(navLink) {
                    navLink.classList.remove("active");
                });

                // Thêm class "active" cho tab mới
                button.classList.add("active");



                button.setAttribute("id", idHoaDonCho );

                // console.log("Id hóa đơn chờ được set vào TABPANE : " + idHoaDonCho);
                button.setAttribute("data-bs-toggle", "tab");
                button.setAttribute("data-bs-target", "#" + tabId);
                button.setAttribute("type", "button");
                button.setAttribute("role", "tab");
                button.setAttribute("aria-controls", tabId);
                button.setAttribute("aria-selected", ((tabCount + 1)).toString());
                button.textContent = tabName;

                var span = document.createElement("span");
                var a = document.createElement("a");
                a.setAttribute("href", "#");
                a.classList.add("btn");

                var iElement = document.createElement("i");
                iElement.classList.add("menu-icon", "fa", "fa-times", "fa-lg");
                iElement.style.marginLeft = "10px";

                a.appendChild(iElement);
                span.appendChild(a);
                button.appendChild(span);
                li.appendChild(button);
                tabContainer.appendChild(li);

                // Đảm bảo rằng tab mới được kích hoạt
                // var newTabBtn = document.getElementById(tabId + "-tab");
                // newTabBtn.click();

                // console.log("Button tabpane vừa được tạo id của nó là " + layIDCuaButtonTabPane_active());
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    });

    // lấy idHoaDon khi click vào myTab - thành công khi click vào nó
    document.getElementById("myTab").addEventListener("click", function(event) {
        var idHoaDon_active = layIDCuaButtonTabPane_active();
        console.log("id hóa dơn đang active : " + idHoaDon_active);
    });

    // lấy id của button tabpane đang active => thành công
    function layIDCuaButtonTabPane_active() {
        var activeTabBtn = document.querySelector("#myTab .nav-link.active");
        if (activeTabBtn) {
            return activeTabBtn.getAttribute("id");
        }
        return null;
    }


</script>


<%--<script src="/admin/assets/js/fillDataFromAPI.js"></script>--%>


<script>
    <%-- đổ dữ liệu và phân trang SanPhamChiTiet   --%>
    // xử lý phân trang final khi lấy dữ liệu được call từ API
    // Hàm gọi API và xử lý dữ liệu
    // var page = 1;
    var pageLimit = 4; // Số lượng sản phẩm trên mỗi trang

    // sanPhamChiTiet
    // tạo phân trang
    function createPagination_choDanhSachSPCT(totalPages) {
        var paginationContainer = $("<ul>").addClass("pagination justify-content-end");

        // Tạo các nút trang
        for (var i = 1; i <= totalPages; i++) {
            var pageItem = $("<li>").addClass("page-item");
            var pageLink = $("<a>").addClass("page-link").attr("href", "#").text(i);
            if (i === 1) {
                pageItem.addClass("active");
            }
            pageItem.append(pageLink);
            paginationContainer.append(pageItem);
        }

        // sanPhamChiTiet
        // Thêm sự kiện click cho các nút trang
        paginationContainer.find(".page-link").not("[aria-disabled='true']").click(function (e) {
            e.preventDefault();
            // Lấy số trang tương ứng khi click
            var currentPage = parseInt($(this).text());
            // Xóa lớp active khỏi tất cả các thẻ <li>
            paginationContainer.find("li").removeClass("active");
            // Thêm lớp active cho thẻ <li> của trang được chọn
            $(this).parent().addClass("active");

            // Gọi hàm để lấy dữ liệu cho trang mới
            phanTrangSanPhamCT_trongChonSanPham((currentPage-1), pageLimit);
        });

        // sanPhamChiTiet
        // Thêm phân trang vào DOM
        $("#pagination-container-chiTietSP").empty().append(paginationContainer);
    }

    // sanPhamChiTiet
    // lấy dữ liệu từ API để tính tổng số trang
    // => chạy hàm tạo phân trang cho danh sách sản phẩm
    function fetchDataAndFillTable_danhSachSPCT() {
        $.ajax({
            url: "http://localhost:8080/api/ban-hang/getDanhSachSanPham",
            type: "GET",
            success: function(data) {

                var totalPages = Math.ceil(data.length / pageLimit);

                // Tạo phân trang
                createPagination_choDanhSachSPCT(totalPages);

                // hiển thị mặc định trang đầu tiên là 1
                currentPage = 1;
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    // sanPhamChiTiet
    // Function để điền dữ liệu vào bảng
    function fillTableWithData_choSanPhamCT(data) {
        // lấy ra content của tBody trong table => xóa content trong đó đi
        var tableBody = $("#table-body-chiTietSP");
        tableBody.empty();

        // set lại nội dung cho tbody
        data.forEach(function(item, index) {
            var row =
                "<tr style='text-align: center;'>" +
                "<td>" + (index + 1) + "</td>" +
                "<td><img width='80px' src='" + item.hinhAnh + "' alt=''></td>" +
                "<td>" + item.sanPham.ten + "</td>" +
                "<td>Size: " + item.kichCo.ten + " - màu: " + item.mauSac.ten + "</td>" +
                "<td>" + item.soLuong + "</td>" +
                "<td>" + item.giaTriSanPham + "</td>" +
                "<td><input type='number' id='" + item.id + "' value='1' min='1' class='form-control' style='width: 50%; margin: 0px auto;'></td>" +
                "<td><a href='#' class='btn btn-success' onclick='addToBill(\"" + item.id + "\");'>Chọn mua</a></td>" +
                "</tr>";
            tableBody.append(row);
        });
    }

    // sanPhamChiTiet
    // đổ lại dữ liệu vào bảng sau khi chọn phân trang
    phanTrangSanPhamCT_trongChonSanPham = function( currentPage , pageLimit) {
        let data = {
            currentPage: currentPage ,
            pageLimit: pageLimit
        };

        //$ === jQuery
        jQuery.ajax({
            url : "/ban-hang/phan-trang-sanPhamChiTiet",
            type : "POST",
            contentType: "application/json",
            data : JSON.stringify(data),
            dataType : "json", //Kieu du lieu tra ve tu controller la json

            success : function(jsonResult) {

                var danhSachSanPhamChiTiet = jsonResult.danhSachSanPhamChiTiet;
                // console.log(danhSachSanPhamChiTiet);

                // Điền dữ liệu vào bảng
                fillTableWithData_choSanPhamCT(danhSachSanPhamChiTiet);
            },

            error : function(jqXhr, textStatus, errorMessage) {
                //alert(jsonResult.code + ': Luu thanh cong...!')
            }

        });
    }



    <%--/ đổ dữ liệu và phân trang SanPhamChiTiet   --%>

    // hàm thực hiện mỗi lần load trang sẽ thực hiện các hàm bên trong
    document.addEventListener("DOMContentLoaded", function() {
        // fill data to table list product detail
        fetchDataAndFillTable_danhSachSPCT();
        // pagination for list product detail
        phanTrangSanPhamCT_trongChonSanPham();
    });

    <%-- đổ dữ liệu và phân trang KhachHang   --%>
    // khach hang
    // đổ lại dữ liệu vào bảng sau khi chọn phân trang
    phanTrangSanPhamCT_trongChonKhachHang = function( currentPage , pageLimit) {
        let data = {
            currentPage: currentPage ,
            pageLimit: pageLimit
        };

        //$ === jQuery
        jQuery.ajax({
            url : "/ban-hang/phan-trang-thongTinKhachHang",
            type : "POST",
            contentType: "application/json",
            data : JSON.stringify(data),
            dataType : "json", //Kieu du lieu tra ve tu controller la json

            success : function(jsonResult) {

                var danhSachKhachHang = jsonResult.danhSachKhachHang;
                // console.log(danhSachKhachHang);

                // Điền dữ liệu vào bảng
                fillTableWithData_choKhachHang(danhSachKhachHang);
            },

            error : function(jqXhr, textStatus, errorMessage) {
                //alert(jsonResult.code + ': Luu thanh cong...!')
            }

        });
    }

    // khach hang
    // tạo ra phân trang và tạo sự kiện xử lý phân trang khi click
    function createPagination_choDanhSachKhachHang(totalPages) {
        var paginationContainer = $("<ul>").addClass("pagination justify-content-end");

        // Tạo các nút trang
        for (var i = 1; i <= totalPages; i++) {
            var pageItem = $("<li>").addClass("page-item");
            var pageLink = $("<a>").addClass("page-link").attr("href", "#").text(i);
            if (i === 1) {
                pageItem.addClass("active");
            }
            pageItem.append(pageLink);
            paginationContainer.append(pageItem);
        }

        // Thêm sự kiện click cho các nút trang
        paginationContainer.find(".page-link").not("[aria-disabled='true']").click(function (e) {
            e.preventDefault();
            // Lấy số trang tương ứng khi click
            var currentPage = parseInt($(this).text());
            // Xóa lớp active khỏi tất cả các thẻ <li>
            paginationContainer.find("li").removeClass("active");
            // Thêm lớp active cho thẻ <li> của trang được chọn
            $(this).parent().addClass("active");

            // Gọi hàm để lấy dữ liệu cho trang mới
            phanTrangSanPhamCT_trongChonKhachHang((currentPage-1), pageLimit);
        });

        // Thêm phân trang vào DOM
        $("#pagination-container-khachHang").empty().append(paginationContainer);
    }

    // khach hang
    // lấy dữ liệu từ API để tính tổng số trang
    // => chạy hàm tạo phân trang cho danh sách sản phẩm
    function fetchDataAndFillTable_danhSachKhachHang() {
        $.ajax({
            url: "http://localhost:8080/api/ban-hang/getDanhSachKhachHang",
            type: "GET",
            success: function(data) {

                var totalPages = Math.ceil(data.length / pageLimit);

                // Tạo phân trang
                createPagination_choDanhSachKhachHang(totalPages);

                // hiển thị mặc định trang đầu tiên là 1
                currentPage = 1;
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    // khachHang
    // Function để điền dữ liệu vào bảng
    function fillTableWithData_choKhachHang(data) {
        // lấy ra content của tBody trong table => xóa content trong đó đi
        var tableBody = $("#table-body-khachHang");
        tableBody.empty();

        // set lại nội dung cho tbody
        data.forEach(function(item, index) {
            var gioiTinh = item === 0 ? "Nam":"Nữ";
            var row =
                "<tr style='text-align: center;'>" +
                "<td>" + (index + 1) + "</td>" +
                "<td>" +   item.hoTen + " </td>" +
                "<td>" +  gioiTinh + "</td>" +
                "<td>" +  item.soDT + "</td>" +
                "<td>" +  item.email + "</td>" +
                "<td><a href='#' class='btn btn-success' onclick='chonKhachHang(\"" + item.id + "\");'>Chọn </a></td>" +
                "</tr>";
            tableBody.append(row);
        });
    }
    <%--/ đổ dữ liệu và phân trang KhachHang   --%>

    // hàm thực hiện mỗi lần load trang sẽ thực hiện các hàm bên trong
    document.addEventListener("DOMContentLoaded", function() {
        // fill data to table list product detail
        fetchDataAndFillTable_danhSachKhachHang();
        // pagination for list product detail
        phanTrangSanPhamCT_trongChonKhachHang();
    });



    <%-- đổ dữ liệu và phân trang PhieuGiamGia   --%>
    // phieu giam gia
    // đổ lại dữ liệu vào bảng sau khi chọn phân trang
    phanTrangSanPhamCT_trongChonPhieuGiamGia = function( currentPage , pageLimit) {
        let data = {
            currentPage: currentPage ,
            pageLimit: pageLimit
        };

        //$ === jQuery
        jQuery.ajax({
            url : "/ban-hang/phan-trang-phieuGiamGia",
            type : "POST",
            contentType: "application/json",
            data : JSON.stringify(data),
            dataType : "json", //Kieu du lieu tra ve tu controller la json

            success : function(jsonResult) {

                var danhSachPhieuGiamGia = jsonResult.danhSachPhieuGiamGia;
                // console.log(danhSachPhieuGiamGia);

                // Điền dữ liệu vào bảng
                fillTableWithData_chonPhieuGiamGia(danhSachPhieuGiamGia);
            },

            error : function(jqXhr, textStatus, errorMessage) {
                //alert(jsonResult.code + ': Luu thanh cong...!')
            }

        });
    }

    // phieu giam gia
    // tạo ra phân trang và tạo sự kiện xử lý phân trang khi click
    function createPagination_choDanhSacPhieuGiamGia(totalPages) {
        var paginationContainer = $("<ul>").addClass("pagination justify-content-end");

        // Tạo các nút trang
        for (var i = 1; i <= totalPages; i++) {
            var pageItem = $("<li>").addClass("page-item");
            var pageLink = $("<a>").addClass("page-link").attr("href", "#").text(i);
            if (i === 1) {
                pageItem.addClass("active");
            }
            pageItem.append(pageLink);
            paginationContainer.append(pageItem);
        }

        // Thêm sự kiện click cho các nút trang
        paginationContainer.find(".page-link").not("[aria-disabled='true']").click(function (e) {
            e.preventDefault();
            // Lấy số trang tương ứng khi click
            var currentPage = parseInt($(this).text());
            // Xóa lớp active khỏi tất cả các thẻ <li>
            paginationContainer.find("li").removeClass("active");
            // Thêm lớp active cho thẻ <li> của trang được chọn
            $(this).parent().addClass("active");

            // Gọi hàm để lấy dữ liệu cho trang mới
            phanTrangSanPhamCT_trongChonPhieuGiamGia((currentPage-1), pageLimit);
        });

        // Thêm phân trang vào DOM
        $("#pagination-container-phieuGiamGia").empty().append(paginationContainer);
    }

    // phieu giam gia
    // lấy dữ liệu từ API để tính tổng số trang
    // => chạy hàm tạo phân trang cho danh sách sản phẩm
    function fetchDataAndFillTable_danhSachPhieuGiamGia() {
        $.ajax({
            url: "http://localhost:8080/api/ban-hang/getDanhSachPhieuGiamGia",
            type: "GET",
            success: function(data) {

                var totalPages = Math.ceil(data.length / pageLimit);

                // Tạo phân trang
                createPagination_choDanhSacPhieuGiamGia(totalPages);

                // hiển thị mặc định trang đầu tiên là 1
                currentPage = 1;
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    // phieu giam gia
    // Function để điền dữ liệu vào bảng
    function fillTableWithData_chonPhieuGiamGia(data) {
        // lấy ra content của tBody trong table => xóa content trong đó đi
        var tableBody = $("#table-body-phieuGiamGia");
        tableBody.empty();


        // set lại nội dung cho tbody
        data.forEach(function(item, index) {
            var gioiTinh = item === 0 ? "Nam":"Nữ";
            var row =
                "<tr style='text-align: center;'>" +
                "<td>" + (index + 1) + "</td>" +
                "<td>" +  item.ten + "</td>" +
                "<td>" +  item.ngayBatDauApDung + "</td>" +
                "<td>" +  item.ngayKetThucApDung + "</td>" +
                "<td>" +  item.giaTriGiam + "</td>" +
                "<td>" +  item.hinhThucGiam + "</td>" +
                "<td>" +  item.dieuKienGiam + "</td>" +
                "<td>" +  item.giaTienXetDieuKien + "</td>" +
                "<td><a href='#' class='btn btn-success' onclick='chonKhachHang(\"" + item.id + "\");'>Chọn </a></td>" +
                "</tr>";
            tableBody.append(row);
        });
    }
    <%--/ đổ dữ liệu và phân trang KhachHang   --%>

    // hàm thực hiện mỗi lần load trang sẽ thực hiện các hàm bên trong
    document.addEventListener("DOMContentLoaded", function() {
        // fill data to table list product detail
        fetchDataAndFillTable_danhSachPhieuGiamGia();
        // pagination for list product detail
        phanTrangSanPhamCT_trongChonPhieuGiamGia();
    });

</script>

<script>
    function taoHoaDonChoMoi(){
        // lấy ra số lượng tab để xác định nội dung cho tab tiếp theo

    }
</script>


</body>
</html>
