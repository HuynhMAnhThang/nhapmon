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
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Giỏ hàng</title>
        <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/chosen.min.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/icofont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
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
                alert("Bạn đã thanh toán thành công");
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
    <body>
        <div class="wrapper">
            <header>
                <div class="header-area transparent-bar ptb-55">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-4">
                                <div class="logo-small-device">
                                    <a href="index.html"><img alt="" src="assets/img/logo/logo.png"></a>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8 col-8">
                                <div class="header-contact-menu-wrapper pl-45">
                                    <div class="header-contact">
                                        <p>Tổng đài chăm sóc khách hàng 1900 0091</p>
                                    </div>
                                    <div class="menu-wrapper text-center">
                                        <button class="menu-toggle">
                                            <img class="s-open" alt="" src="assets/img/icon-img/menu.png">
                                            <img class="s-close" alt="" src="assets/img/icon-img/menu-close.png">
                                        </button>
                                        <div class="main-menu">
                                            <nav>
                                                <ul>
                                                    <li><a href="Trangchu.jsp">Trang chủ</a></li>
                                                    <li class="active"><a href="#">Giới thiệu</a></li>
                                                    <li><a href="#">Quản lý</a>
                                                        <ul>
                                                            <li><a href="shop.html">Quản lý người dùng</a></li>
                                                            <li><a href="product-details.html">Quản lý sản phẩm</a></li>                                                           
                                                        </ul>
                                                    </li>
                                                    <li><a href="Controller?btnAction=Giohang">Giỏ hàng</a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <div class="header-cart cart-small-device">
                                    <button class="icon-cart">
                                        <i class="ti-shopping-cart"></i>
                                        <span class="count-style">02</span>
                                        <span class="count-price-add">$295.95</span>
                                    </button>
                                    <div class="shopping-cart-content">
                                        <ul>
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h3><a href="#">Gloriori GSX 250 R </a></h3>
                                                    <span>Price: $275</span>
                                                    <span>Qty: 01</span>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                                </div>
                                            </li>
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h3><a href="#">Demonissi Gori</a></h3>
                                                    <span>Price: $275</span>
                                                    <span class="qty">Qty: 01</span>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                                </div>
                                            </li>
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-3.jpg"></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h3><a href="#">Demonissi Gori</a></h3>
                                                    <span>Price: $275</span>
                                                    <span class="qty">Qty: 01</span>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="shopping-cart-total">
                                            <h4>total: <span>$550.00</span></h4>
                                        </div>
                                        <div class="shopping-cart-btn">
                                            <a class="btn-style cr-btn" href="#">checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mobile-menu-area col-12">
                                <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
                                            <li><a href="index.html">HOME</a></li>
                                            <li><a href="#">pages</a>
                                                <ul>
                                                    <li><a href="about-us.html">about us</a></li>
                                                    <li><a href="cart.html">cart page</a></li>
                                                    <li><a href="checkout.html">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="login-register.html">login</a></li>
                                                    <li><a href="contact.html">contact</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">shop</a>
                                                <ul>
                                                    <li><a href="shop.html">shop</a></li>
                                                    <li><a href="product-details.html">product details</a></li>
                                                    <li><a href="checkout.html">checkout</a></li>
                                                    <li><a href="wishlist.html">wishlist</a></li>
                                                    <li><a href="cart.html">cart</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">BLOG</a>
                                                <ul>
                                                    <li><a href="blog.html">blog page</a></li>
                                                    <li><a href="blog-details.html">blog details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html"> Contact us</a></li>
                                        </ul>
                                    </nav>							
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-cart-wrapper">
                        <div class="header-cart">
                            <button class="icon-cart">
                                <i class="ti-shopping-cart"></i>
                                <span class="count-style">02</span>
                                <span class="count-price-add">$295.95</span>
                            </button>
                            <div class="shopping-cart-content">
                                <ul>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h3><a href="#">Gloriori GSX 250 R </a></h3>
                                            <span>Price: $275</span>
                                            <span>Qty: 01</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h3><a href="#">Demonissi Gori</a></h3>
                                            <span>Price: $275</span>
                                            <span class="qty">Qty: 01</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-shopping-cart">
                                        <div class="shopping-cart-img">
                                            <a href="#"><img alt="" src="assets/img/cart/cart-3.jpg"></a>
                                        </div>
                                        <div class="shopping-cart-title">
                                            <h3><a href="#">Demonissi Gori</a></h3>
                                            <span>Price: $275</span>
                                            <span class="qty">Qty: 01</span>
                                        </div>
                                        <div class="shopping-cart-delete">
                                            <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="shopping-cart-total">
                                    <h4>total: <span>$550.00</span></h4>
                                </div>
                                <div class="shopping-cart-btn">
                                    <a class="btn-style cr-btn" href="#">checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(assets/img/banner/banner-4.jpg)">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <h2>Trang giỏ hàng</h2>
                        <ul>
                            <li>
                                <a href="Trangchu.jsp">Trang chủ</a>
                            </li>
                            <li>Giỏ hàng</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="product-cart-area pt-120 pb-130">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="table-content table-responsive">
                                <c:set var="shop" value="${sessionScope.SHOP}"/>
                                <c:if test="${not empty shop}">
                                    <form>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th class="product-name">Ảnh</th>
                                                <th class="product-price">Tên sản phẩm</th>
                                                <th class="product-name">Giá</th>
                                                <th class="product-price">Số lượng</th>
                                                <th class="product-quantity">Tổng tiền</th>
                                                <th class="product-subtotal">Lựa chọn</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                       
                                            <c:set var="count" value="0"/>
                                            <c:forEach var="rows" items="${shop}">
                                                <c:set var="count" value="${count + 1}" />
                                                <tr>
                                                    <td>${count}</td>
                                                    <td class="product-thumbnail">
                                                        <a href="#"><img src="assets/img/cart/4.jpg" alt=""></a>
                                                    </td>
                                                    <td class="product-name">
                                                        ${rows.value.sanpham.name}
                                                    </td>
                                                    <td class="product-price"><span class="amount">${rows.value.sanpham.price}</span></td>
                                                    <td class="product-quantity">
                                                        <!--                                                        <div class="quantity-range">
                                                                                                                    <input class="input-text qty text" type="number" step="1" min="0" value="1" title="Qty" size="4">
                                                                                                                </div>-->
                                                        ${rows.value.quantity}
                                                    </td>
                                                    <td class="product-subtotal">${rows.value.quantity * rows.value.sanpham.price}</td>
                                                    <td><input type="checkbox" name="rmv"  value="${rows.value.sanpham.code}"/></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="cart-shiping-update">
                                <div class="cart-shipping">
                                    <a class="btn-style cr-btn" href="Trangchu.jsp">
                                        <span>Mua thêm</span>
                                    </a>
                                </div>
                                <div class="update-checkout-cart">
                                    <div class="update-cart">
