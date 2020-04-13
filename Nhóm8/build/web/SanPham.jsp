<!DOCTYPE html>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page import="model.Load"%>
<%@page import="java.util.List"%>
<%@page import="model.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý sản phẩm</title>
        <link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link type="text/css" href="css/theme.css" rel="stylesheet">
        <link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
        <script>
            function xoa() {
                alert('Đã Xóa Sản Phẩm Thành Công')
            }
        </script>
    </head>
    <body>
 <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                        <i class="icon-reorder shaded"></i>
                    </a>



                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li ><a href="#">
                                    <i class="icon-envelope"></i>
                                </a></li>
                            <li><a href="#">
                                    <i class="icon-eye-open"></i>
                                </a></li>
                            <li><a href="#">
                                    <i class="icon-bar-chart"></i>
                                </a></li>
                        </ul>

                        <form class="navbar-search pull-left input-append" action="#">
                            <input type="text" class="span3">
                            <button class="btn" type="button">
                                <i class="icon-search"></i>
                            </button>
                        </form>

                        <ul class="nav pull-right">

                            <li>  
                                <a class="brand" href="Trangchu.jsp">
                                    <i class="icon-user" class="brand"></i>
                                      XIN CHÀO ${sessionScope.USER}
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div><!-- /navbar-inner -->
        </div><!-- /navbar -->



        <div class="wrapper">
            <div class="container">
                <div class="row">
                <div class="span3">
                        <div class="sidebar">

                            <ul class="widget widget-menu unstyled">
                                <li class="active">
                                    <a href="Trangchu.jsp">
                                        <i class="icon-hand-right"></i>
                                        Trang chủ
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <i class="menu-icon icon-tasks"></i>
                                        Thông báo
                                        <b class="label orange pull-right">19</b>
                                    </a>
                                </li>
                            </ul><!--/.widget-nav-->

                            <ul class="widget widget-menu unstyled">
                                <li>
                                    <a class="collapsed" data-toggle="collapse" href="#togglePages1">
                                        <i class="menu-icon icon-cog"></i>
                                        Quản lý Thành viên
                                        <i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>                                        
                                    </a>
                                    <ul id="togglePages1" class="collapse unstyled">
                                        <li>
                                            <a href="NewLogin.jsp">
                                                <i class="icon-plus-sign"></i>
                                                Thêm Thành Viên
                                            </a>
                                        </li>
                                        <li>
                                            <a href="Thanhvien.jsp">
                                                <i class="icon-list"></i>
                                                Danh Sách Thành Viên
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul><!--/.widget-nav-->

                            <ul class="widget widget-menu unstyled">
                                <li>
                                    <a class="collapsed" data-toggle="collapse" href="#togglePages">
                                        <i class="menu-icon icon-cog"></i>
                                        Quản lý sản phẩm
                                        <i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>                                        
                                    </a>
                                    <ul id="togglePages" class="collapse unstyled">
                                        <li>
                                            <a href="NewSp.jsp">
                                                <i class="icon-plus-sign"></i>
                                                Thêm Sản Phẩm
                                            </a>
                                        </li>
                                        <li>
                                            <a href="SanPham.jsp">
                                                <i class="icon-list"></i>
                                                Danh Sách Sản Phẩm
                                            </a>
                                        </li>

                                    </ul>
                                </li>

                                <li>
                                    <a href="Trangchu_1.jsp">
                                        <i class="icon-circle-arrow-right"></i>
                                        Đăng Xuất
                                    </a>
                                </li>
                            </ul>

                        </div><!--/.sidebar-->
                    </div><!--/.span3-->


                    <div class="span9">
                        <div class="content">



                            <div class="module">
                                <div class="module-head">
                                    <button class="btn btn-info" style="margin-left: 700px;">
                                        <a href="NewSp.jsp" style="color: white">Thêm sản phẩm</a>
                                    </button>
                                </div>
                                <div class="module-body table">
                                    <table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Mã sản phẩm</th>
                                                <th>Tên sản phẩm</th>
                                                <th>Giá</th>                                                
                                                <th>Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Products listSP = new Products();
                                                List<Product> list = listSP.showProduct("");
                                                for (Product sp : list) {
                                            %>                              

                                            <tr class="odd gradeX">
                                                <td><%=sp.getCode()%></td>
                                                <td><%=sp.getName()%></td>
                                                <td><%=sp.getPrice()%></td>                                         
                                                <td>                                                 
                                                    <form action="Controller"> 
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                                        <i class="icon-edit"></i>
                                                    </button>
                                                        <button class="btn btn-primary" name="btnAction" value="Delete" onclick="alert('Bạn đã xóa sản phẩm thành công')"><i class="icon-remove"></i></button>
                                                        <input type="hidden" name="txtCode" value="<%=sp.getCode()%>">
                                                        <input type="hidden" name="txtName" value="<%=sp.getName()%>">
                                                        <input type="hidden" name="txtPrice" value="$<%=sp.getPrice()%>">
                                                    </form>
                                                </td>
                                            </tr>

                                            <%}
                                            %>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Mã sản phẩm</th>
                                                <th>Tên sản phẩm</th>
                                                <th>Giá</th>                                                
                                                <th>Chức năng</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div><!--/.module-->

                            <br />

                        </div><!--/.content-->
                    </div><!--/.span9-->
                </div>
            </div><!--/.container-->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Cập Nhật Sản Phẩm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="Controller">
                            <div class="w3-row"> 
                                <div class="w3-half">
                                    <div>
                                        <label>Mã sản phẩm</label>
                                        <input style="width: 500px;" required data-title="A tooltip for the input" type="text" placeholder="Mã Sản Phẩm…" data-original-title="" class="span8 tip" name="txtMasp" >
                                    </div>
                                    <br>
                                    <div>
                                        <label>Tên sản phẩm</label>
                                        <input style="width: 500px;" required data-title="A tooltip for the input" type="text" placeholder="Tên Sản Phẩn…" data-original-title="" class="span8 tip" name="txtTensp" >
                                    </div>
                                    <br>
                                    <div>
                                        <label>Giá</label>
                                        <input style="width: 500px;" required data-title="A tooltip for the input" type="text" placeholder="Giá Sản Phẩm…" data-original-title="" class="span8 tip" name="txtGia" >
                                    </div>
                                    <br>
                                    <br>
                                </div>                          
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-default" data-dismiss="modal">Đóng</button>
                                <!--<input type="submit" class="btn btn-primary" value="SUA" name="btnAction">-->
                                <button type="submit" class="btn btn-info" value="SUA" name="btnAction" >Cập Nhật<i class="icon-edit"></i></button>
                            </div>
                        </form>                   
                    </div>
                </div>
            </div>
        </div><!--/.wrapper-->
        <!-- Button trigger modal -->       

        <!-- Modal -->     
        <div class="footer">
            <div class="container">


                <b class="copyright">&copy; 2020  ThangHM-DucNa</b> All rights reserved.
            </div>
        </div>

        <script src="scripts/jquery-1.9.1.min.js"></script>
        <script src="scripts/jquery-ui-1.10.1.custom.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="scripts/datatables/jquery.dataTables.js"></script>
        <script>
            $(document).ready(function () {
                $('.datatable-1').dataTable();
                $('.dataTables_paginate').addClass("btn-group datatable-pagination");
                $('.dataTables_paginate > a').wrapInner('<span />');
                $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
                $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
            });
        </script>
    </body>
</html>