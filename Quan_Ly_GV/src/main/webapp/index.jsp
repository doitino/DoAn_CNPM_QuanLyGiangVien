<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 26/05/2021
  Time: 11:15 SA
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
</head>
<style>
    body{
        background-color: #fcfafa;
        width: 80%;
        margin: auto;
    }
    .left-menu{
        list-style: none;
        background-color: white;
        margin-top: 20px;
        height: 40px;
        border-radius: 5px;
    }
    li a{
        color: rgb(43, 42, 42);
        font-size: 20px;
        margin-left: 30px;
    }
    .left-component{
        background-color: rgb(190 226 243);
        float: left;
        width: 30%;
        padding-bottom: 40px;
        border: 5px solid rgb(187, 200, 238);
        margin-left: 16px;
        height: 500px;
    }
    .right-component{
        background-color:rgb(190 226 243);
        margin-left: 10px;
        float: left;
        width: 68%;
        height: 500px;
        border-radius: 5px;
        border: 5px solid  rgb(187, 200, 238) ;
        margin-left: -5px;
    }
    .right-main{
        width: 98%;
        margin-left: 1%;
        border: 3px solid rgb(245, 245, 247);
        margin-top: 15px;
        height: 120px;
    }

</style>
<body>

<nav class="navbar navbar-default"  style="margin-top: 50px">
    <div class="container-fluid">

        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#">Xem danh sách</a></li>
            <li><a href="#">Chức năng</a></li>
        </ul>
        <form class="navbar-form navbar-left" action="/action_page.php">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search" name="search">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                </div>
            </div>
        </form>
        <div style="margin-top: 13px  ;  position: absolute;margin-left: 444px;"><a>Đăng nhập</a></div>
    </div>
    </div>
</nav>

<div class="" style="margin-top:-20px;margin-left: 0px;">
    <div class="row">
        <div class="left-component col-4">
            <div>
                <li class="left-menu " style="background-color: blue;">
                    <i></i>
                    <a style="color: white;">Menu</a>
                </li>
                <li class="left-menu">
                    <i></i>
                    <a href="ds_giangvien">Giáo viên</a>
                </li>
                <li class="left-menu">
                    <i></i>
                    <a>Khoa</a>
                </li>
                <li class="left-menu">
                    <i></i>
                    <a>Môn học</a>
                </li>
                <li class="left-menu">
                    <i></i>
                    <a>Hướng dẫn</a>
                </li>
            </div>
        </div>
        <div class="right-component col-8">
            <div style="background-color: rgb(42, 104, 219); height: 50px;width: 98%;margin-left: 1%;border-radius: 3px;">
                <h2 class=" text-center" style="padding-top: 10px;color: red;">SYSTEM TEACHER MANAGER</h2>
            </div>
            <div class="right-main">
                <div style="background-color: rgb(89, 174, 253);color: rgb(19, 6, 133);margin-top: -10px;height: 40px;"><h4>Thông tin chung</h4></div>
                <div style="background-color: white;margin-top:20px;">
                    <p style="float: left;margin-left: 5px;">Danh sách các trưởng khoa</p>
                    <a style="float: right;margin-right: 5px;">Xem danh sách</a>
                </div>
            </div>
            <div class="right-main">
                <div style="background-color: rgb(89, 174, 253);color: rgb(19, 6, 133);margin-top: -10px;height: 40px;"><h4>Hướng dẫn</h4></div>
                <div style="background-color: white;margin-top:20px;">
                    <p style="float: left;margin-left: 5px;">Hướng dẫn lấy lại mật khẩu</p>
                    <a style="float: right;margin-right: 5px;">Xem chi tiết</a>
                </div>
            </div>
            <div class="right-main">
                <div style="background-color: rgb(89, 174, 253);color: rgb(19, 6, 133);margin-top: -10px;height: 40px;"><h4>Thông tin chung</h4></div>
                <div style="background-color: white;margin-top:20px;">
                    <p style="float: left;margin-left: 5px;">Danh sách các trưởng khoa</p>
                    <a style="float: right;margin-right: 5px;">Xem danh sách</a>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
