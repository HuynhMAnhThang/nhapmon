package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Product;
import java.util.List;
import model.Products;
import model.Products;

public final class showcart_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\r\n");
      out.write("        <title>Giỏ hàng</title>\r\n");
      out.write("        <meta name=\"description\" content=\"Live Preview Of Oswan eCommerce HTML5 Template\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- Favicon -->\r\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicon.png\">\r\n");
      out.write("\r\n");
      out.write("        <!-- all css here -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animate.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/chosen.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/meanmenu.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/themify-icons.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/icofont.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bundle.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/responsive.css\">\r\n");
      out.write("        <script src=\"assets/js/vendor/modernizr-2.8.3.min.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            function tinhtien() {\r\n");
      out.write("                var tong = 0;\r\n");
      out.write("                var hang = document.getElementsByTagName('tr');\r\n");
      out.write("                for (var i = 1; i < hang.length - 1; i++) {\r\n");
      out.write("                    var o = hang[i].getElementsByTagName('td');\r\n");
      out.write("                    var gia = o[3].innerHTML;\r\n");
      out.write("                    var sl = o[4].innerHTML;\r\n");
      out.write("                    var thanhtien = gia * sl;\r\n");
      out.write("                    o[5].innerHTML = thanhtien;\r\n");
      out.write("                    tong = tong + thanhtien;\r\n");
      out.write("                }\r\n");
      out.write("                document.getElementById('tongtien').innerHTML = tong\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("            function thongbao() {\r\n");
      out.write("                alert(\"Quý Khách Đăng nhập Để Mua Hàng.! \");\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            function myFunction() {\r\n");
      out.write("                var input, filter, table, tr, td, i, txtValue;\r\n");
      out.write("                input = document.getElementById(\"myInput\");\r\n");
      out.write("                filter = input.value.toUpperCase();\r\n");
      out.write("                table = document.getElementById(\"myTable\");\r\n");
      out.write("                tr = table.getElementsByTagName(\"tr\");\r\n");
      out.write("                for (i = 0; i < tr.length; i++) {\r\n");
      out.write("                    td = tr[i].getElementsByTagName(\"td\")[2];\r\n");
      out.write("                    if (td) {\r\n");
      out.write("                        txtValue = td.textContent || td.innerText;\r\n");
      out.write("                        if (txtValue.toUpperCase().indexOf(filter) > -1) {\r\n");
      out.write("                            tr[i].style.display = \"\";\r\n");
      out.write("                        } else {\r\n");
      out.write("                            tr[i].style.display = \"none\";\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"wrapper\">\r\n");
      out.write("            <header>\r\n");
      out.write("                <div class=\"header-area transparent-bar ptb-55\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-lg-4 col-md-4 col-4\">\r\n");
      out.write("                                <div class=\"logo-small-device\">\r\n");
      out.write("                                    <a href=\"index.html\"><img alt=\"\" src=\"assets/img/logo/logo.png\"></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-8 col-md-8 col-8\">\r\n");
      out.write("                                <div class=\"header-contact-menu-wrapper pl-45\">\r\n");
      out.write("                                    <div class=\"header-contact\">\r\n");
      out.write("                                        <p>Tổng đài chăm sóc khách hàng 1900 0091</p>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"menu-wrapper text-center\">\r\n");
      out.write("                                        <button class=\"menu-toggle\">\r\n");
      out.write("                                            <img class=\"s-open\" alt=\"\" src=\"assets/img/icon-img/menu.png\">\r\n");
      out.write("                                            <img class=\"s-close\" alt=\"\" src=\"assets/img/icon-img/menu-close.png\">\r\n");
      out.write("                                        </button>\r\n");
      out.write("                                        <div class=\"main-menu\">\r\n");
      out.write("                                            <nav>\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"Trangchu_1.jsp\">Trang chủ</a></li>\r\n");
      out.write("                                                    <li><a href=\"Login.jsp\">Đăng nhập</a></li>\r\n");
      out.write("                                                    <li class=\"active\"><a href=\"NewLogin_1.jsp\">Đăng ký</a></li>\r\n");
      out.write("                                                    <li><a href=\"Controller?btnAction=Giohang\">Giỏ hàng</a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </nav>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"header-cart cart-small-device\">\r\n");
      out.write("                                    <button class=\"icon-cart\">\r\n");
      out.write("                                        <i class=\"ti-shopping-cart\"></i>\r\n");
      out.write("                                        <span class=\"count-style\">02</span>\r\n");
      out.write("                                        <span class=\"count-price-add\">$295.95</span>\r\n");
      out.write("                                    </button>\r\n");
      out.write("                                    <div class=\"shopping-cart-content\">\r\n");
      out.write("                                        <ul>\r\n");
      out.write("                                            <li class=\"single-shopping-cart\">\r\n");
      out.write("                                                <div class=\"shopping-cart-img\">\r\n");
      out.write("                                                    <a href=\"#\"><img alt=\"\" src=\"assets/img/cart/cart-1.jpg\"></a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"shopping-cart-title\">\r\n");
      out.write("                                                    <h3><a href=\"#\">Gloriori GSX 250 R </a></h3>\r\n");
      out.write("                                                    <span>Price: $275</span>\r\n");
      out.write("                                                    <span>Qty: 01</span>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"shopping-cart-delete\">\r\n");
      out.write("                                                    <a href=\"#\"><i class=\"icofont icofont-ui-delete\"></i></a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li class=\"single-shopping-cart\">\r\n");
      out.write("                                                <div class=\"shopping-cart-img\">\r\n");
      out.write("                                                    <a href=\"#\"><img alt=\"\" src=\"assets/img/cart/cart-2.jpg\"></a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"shopping-cart-title\">\r\n");
      out.write("                                                    <h3><a href=\"#\">Demonissi Gori</a></h3>\r\n");
      out.write("                                                    <span>Price: $275</span>\r\n");
      out.write("                                                    <span class=\"qty\">Qty: 01</span>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"shopping-cart-delete\">\r\n");
      out.write("                                                    <a href=\"#\"><i class=\"icofont icofont-ui-delete\"></i></a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li class=\"single-shopping-cart\">\r\n");
      out.write("                                                <div class=\"shopping-cart-img\">\r\n");
      out.write("                                                    <a href=\"#\"><img alt=\"\" src=\"assets/img/cart/cart-3.jpg\"></a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"shopping-cart-title\">\r\n");
      out.write("                                                    <h3><a href=\"#\">Demonissi Gori</a></h3>\r\n");
      out.write("                                                    <span>Price: $275</span>\r\n");
      out.write("                                                    <span class=\"qty\">Qty: 01</span>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"shopping-cart-delete\">\r\n");
      out.write("                                                    <a href=\"#\"><i class=\"icofont icofont-ui-delete\"></i></a>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                        <div class=\"shopping-cart-total\">\r\n");
      out.write("                                            <h4>total: <span>$550.00</span></h4>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-btn\">\r\n");
      out.write("                                            <a class=\"btn-style cr-btn\" href=\"#\">checkout</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"mobile-menu-area col-12\">\r\n");
      out.write("                                <div class=\"mobile-menu\">\r\n");
      out.write("                                    <nav id=\"mobile-menu-active\">\r\n");
      out.write("                                        <ul class=\"menu-overflow\">\r\n");
      out.write("                                            <li><a href=\"index.html\">HOME</a></li>\r\n");
      out.write("                                            <li><a href=\"#\">pages</a>\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"about-us.html\">about us</a></li>\r\n");
      out.write("                                                    <li><a href=\"cart.html\">cart page</a></li>\r\n");
      out.write("                                                    <li><a href=\"checkout.html\">checkout</a></li>\r\n");
      out.write("                                                    <li><a href=\"wishlist.html\">wishlist</a></li>\r\n");
      out.write("                                                    <li><a href=\"login-register.html\">login</a></li>\r\n");
      out.write("                                                    <li><a href=\"contact.html\">contact</a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li><a href=\"#\">shop</a>\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"shop.html\">shop</a></li>\r\n");
      out.write("                                                    <li><a href=\"product-details.html\">product details</a></li>\r\n");
      out.write("                                                    <li><a href=\"checkout.html\">checkout</a></li>\r\n");
      out.write("                                                    <li><a href=\"wishlist.html\">wishlist</a></li>\r\n");
      out.write("                                                    <li><a href=\"cart.html\">cart</a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li><a href=\"#\">BLOG</a>\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"blog.html\">blog page</a></li>\r\n");
      out.write("                                                    <li><a href=\"blog-details.html\">blog details</a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li><a href=\"contact.html\"> Contact us</a></li>\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </nav>\t\t\t\t\t\t\t\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"header-cart-wrapper\">\r\n");
      out.write("                        <div class=\"header-cart\">\r\n");
      out.write("                            <button class=\"icon-cart\">\r\n");
      out.write("                                <i class=\"ti-shopping-cart\"></i>\r\n");
      out.write("                                <span class=\"count-style\">02</span>\r\n");
      out.write("                                <span class=\"count-price-add\">$295.95</span>\r\n");
      out.write("                            </button>\r\n");
      out.write("                            <div class=\"shopping-cart-content\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li class=\"single-shopping-cart\">\r\n");
      out.write("                                        <div class=\"shopping-cart-img\">\r\n");
      out.write("                                            <a href=\"#\"><img alt=\"\" src=\"assets/img/cart/cart-1.jpg\"></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-title\">\r\n");
      out.write("                                            <h3><a href=\"#\">Gloriori GSX 250 R </a></h3>\r\n");
      out.write("                                            <span>Price: $275</span>\r\n");
      out.write("                                            <span>Qty: 01</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-delete\">\r\n");
      out.write("                                            <a href=\"#\"><i class=\"icofont icofont-ui-delete\"></i></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"single-shopping-cart\">\r\n");
      out.write("                                        <div class=\"shopping-cart-img\">\r\n");
      out.write("                                            <a href=\"#\"><img alt=\"\" src=\"assets/img/cart/cart-2.jpg\"></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-title\">\r\n");
      out.write("                                            <h3><a href=\"#\">Demonissi Gori</a></h3>\r\n");
      out.write("                                            <span>Price: $275</span>\r\n");
      out.write("                                            <span class=\"qty\">Qty: 01</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-delete\">\r\n");
      out.write("                                            <a href=\"#\"><i class=\"icofont icofont-ui-delete\"></i></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"single-shopping-cart\">\r\n");
      out.write("                                        <div class=\"shopping-cart-img\">\r\n");
      out.write("                                            <a href=\"#\"><img alt=\"\" src=\"assets/img/cart/cart-3.jpg\"></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-title\">\r\n");
      out.write("                                            <h3><a href=\"#\">Demonissi Gori</a></h3>\r\n");
      out.write("                                            <span>Price: $275</span>\r\n");
      out.write("                                            <span class=\"qty\">Qty: 01</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"shopping-cart-delete\">\r\n");
      out.write("                                            <a href=\"#\"><i class=\"icofont icofont-ui-delete\"></i></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                                <div class=\"shopping-cart-total\">\r\n");
      out.write("                                    <h4>total: <span>$550.00</span></h4>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"shopping-cart-btn\">\r\n");
      out.write("                                    <a class=\"btn-style cr-btn\" href=\"#\">checkout</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </header>\r\n");
      out.write("            <div class=\"breadcrumb-area pt-255 pb-170\" style=\"background-image: url(assets/img/banner/banner-4.jpg)\">\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("                    <div class=\"breadcrumb-content text-center\">\r\n");
      out.write("                        <h2>Trang giỏ hàng</h2>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"Trangchu.jsp\">Trang chủ</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>Giỏ hàng</li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"product-cart-area pt-120 pb-130\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\r\n");
      out.write("                            <div class=\"table-content table-responsive\">\r\n");
      out.write("                                ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <div class=\"cart-shiping-update\">\r\n");
      out.write("                                <div class=\"cart-shipping\">\r\n");
      out.write("                                    <a class=\"btn-style cr-btn\" href=\"Trangchu.jsp\">\r\n");
      out.write("                                        <span>Mua thêm</span>\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"update-checkout-cart\">\r\n");
      out.write("                                    <div class=\"update-cart\">\r\n");
      out.write("                                        <!--                                        <button class=\"btn-style cr-btn\"><span>Xóa</span></button>-->\r\n");
      out.write("                                        <input type=\"submit\" value=\"XOA\" name=\"btnAction\" class=\"btn-style cr-btn\"/>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"update-cart\">\r\n");
      out.write("                                        <!--                                        <a class=\"btn-style cr-btn\" href=\"#\">\r\n");
      out.write("                                                                                    <span>Thanh toán</span>\r\n");
      out.write("                                                                                </a>-->\r\n");
      out.write("                                        <input class=\"btn-style cr-btn\" type=\"submit\" value=\"Thanh Toan\" onclick=\"thongbao()\" name=\"btnAction\"/>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>          \r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>  \r\n");
      out.write("            <footer>\r\n");
      out.write("                <div class=\"footer-top pt-210 pb-98 theme-bg\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-lg-3 col-md-6 col-12\">\r\n");
      out.write("                                <div class=\"footer-widget mb-30\">\r\n");
      out.write("                                    <div class=\"footer-logo\">\r\n");
      out.write("                                        <a href=\"index.html\">\r\n");
      out.write("                                            <img src=\"assets/img/logo/2.png\" alt=\"\">\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"footer-about\">\r\n");
      out.write("                                        <p><span>OSWAN</span> the most latgest bike store in the wold can serve you latest ulity of motorcycle soucan sell here your motorcycle it quo </p>\r\n");
      out.write("                                        <div class=\"footer-support\">\r\n");
      out.write("                                            <h5>FOR SUPPORT</h5>\r\n");
      out.write("                                            <span> 01245 658 698 (Toll Free)</span>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-3 col-md-6 col-12\">\r\n");
      out.write("                                <div class=\"footer-widget mb-30 pl-60\">\r\n");
      out.write("                                    <div class=\"footer-widget-title\">\r\n");
      out.write("                                        <h3>QUICK LINK</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"quick-links\">\r\n");
      out.write("                                        <ul>\r\n");
      out.write("                                            <li><a href=\"about-us.html\">About us</a></li>\r\n");
      out.write("                                            <li><a href=\"#\">Service</a></li>\r\n");
      out.write("                                            <li><a href=\"#\">Inventory</a></li>\r\n");
      out.write("                                            <li><a href=\"shop.html\">Shop</a></li>\r\n");
      out.write("                                            <li><a href=\"blog-sidebar.html\">Blog</a></li>\r\n");
      out.write("                                            <li><a href=\"#\">Conditions</a></li>\r\n");
      out.write("                                            <li><a href=\"contact.html\">Contact</a></li>\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-3 col-md-6 col-12\">\r\n");
      out.write("                                <div class=\"footer-widget mb-30\">\r\n");
      out.write("                                    <div class=\"footer-widget-title\">\r\n");
      out.write("                                        <h3>LATEST TWEET</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"food-widget-content pr-30\">\r\n");
      out.write("                                        <div class=\"single-tweet\">\r\n");
      out.write("                                            <p><a href=\"#\">@Smith,</a> the most latgest bike store in the wold can serve you \r\n");
      out.write("                                                10 min ago</p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"single-tweet\">\r\n");
      out.write("                                            <p><a href=\"#\">@Smith,</a> the most latgest bike store in the wold can serve you \r\n");
      out.write("                                                10 min ago</p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"single-tweet\">\r\n");
      out.write("                                            <p><a href=\"#\">@Smith,</a> the most latgest bike store in the wold can serve you \r\n");
      out.write("                                                10 min ago</p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-3 col-md-6 col-12\">\r\n");
      out.write("                                <div class=\"footer-widget mb-30\">\r\n");
      out.write("                                    <div class=\"footer-widget-title\">\r\n");
      out.write("                                        <h3>CONTACT INFO</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"food-info-wrapper\">\r\n");
      out.write("                                        <div class=\"food-address\">\r\n");
      out.write("                                            <div class=\"food-info-title\">\r\n");
      out.write("                                                <span>Address</span>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"food-info-content\">\r\n");
      out.write("                                                <p>276 Jhilli Nogor, 4th folor, Momen Tower, Main Town, New Yourk</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"food-address\">\r\n");
      out.write("                                            <div class=\"food-info-title\">\r\n");
      out.write("                                                <span>Phone</span>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"food-info-content\">\r\n");
      out.write("                                                <p>+090 12568 369 987</p>\r\n");
      out.write("                                                <p>+090 12568 369 987</p>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"food-address\">\r\n");
      out.write("                                            <div class=\"food-info-title\">\r\n");
      out.write("                                                <span>Web</span>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"food-info-content\">\r\n");
      out.write("                                                <a href=\"#\">info@oswanmega.com</a>\r\n");
      out.write("                                                <a href=\"#\">www.oswanmega.com</a>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"footer-bottom ptb-35 black-bg\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-md-8 col-12\">\r\n");
      out.write("                                <div class=\"copyright\">\r\n");
      out.write("                                    <p>©Copyright, 2018 All Rights Reserved by <a href=\"https://freethemescloud.com/\">Free themes Cloud</a></p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-4 col-12\">\r\n");
      out.write("                                <div class=\"footer-payment-method\">\r\n");
      out.write("                                    <a href=\"#\"><img alt=\"\" src=\"assets/img/icon-img/payment.png\"></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </footer>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"assets/js/vendor/jquery-1.12.0.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/popper.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/isotope.pkgd.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/imagesloaded.pkgd.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/jquery.counterup.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/waypoints.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"assets/js/owl.carousel.min.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/plugins.js\"></script>\r\n");
      out.write("        <script src=\"assets/js/main.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("shop");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.SHOP}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty shop}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                    <form>\r\n");
        out.write("                                        <table>\r\n");
        out.write("                                            <thead>\r\n");
        out.write("                                                <tr>\r\n");
        out.write("                                                    <th>STT</th>\r\n");
        out.write("                                                    <th class=\"product-name\">Ảnh</th>\r\n");
        out.write("                                                    <th class=\"product-price\">Tên sản phẩm</th>\r\n");
        out.write("                                                    <th class=\"product-name\">Giá</th>\r\n");
        out.write("                                                    <th class=\"product-price\">Số lượng</th>\r\n");
        out.write("                                                    <th class=\"product-quantity\">Tổng tiền</th>\r\n");
        out.write("                                                    <th class=\"product-subtotal\">Lựa chọn</th>\r\n");
        out.write("                                                </tr>\r\n");
        out.write("                                            </thead>\r\n");
        out.write("                                            <tbody>                                       \r\n");
        out.write("                                                ");
        if (_jspx_meth_c_set_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_forEach_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                            </tbody>\r\n");
        out.write("                                        </table>\r\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_set_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_1.setVar("count");
    _jspx_th_c_set_1.setValue(new String("0"));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_forEach_0.setVar("rows");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${shop}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                    ");
          if (_jspx_meth_c_set_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\r\n");
          out.write("                                                    <tr>\r\n");
          out.write("                                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                        <td class=\"product-thumbnail\">\r\n");
          out.write("                                                            <a href=\"#\"><img src=\"assets/img/cart/4.jpg\" alt=\"\"></a>\r\n");
          out.write("                                                        </td>\r\n");
          out.write("                                                        <td class=\"product-name\">\r\n");
          out.write("                                                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.value.sanpham.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                                                        </td>\r\n");
          out.write("                                                        <td class=\"product-price\"><span class=\"amount\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.value.sanpham.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span></td>\r\n");
          out.write("                                                        <td class=\"product-quantity\">\r\n");
          out.write("                                                            <!--                                                        <div class=\"quantity-range\">\r\n");
          out.write("                                                                                                                        <input class=\"input-text qty text\" type=\"number\" step=\"1\" min=\"0\" value=\"1\" title=\"Qty\" size=\"4\">\r\n");
          out.write("                                                                                                                    </div>-->\r\n");
          out.write("                                                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.value.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                                                        </td>\r\n");
          out.write("                                                        <td class=\"product-subtotal\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.value.quantity * rows.value.sanpham.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                        <td><input type=\"checkbox\" name=\"rmv\"  value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rows.value.sanpham.code}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"/></td>\r\n");
          out.write("                                                    </tr>\r\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_set_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_2 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_2.setPageContext(_jspx_page_context);
    _jspx_th_c_set_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_2.setVar("count");
    _jspx_th_c_set_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count + 1}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_2 = _jspx_th_c_set_2.doStartTag();
    if (_jspx_th_c_set_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_2);
    return false;
  }
}
