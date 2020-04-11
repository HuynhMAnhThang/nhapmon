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
        <!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
                <script>
                    function myFunction() {
                        var input, filter, table, tr, td, i, txtValue;
                        input = document.getElementById("myInput");
                        filter = input.value.toUpperCase();
                        table = document.getElementById("myTable");
                        tr = table.getElementsByTagName("tr");
                        for (i = 0; i < tr.length; i++) {
                            td = tr[i].getElementsByTagName("td")[1];
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
                </style>-->
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
        <!--    <center>
                <div style="width: 1070px" >
                    <form action="Controller" method="post"  algin="center">
        
        
                        <div class="w3-col w3-orange" style="width: 1070px; height: 70px; ">
                            <div style="width: 200px;float: left; padding-top: 10px; ">
                                XIN CHÀO<br> ${sessionScope.USER}
                            </div>
                            <div style="padding-top: 18px;float: left;padding-right: 20px">
        
                                <button class="w3-button w3-round w3-white" value="Dangnhap" name="btnAction" style=" display: ${sessionScope.log}"><a href="Controller?btnAction=Dangnhap" style="text-decoration: none">Đăng nhập</a></button>
                                <button class="w3-button w3-round w3-white" value="Thanhvien" name="btnAction" style="display: ${sessionScope.lg1}"><a href="Controller?btnAction=Thanhvien" style="text-decoration: none">Thành viên</a></button>
                                <button class="w3-button w3-round w3-white" value="Giohang" name="btnAction" style="display: ${sessionScope.lg}"><a href="Controller?btnAction=Giohang" style="text-decoration: none">Giỏ Hàng</a></button>
                                <button class="w3-button w3-round w3-white" value="Sanpham" name="btnAction" style="display: ${sessionScope.lg1}"><a href="Controller?btnAction=Sanpham" style="text-decoration: none">Sản phẩm</a></button>
                                <button class="w3-button w3-round w3-white" value="Dangxuat" name="btnAction" style=" display: ${sessionScope.logout}"><a href="Controller?btnAction=Dangxuat" style="text-decoration: none">Đăng xuất</a></button>
        
                            </div>
                        </div>
                        </header>
                        <nav style="padding-top: 8px; padding-bottom: 8px; margin: 10px 0px; background-color: white;width: 1070px" class="bodi">
                            <div class="w3-row">
        
                                <div>
        
                                    <a href="Trangchu.jsp"><img style="float: left; margin-right: 10px; width: 70px; height: 50px" src="img/logo.jpg" ></a>
                                    <input  id="myInput" onkeyup="myFunction()" type="text" placeholder="Seach">
                                    <a href="showcart.jsp">
                                        <span class="fa fa-shopping-cart" style=" width: 38px; height: 38px; font-size: 22px;margin-right: 60px"></span>
                                    </a>
                                </div>
        
                            </div>
                        </nav>
                        <article >
                            <div style="font-size: 22px">
                                <center> <h1>DANH SÁCH SẢN PHẨM</h1></center>
                            </div>
                            <table id="myTable" class="w3-table w3-striped w3-bordered w3-border" border="0" style=" margin: 0 auto"  >
                                <thead class="w3-orange">
                                    <tr>
                                        <th>Mã Sản Phẩm</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Giá  </th>
                                        <th>Thêm giỏ hàng</th>
                                    </tr>
                                </thead>
    </table>

</article>
</form>    
<form action="Controller">
<input class="w3-button w3-round w3-pink" type="submit" value="View Cart" name="btnAction">
</form>
</div>
</center>-->
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
                                <c:set var="shop" value="${sessionScope.SHOP}"/>
                                <c:if test="${not empty shop}">   
                                   
                                    <ul>       
                                         
                                            <li class="single-shopping-cart">
                                                <div class="shopping-cart-img">
                                                    <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
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
                                    <img class="animated" src="assets/img/slider/bike-1.png" alt="slider images">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">BOOK YOUR BIKE INSTANTLY AND ENJOY DISCOUNT</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                <h2 class="animated">MOTORCYCLE</h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/bike-2.png" alt="slider images">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">BOOK YOUR BIKE INSTANTLY AND ENJOY DISCOUNT</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                <h2 class="animated">MOTORCYCLE</h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/bike-1.png" alt="slider images">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">BOOK YOUR BIKE INSTANTLY AND ENJOY DISCOUNT</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                <h2 class="animated">MOTORCYCLE</h2>
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
                                <!--                                out.print("<form action=\"Controller\">");
                                                                    out.print("<tr>"
                                                                        + "<td>" + sp.getCode() + "</td>"
                                                                        + "<td>" + sp.getName() + "</td>"
                                                                        + "<td>" + sp.getPrice() + "$" + "</td>"
                                                                        + "<td><input class=\"w3-button w3-round w3-red\" type=\"submit\""
                                                                                      + "value=\"Add to Cart\" name=\"btnAction\" /></td>"
                                                                        + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'>"
                                                                    + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'>"
                                                                    + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice()
                                                                              + "'></tr>");
                                
                                                                    out.print("</form>");-->                               
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