<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script>
            function tinhtien() {
                var tong = 0;
                var hang = document.getElementsByTagName('tr');
                for (var i = 1; i < hang.length - 1; i++) {
                    var o = hang[i].getElementsByTagName('td');
                    var gia = o[3].innerHTML;
                    var sl = o[4].innerHTML;
                    var thanhtien = gia * sl;
                    o[5].innerHTML = thanhtien;
                    tong = tong + thanhtien;
                }
                document.getElementById('tongtien').innerHTML = tong

            }
            function thongbao() {
                alert("Quý Khách Đăng nhập Để Mua Hàng.! ");
                
            }

            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[2];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
        <style>
            body, html {
                margin: 0;
                height: auto;
            }
            body {
                width: 100%;
            }
            .bodi {
                padding-left: 20%;
                padding-right: 20%;
            }
            .sp {
                background-color: white;
                width: 171px;
                margin: 20px 5px;
                padding: 5px 5px 5px 5px;
            }
            .spName {
                text-align: justify;
                margin: 2px 0px;
            }
            .spPrice {
                color: #ff5722!important;
                margin: 2px 0px;
            }
            .spInfo {
                text-align: justify;
                margin: 5px 0px;
            }
            .spAdd {
                font-size: 18px;
                margin-left: 3px;
                background: #3f51b5!important;
                color: white;
            }
            nav input[type=text] {
                width: 130px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 16px;
                background-color: white;

                background-position: 10px 10px; 
                background-repeat: no-repeat;
                padding: 12px 20px 12px 40px;
                -webkit-transition: width 0.4s ease-in-out;
                transition: width 0.4s ease-in-out;
            }

            nav input[type=text]:focus {
                width: 400px;
            }
        </style>

    </head>
    <body style="background: #f5f5f5" onchange="tinhtien()">
    <center>
        <div style="width: 1070px" >
            <form action="Controller" method="post"  algin="center">
                <header class="w3-row">
                    <div class="w3-col w3-orange" style="width: 200px; height: 70px; float: left"><button class="w3-button w3-round w3-white"  style="margin-top: 18px; margin-left: 30px;"><a href="Trangchu_1.jsp" style="text-decoration: none">Trang chủ</a></button></div>
                    <div class="w3-col w3-orange" style="width: 870px; height: 70px; ">
                        <div style="padding-top: 18px;float: left;padding-right: 20px">

                            <button class="w3-button w3-round w3-white" value="Dangnhap" name="btnAction" style=" display: ${sessionScope.log}"><a href="Controller?btnAction=Dangnhap" style="text-decoration: none">Đăng nhập</a></button>
                            <button class="w3-button w3-round w3-white" value="Dangky" name="btnAction" style=" display: ${sessionScope.logout}"><a href="NewLogin_1.jsp" style="text-decoration: none">Đăng Ký</a></button>
                            <button class="w3-button w3-round w3-white" value="Giohanga" name="btnAction" style="display: ${sessionScope.lg}"><a href="Controller?btnAction=Giohanga" style="text-decoration: none">Giỏ Hàng</a></button>
                        </div>
                    </div>
                </header>
                <nav style="padding-top: 8px; padding-bottom: 8px; margin: 10px 0px; background-color: white;width: 1070px" class="bodi">
                    <div class="w3-row">

                        <div>

                            <a href="Trangchu_1.jsp"><img style="float: left; margin-right: 10px; width: 70px; height: 50px" src="img/logo.jpg" ></a>
                            <input  id="myInput" onkeyup="myFunction()" type="text" placeholder="Seach">
                            <a href="showcart_1.jsp">
                                <span class="fa fa-shopping-cart" style=" width: 38px; height: 38px; font-size: 22px;margin-right: 60px"></span>
                            </a>
                        </div>

                    </div>
                </nav>
                <article >
                    <div style="font-size: 22px">
                        <h1>Your Shopping Cart</h1>
                        <c:set var="shop" value="${sessionScope.SHOP}"/>
                        <c:if test="${not empty shop}">
                            <table class="w3-table w3-striped w3-bordered w3-border" border="0" style=" margin: 0 auto" id="myTable" >
                                <thead>
                                    <tr>
                                        <th>Stt</th>
                                        <th>Mã sản phẩm</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Giá</th>
                                        <th>Số Lượng</th>
                                        <th>Thành Tiền</th>
                                        <th>Lựa Chọn </th>
                                    </tr>
                                </thead>
                                <tbody>
                                <form>
                                    <c:set var="count" value="0"/>
                                    <c:forEach var="rows" items="${shop}">
                                        <c:set var="count" value="${count + 1}" />
                                        <tr>
                                            <td>${count}</td>
                                            <td>${rows.value.sanpham.code}</td>
                                            <td>${rows.value.sanpham.name}</td>
                                            <td>${rows.value.sanpham.price}</td>
                                            <td>${rows.value.quantity}</td>
                                            <td>${rows.value.quantity * rows.value.sanpham.price}   <span> $</span></td>
                                            <td><input type="checkbox" name="rmv"  value="${rows.value.sanpham.code}"/></td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <c:url var="add" value="Controller">
                                            <c:param name="btnAction" value="AddMore"/>
                                        </c:url>
                                        <td colspan="2"><a href="Trangchu_1.jsp">Mua Thêm</a></td>
                                        <td><input type="submit" value="XOA" name="btnAction" class="w3-button w3-round w3-red"/></td>
                                        <td colspan="4"><h2>Tổng tiền thanh toán: <span id="tongtien" name="btnAction" value="tongtien1"></span>  $</h2></td>
                                    </tr>
                                </form>
                                </tbody>
                            </table>
                        </c:if>                
                    </div>
                </article>
            </form>    
            <br> <td><input class="w3-button w3-round w3-green" type="button"  onclick="thongbao()" value="Thanh Toan"/></td>

        </div>
    </center>
</body>
</html>