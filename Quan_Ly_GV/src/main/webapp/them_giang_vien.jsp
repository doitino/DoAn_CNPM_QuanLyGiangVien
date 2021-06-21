<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 22/06/2021
  Time: 12:21 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Quản Lý giảng viên </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <style>
        ul ,li{
            list-style: none;
        }
        ul li input{
            width: 50%;
        }
        .infor-add{
            margin-bottom: 20px;
        }
        .them{
            color: white;
            border: 1px solid transparent;
            border-radius:2px;height: 32px;
            background-color:#337ab7;
        }
        .them:hover{
            background-color: #4861b5;
        }
    </style>
</head>

<body>

<nav class="navbar navbar-default"  style="margin-top: 50px">
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
        <div style="margin-top: 13px  ;  position: absolute;margin-left: 444px;"><a style="margin-left: 444px" href="CT_Login">Đăng nhập</a></div>
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
                    <a>Môn học</a>
                </li>
                <li class="left-menu">
                    <img src="img/img_140174.png">
                    <a>Hướng dẫn</a>
                </li>
            </div>
        </div>
        <div class="right-component col-8"  style="    background-color: white">
            <div class="row">
                <div style="margin-top: 70px;">
                    <div><h2 style="margin-left: 100px;margin-bottom: 50px;">Nhập thông tin giảng viên</h2></div>
                    <form action="CT_Add">
                    <ul>
                        <li class="infor-add"><label style="float: left;width: 135px;">Tên giảng viên :</label>
                            <input class="form-control" name="ten" style="width: 35%;height: 28px;"></li>
                        <li class="infor-add"><label style="float: left;width: 135px;">Ngày sinh :</label>
                            <input class="form-control" name="ngaysinh" type="date" style="width: 35%;height: 28px;"></li>
                        <li class="infor-add" style="width: 100%;"><label style="float: left;width: 135px;">Giới tính :</label>
                            <div >
                                <input class="form-control"  style="width: 15%;height: 28px;" list="gioitinhs" name="gioitinh">
                                <datalist id="gioitinhs">
                                    <option value="Nam">
                                    <option value="Nữ">
                                </datalist>
                            </div>
                        </li>
                        <li class="infor-add"><label style="float: left;width: 135px;">Mã khoa :</label>
                            <input class="form-control" type="number" name="makhoa" style="width: 35%;height: 28px;"></li>
                        <li class="infor-add"><label style="float: left;width: 135px;">Học vị :</label>
                            <div >
                                <input class="form-control"  style="width: 15%;height: 28px;" list="hocvis" name="hocvi">
                                <datalist id="hocvis">
                                    <option value="Thạc sĩ">
                                    <option value="Tiến sĩ">
                                    <option value="Giáo Sư">
                                </datalist>
                            </div>
                        </li>
                    </ul>
                    <div>
                        <button style="margin-left: 200px" class="btn btn-primary"><a style="text-decoration: none;color: white">Hủy</a></button>
                       <input class="them"  type="submit" value="Thêm">
                    </div>
                    </form>
                </div>

            </div>
        </div>

    </div>
</div>

</body>
</html>

