<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
<%@page import="model.Products"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang chủ</title>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/chosen.min.css">
        <link rel="stylesheet" href="assets/css/icofont.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
     
        <style>
            .product-area pb-190{
                padding-top: 100px;
            }
            .grid-list-product-wrapper{
                width: 1920px !important;
            }
            .action-plus-2{
                height: 38px;
            }
            .action-plus-2:hover{
                cursor: pointer;
                height: 38px;
                background-color: #ffc107;
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
                                    <a href="Trangchu.jsp"><img alt="" src="assets/img/logo/logo.png" width="100px" height="35px"></a>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-8 col-8">
                                <div class="header-contact-menu-wrapper pl-45">
                                    <div class="header-contact">
                                        <p>Tổng đài chăm sóc khách hàng 1900 0091</p>
                                        <h3>Xin Chào ${sessionScope.USER} <i class="icon-user"></i></h3>
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
                                                    <li><a href="#" style="display: ${sessionScope.lg1}">Quản lý</a>
                                                        <ul>
                                                            <li><a href="Thanhvien.jsp">Quản lý người dùng</a></li>
                                                            <li><a href="SanPham.jsp">Quản lý sản phẩm</a></li>                                                           
                                                        </ul>
                                                    </li>
                                                    <li><a href="Controller?btnAction=Giohang">Giỏ hàng</a></li>
                                                    <li><a href="Trangchu_1.jsp">Đăng xuất</a></li>
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
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg" width="80px" height="80px"></a>
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
                                             <li><a href="Trangchu.jsp">Trang chủ</a></li>
                                            <li class="active"><a href="#">Giới thiệu</a></li>
                                            <li><a href="#" style="display: ${sessionScope.lg1}">Quản lý</a>
                                                <ul>
                                                    <li><a href="Thanhvien.jsp">Quản lý người dùng</a></li>
                                                    <li><a href="SanPham.jsp">Quản lý sản phẩm</a></li>                                                           
                                                </ul>
                                            </li>
                                            <li><a href="Controller?btnAction=Giohang">Giỏ hàng</a></li>
                                            <li><a href="Trangchu_1.jsp">Đăng xuất</a></li>
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
                                <c:set var="shop" value="${sessionScope.SHOP}"/>
                                <c:if test="${not empty shop}">   
                                   
                                    <ul>       
                                         
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg" width="80px" height="80px"></a>
                                                </div>
                                                <div class="shopping-cart-title">
                                                    <h3><a href="#">${rows.value.sanpham.name}</a></h3>
                                                    <span>Price: $275</span>
                                                    <span>Qty: 01</span>
                                                </div>
                                                <div class="shopping-cart-delete">
                                                    <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                                </div>
                                            </li>     
                                            
                                    </ul>
                                    
                                </c:if>
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
            <div class="slider-area">
                <div class="slider-active owl-carousel">
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/bike.png" alt="slider images"  width="750px"  height="550px"  >
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">XẾ ĐẸP HÀNG ĐẦU THẾ GIỚI</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                  <h2 class="animated" style="margin-bottom: 10px;">LUXURY CAR</h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/bike-2.png" alt="slider images" width="750px"  height="550px">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">XẾ ĐẸP HÀNG ĐẦU THẾ GIỚI</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                  <h2 class="animated" style="margin-bottom: 10px;">SANG TRỌNG</h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/bike-1.png" alt="slider images" width="750px"  height="550px">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">XẾ ĐẸP HÀNG ĐẦU THẾ GIỚI</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                  <h2 class="animated" style="margin-bottom: 10px;">LUXURY CAR</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-social">
                    <ul>
                        <li class="facebook"><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                        <li class="twitter"><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                        <li class="pinterest"><a href="#"><i class="icofont icofont-social-pinterest"></i></a></li>
                    </ul>
                </div>
                <div class="language-currency-wrapper">
                    <div class="language-currency">
                        <div class="language">
                            <select class="select-header orderby">
                                <option value="">ENG</option>
                                <option value="">BANGLA </option>
                                <option value="">HINDI</option>
                            </select>
                        </div>
                        <div class="currency">
                            <select class="select-header orderby">
                                <option value="">$USD</option>
                                <option value="">US </option>
                                <option value="">EURO</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        <div class="shop-wrapper fluid-padding-2 pt-120 pb-150">
            <div class="container-fluid">
                <div class="row">

                    <div class="shop-topbar-wrapper">
                        <div class="grid-list-options">
                            <ul class="view-mode">
                                <li class="active"><a href="#product-grid" data-view="product-grid"><i class="ti-layout-grid2"></i></a></li>
                                <li><a href="#product-list" data-view="product-list"><i class="ti-view-list"></i></a></li>
                            </ul>
                        </div>
                        <div class="product-sorting">                                   
                            <div class="sidebar-search">
                                <form action="#">
                                    <input type="text" placeholder="Search Products...">
                                    <button><i class="ti-search"></i></button>
                                </form>
                            </div>                               
                        </div>
                    </div>
                    <div class="grid-list-product-wrapper tab-content">
                        <div id="new-product" class="product-grid product-view tab-pane active">
                            <div class="row">
                                <%
                                    Products listSP = new Products();
                                    List<Product> list = listSP.showProduct("");
                                    for (Product sp : list) {%>
                                                         
                                <div class="product-width col-md-6 col-xl-4 col-lg-6">
                                    <div class="product-wrapper mb-35">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-1.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>270 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <form action="Controller">
                                                    <!--                                                    <a class="action-plus-2 p-action-none" title="Add To Cart" href="#">-->
                                                    <input class="action-plus-2 p-action-none" type="submit" name="btnAction" value="Add to Cart">
                                                    <!--</a>-->
                                                    <input type="hidden" name="txtCode" value="<%=sp.getCode()%>">
                                                    <input type="hidden" name="txtName" value="<%=sp.getName()%>">
                                                    <input type="hidden" name="txtPrice" value="<%=sp.getPrice()%>">
                                                </form>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-toggle="modal" data-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html"><%=sp.getName()%></a></h4>
                                                    <span><%=sp.getCode()%></span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$<%=sp.getPrice()%></span>
                                                </div>
                                            </div>
                                        </div>                                                   
                                        <div class="product-list-details">
                                            <h2><a href="product-details.html"><%=sp.getName()%></a></h2>
                                            <div class="quick-view-rating">
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                                <i class="fa fa-star reting-color"></i>
                                            </div>
                                            <div class="product-price">
                                                <span>$<%=sp.getPrice()%></span>
                                            </div>
                                            <p>ipsum dolor sit amet, consectetur adipic it, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo it. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                            <div class="shop-list-cart">
                                                <form action="Controller">
                                                    <input class="action-plus-2 p-action-none" type="submit" name="btnAction" value="Add to Cart">
                                                    <!--</a>-->
                                                    <input type="hidden" name="txtCode" value="<%=sp.getCode()%>">
                                                    <input type="hidden" name="txtName" value="<%=sp.getName()%>">
                                                    <input type="hidden" name="txtPrice" value="<%=sp.getPrice()%>">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <%}
                                %>                                
                            </div>
                        </div>
                    </div>
                    <div class="paginations text-center mt-20">
                        <ul>
                            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li class="active"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!-- modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span class="icofont icofont-close" aria-hidden="true"></span>
            </button>
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="qwick-view-left">
                            <div class="quick-view-learg-img">
                                <div class="quick-view-tab-content tab-content">
                                    <div class="tab-pane active show fade" id="modal1" role="tabpanel">
                                        <img src="assets/img/quick-view/l1.jpg" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="modal2" role="tabpanel">
                                        <img src="assets/img/quick-view/l2.jpg" alt="">
                                    </div>
                                    <div class="tab-pane fade" id="modal3" role="tabpanel">
                                        <img src="assets/img/quick-view/l3.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="quick-view-list nav" role="tablist">
                                <a class="active" href="#modal1" data-toggle="tab" role="tab">
                                    <img src="assets/img/quick-view/s1.jpg" alt="">
                                </a>
                                <a href="#modal2" data-toggle="tab" role="tab">
                                    <img src="assets/img/quick-view/s2.jpg" alt="">
                                </a>
                                <a href="#modal3" data-toggle="tab" role="tab">
                                    <img src="assets/img/quick-view/s3.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="qwick-view-right">
                            <div class="qwick-view-content">
                                <h3>Aeri Carbon Helmet</h3>
                                <div class="price">
                                    <span class="new">$90.00</span>
                                    <span class="old">$120.00  </span>
                                </div>
                                <div class="rating-number">
                                    <div class="quick-view-rating">
                                        <i class="fa fa-star reting-color"></i>
                                        <i class="fa fa-star reting-color"></i>
                                        <i class="fa fa-star reting-color"></i>
                                        <i class="fa fa-star reting-color"></i>
                                        <i class="fa fa-star reting-color"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation .</p>
                                <div class="quick-view-select">
                                    <div class="select-option-part">
                                        <label>Size*</label>
                                        <select class="select">
                                            <option value="">- Please Select -</option>
                                            <option value="">900</option>
                                            <option value="">700</option>
                                        </select>
                                    </div>
                                    <div class="select-option-part">
                                        <label>Color*</label>
                                        <select class="select">
                                            <option value="">- Please Select -</option>
                                            <option value="">orange</option>
                                            <option value="">pink</option>
                                            <option value="">yellow</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="quickview-plus-minus">
                                    <div class="cart-plus-minus">
                                        <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                                    </div>
                                    <div class="quickview-btn-cart">
                                        <a class="btn-style" href="#">add to cart</a>
                                    </div>
                                    <div class="quickview-btn-wishlist">
                                        <a class="btn-hover" href="#"><i class="icofont icofont-heart-alt"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
             <footer>
                <div class="footer-top pt-210 pb-98 theme-bg">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-12">
                                <div class="footer-widget mb-30">
                                    <div class="footer-logo">
                                        <a href="Trangchu.jsp">
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
                                    <p>©Copyright, 2018 All Rights Reserved by <a href="https://freethemescloud.com/">HuynhThang-AnhDuc</a></p>
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
        <!-- all js here -->
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