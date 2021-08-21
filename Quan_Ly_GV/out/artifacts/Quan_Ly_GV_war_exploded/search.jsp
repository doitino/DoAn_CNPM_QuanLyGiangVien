<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 09/06/2021
  Time: 12:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Danh sách giảng viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<nav class="navbar navbar-default" style="margin-top: 50px">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="CT_Index"><img style="    width: 54px;margin-top: -16px;" src="img/home.png"></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="CT_Index">Home</a></li>
            <li><a href="CT_DanhSach">Xem danh sách</a></li>
            <li><a href="#">Chức năng</a></li>
        </ul>
        <form class="navbar-form navbar-left" action="CT_Search">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search" name="search">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                </div>
            </div>
        </form>
        <div style="margin-top: 13px  ;  position: absolute;margin-left: 444px;"><a STYLE="margin-left: 444px" href="CT_Login">Đăng nhập</a></div>
    </div>
    </div>
</nav>

<div class="" style="margin-top:-20px;margin-left: 0px;">
    <div class="row">
        <div class="left-component col-4">
            <div>
                <li class="left-menu " style="background-color: blue;">
                    <img width="30px" src="img/img_87583.png">
                    <a style="color: white;margin-left: 5px;padding-bottom: -10px;position: absolute;margin-top: 4px;">Menu</a>
                </li>
                <li class="left-menu">
                    <img src="img/icon15.png">
                    <a href="CT_DanhSach">Giáo viên</a>
                </li>
                <li class="left-menu">
                    <img src="img/img_158445.png">
                    <a href="CT_DS_Khoa">Khoa</a>
                </li>
                <li class="left-menu">
                    <img src="img/33277.png">
                    <a href="CT_Mon_Hoc">Môn học</a>
                </li>
                <li class="left-menu">
                    <img src="img/img_140174.png">
                    <a>Hướng dẫn</a>
                </li>
            </div>
        </div>
        <div class="right-component col-8"  style="    background-color: white">
            <div><h3 class="text-center">Kết quả tìm kiếm</h3></div>
            <div>
                <button id="bt1" onclick="giangvien()" class="button button-primary" style="background-color: green;color: black;margin-bottom: 20px;float: left;margin-right: 10px">Giảng Viên</button>
                <button id="bt2" onclick="khoa()" class="button button-primary" style="background-color: #d7eed7;color: black;margin-bottom: 20px;float: left;margin-right: 10px">Khoa</button>
                <button id="bt3" onclick="monhoc()" class="button button-primary" style="background-color: #d7eed7;color: black;margin-bottom: 20px">Môn học</button>
            </div>
            <table class="table table-bordered table-striped" id="table1">
                <thead>
                <tr>
                    <th>Mã</th>
                    <th>Họ tên</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>Khoa</th>
                    <th>Học vị</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <cc:forEach items="${list}" var="g">
                    <tr>
                        <td>${g.ma_gv}</td>
                        <td>${g.ten_gv}</td>
                        <td>${g.ngay_sinh}</td>
                        <td>${g.gioi_tinh}</td>
                        <td>${g.ma_khoa}</td>
                        <td>${g.hoc_vi}</td>
                        <td><a href="CT_TKB">TKB</a></td>
                    </tr>
                </cc:forEach>
                </tbody>
            </table>
            <table class="table data-table  table-striped" id="table2" style="display: none" >
                <thead>
                <tr>
                    <th>Mã khoa</th>
                    <th>Tên khoa</th>
                    <th>Năm thành lập</th>
                    <th>Trưởng khoa</th>
                    <th>Thao tác</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <cc:forEach items="${list2}" var="k">
                    <tr>
                        <td>${k.ma_khoa}</td>
                        <td>${k.ten_khoa}</td>
                        <td>${k.nam_tl}</td>
                        <td>${k.tr_khoa}</td>
                        <td><a>Chi tiết</a></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </cc:forEach>
                </tbody>
            </table>
            <table class="table data-table  table-striped" id="table3" style="display: none" >
                <thead>
                <tr>
                    <th>Mã môn học</th>
                    <th>Tên môn học</th>
                    <th>Tín chỉ LT</th>
                    <th>Tín chỉ TH</th>
                    <th>TGBĐ</th>
                    <th>TGKT</th>
                </tr>
                </thead>
                <tbody>
                <cc:forEach items="${list3}" var="m">
                    <tr>
                        <td>${m.ma_mh}</td>
                        <td>${m.ten_mh}</td>
                        <td>${m.so_tin_chi_lt}</td>
                        <td>${m.so_tin_chi_th}</td>
                        <td>${m.tg_bd}</td>
                        <td>${m.tg_kt}</td>
                        <td><a>Chi tiết</a></td>
                    </tr>
                </cc:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
<script>

    function giangvien(){
        document.getElementById("table1").style.display ="block";
        document.getElementById("table2").style.display ="none";
        document.getElementById("table3").style.display ="none";
        document.getElementById("bt1").style.backgroundColor ="green"
        document.getElementById("bt2").style.backgroundColor =" #d7eed7"
        document.getElementById("bt3").style.backgroundColor =" #d7eed7"

    }
    function khoa(){
        document.getElementById("table1").style.display ="none";
        document.getElementById("table2").style.display ="block";
        document.getElementById("table3").style.display ="none";
        document.getElementById("bt1").style.backgroundColor =" #d7eed7"
        document.getElementById("bt2").style.backgroundColor ="green"
        document.getElementById("bt3").style.backgroundColor =" #d7eed7"

    }
    function monhoc(){
        document.getElementById("table1").style.display ="none";
        document.getElementById("table2").style.display ="none";
        document.getElementById("table3").style.display ="block";
        document.getElementById("bt1").style.backgroundColor =" #d7eed7"
        document.getElementById("bt2").style.backgroundColor =" #d7eed7"
        document.getElementById("bt3").style.backgroundColor =" green"

    }
</script>
</body>
</html>

