<%-- 
    Document   : Thanhvien
    Created on : Sep 26, 2019, 6:43:54 PM
    Author     : msi
--%>

<%@page import="model.Load"%>
<%@page import="java.util.List"%>
<%@page import="model.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
        <script>
            function myFunction() {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
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
    </head>
    <body style="background: #f5f5f5">
    <center>
        <div style="width: 1070px" >
            <form action="Controller" method="post"  algin="center">
                <header class="w3-row">
                    <div class="w3-col w3-orange" style="width: 200px; height: 70px; float: left"><button class="w3-button w3-round w3-white" value="Trangchu" name="btnAction" style="margin-top: 18px; margin-left: 30px;"><a href="Controller?btnAction=Trangchu" style="text-decoration: none">Trang chủ</a></button></div>

                    <div class="w3-col w3-orange" style="width: 870px; height: 70px; ">
                        <div style="padding-top: 18px;float: right">
                            <font color="white">XIN CHÀO  ${sessionScope.USER}</font>
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
                    <form action="Controller">
                        <h2 style="margin: 0px auto">Quản lý thành viên</h2>
                        <table id="myTable" class="w3-table w3-striped w3-bordered w3-border" border="0" style=" margin: 0 auto">
                            <thead class="w3-orange">
                                <tr>
                                    <th>Tên thành viên</th>
                                    <th>Chức vụ</th>
                                    <th>Tên đăng nhập</th>
                                    <th>Số điện thoại</th>
                                    <th>Sửa đổi thông tin</th>
                                    <th>Lựa Chọn</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    LoginBean login = new LoginBean();
                                    List<Load> list = login.LoadData();
                                    for (Load ld : list) {
                                        out.print("<form action=\"Controller\">");
                                        out.print("<tr>"
                                                + "<td>" + ld.getName() + "</td>"
                                                + "<td>" + ld.getUsername() + "</td>"
                                                + "<td>" + ld.getSdt() + "</td>"
                                                + "<td>" + ld.getChucvu() + "</td>"
                                                + "<td>"
                                                + "<input class=\"w3-btn w3-indigo\" type=\"button\" value=\"Edit\" name=\"btnAction\""
                                                + " onClick=\"document.getElementById('id01').style.display = 'block'\">"
                                                + "</td>"
                                                + "<td><input class=\"w3-button w3-round w3-red\" type=\"submit\""
                                                + "value=\"X\" name=\"btnAction\" onClick=\"alert('Bạn xoa thành viên thành công')\" /></td>"
                                                + "<input type=\"hidden\" name=\"txtUser\" value='" + ld.getUsername() + "'>"
                                                + "</tr>");
                                        out.print("</form>");

                                    }
                                %>


                            </tbody>
                        </table>
                        <br>
                        <div style=" margin: 0 auto">
                            <button class="w3-btn w3-orange"><a href="NewLogin.jsp" style="text-decoration: none">Thêm thành viên</a></button>
                        </div>




                        <div id="id01" class="w3-modal">
                            <div class="w3-modal-content">
                                <div class="w3-container">
                                    <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
                                    <div style="margin-bottom: 20px;">
                                        <form action="Controller">
                                            <h2>Editer</h2>
                                            <div class="w3-row">
                                                <div class="w3-half">
                                                    <div>
                                                        <label>Tên thành viên</label>
                                                        <input class="control w3-input w3-border w3-light-grey" name="txt2Name" >
                                                    </div>
                                                    <br>
                                                    <div>
                                                        <label>Tên đăng nhập</label>
                                                        <input class="control w3-input w3-border w3-light-grey" name="txt2User" >
                                                    </div>
                                                    <br>
                                                    <div>
                                                        <label>Mật khẩu</label>
                                                        <input class="control w3-input w3-border w3-light-grey" name="txt2Pass" >
                                                    </div>
                                                    <br>
                                                    <div>
                                                        <label>Số điện thoại</label>
                                                        <input class="control w3-input w3-border w3-light-grey" name="txt2Sdt" >
                                                    </div>
                                                    <br>
                                                    <div>
                                                        <label>Chức vụ</label>
                                                        <select style="width: 84%;" name="cbo2Quyen" >
                                                            <option disabled>---Chọn Quyền---</option>
                                                            <option value="nv">Nhân viên</option>
                                                            <option value="lon">Quản lý</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="w3-half">
                                                    <input type="submit" class="w3-btn w3-orange" value="Update" style="width: 300px; margin: 20px 0 20px 70px"  name="btnAction"><br>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </form>

                </article>
            </form>   

        </div>
    </center>
</body>
</html>