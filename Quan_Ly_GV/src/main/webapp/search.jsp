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
        <div style="margin-top: 13px  ;  position: absolute;margin-left: 444px;"><a STYLE="margin-left: 444px">Đăng nhập</a></div>
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
                    <a>Khoa</a>
                </li>
                <li class="left-menu">
                    <img src="img/33277.png">
                    <a>Môn học</a>
                </li>
                <li class="left-menu">
                    <img src="img/img_140174.png">
                    <a>Hướng dẫn</a>
                </li>
            </div>
        </div>
        <div class="right-component col-8"  style="    background-color: white">
            <div><h3 class="text-center">Kết quả tìm kiếm</h3></div>
            <div><button class="button button-primary" style="margin-left: 800px;background-color: green;color: white;margin-bottom: 20px">Thêm</button></div>
            <table class="table table-bordered table-striped">
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
                        <td>Chi tiết</td>
                    </tr>
                </cc:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>

</body>
</html>