<!--                                        <button class="btn-style cr-btn"><span>Xóa</span></button>-->
                                        <input type="submit" value="Remove" name="btnAction" class="btn-style cr-btn"/>
                                    </div>
                                    <div class="update-cart">
<!--                                        <a class="btn-style cr-btn" href="#">
                                            <span>Thanh toán</span>
                                        </a>-->
                                        <input class="btn-style cr-btn" type="submit" value="Thanh Toan" onclick="thongbao()" name="btnAction"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>          
                    </form>
                </div>
            </div>  
            <footer>
                <div class="footer-top pt-210 pb-98 theme-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="footer-widget mb-30">
                                    <div class="footer-logo">
                                        <a href="index.html">
                                            <img src="assets/img/logo/2.png" alt="">
                                        </a>
                                    </div>
                                    <div class="footer-about">
                                        <p><span>OSWAN</span> the most latgest bike store in the wold can serve you latest ulity of motorcycle soucan sell here your motorcycle it quo </p>
                                        <div class="footer-support">
                                            <h5>FOR SUPPORT</h5>
                                            <span> 01245 658 698 (Toll Free)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="footer-widget mb-30 pl-60">
                                    <div class="footer-widget-title">
                                        <h3>QUICK LINK</h3>
                                    </div>
                                    <div class="quick-links">
                                        <ul>
                                            <li><a href="about-us.html">About us</a></li>
                                            <li><a href="#">Service</a></li>
                                            <li><a href="#">Inventory</a></li>
                                            <li><a href="shop.html">Shop</a></li>
                                            <li><a href="blog-sidebar.html">Blog</a></li>
                                            <li><a href="#">Conditions</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="footer-widget mb-30">
                                    <div class="footer-widget-title">
                                        <h3>LATEST TWEET</h3>
                                    </div>
                                    <div class="food-widget-content pr-30">
                                        <div class="single-tweet">
                                            <p><a href="#">@Smith,</a> the most latgest bike store in the wold can serve you 
                                                10 min ago</p>
                                        </div>
                                        <div class="single-tweet">
                                            <p><a href="#">@Smith,</a> the most latgest bike store in the wold can serve you 
                                                10 min ago</p>
                                        </div>
                                        <div class="single-tweet">
                                            <p><a href="#">@Smith,</a> the most latgest bike store in the wold can serve you 
                                                10 min ago</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="footer-widget mb-30">
                                    <div class="footer-widget-title">
                                        <h3>CONTACT INFO</h3>
                                    </div>
                                    <div class="food-info-wrapper">
                                        <div class="food-address">
                                            <div class="food-info-title">
                                                <span>Address</span>
                                            </div>
                                            <div class="food-info-content">
                                                <p>276 Jhilli Nogor, 4th folor, Momen Tower, Main Town, New Yourk</p>
                                            </div>
                                        </div>
                                        <div class="food-address">
                                            <div class="food-info-title">
                                                <span>Phone</span>
                                            </div>
                                            <div class="food-info-content">
                                                <p>+090 12568 369 987</p>
                                                <p>+090 12568 369 987</p>
                                            </div>
                                        </div>
                                        <div class="food-address">
                                            <div class="food-info-title">
                                                <span>Web</span>
                                            </div>
                                            <div class="food-info-content">
                                                <a href="#">info@oswanmega.com</a>
                                                <a href="#">www.oswanmega.com</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom ptb-35 black-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-12">
                                <div class="copyright">
                                    <p>©Copyright, 2018 All Rights Reserved by <a href="https://freethemescloud.com/">Free themes Cloud</a></p>
                                </div>
                            </div>
                            <div class="col-md-4 col-12">
                                <div class="footer-payment-method">
                                    <a href="#"><img alt="" src="assets/img/icon-img/payment.png"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
            <script src="assets/js/popper.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/isotope.pkgd.min.js"></script>
            <script src="assets/js/imagesloaded.pkgd.min.js"></script>
            <script src="assets/js/jquery.counterup.min.js"></script>
            <script src="assets/js/waypoints.min.js"></script>

            <script src="assets/js/owl.carousel.min.js"></script>
            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/main.js"></script>
    </body>
</html>