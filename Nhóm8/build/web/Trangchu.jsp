<%-- 
    Document   : Trangchu
    Created on : Sep 26, 2019, 4:12:21 PM
    Author     : msi
--%>

<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.Products"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        </style>
    </head>
    <body style="background: #f5f5f5">
    <center>
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
                        <%
                            Products listSP = new Products();
                            List<Product> list = listSP.showProduct("");
                            for (Product sp : list) {
                                out.print("<form action=\"Controller\">");
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

                                out.print("</form>");
                            }
                        %>
                    </table>

                </article>
            </form>    
            <form action="Controller">
                <input class="w3-button w3-round w3-pink" type="submit" value="View Cart" name="btnAction">
            </form>
        </div>
    </center>
</body>
</html>