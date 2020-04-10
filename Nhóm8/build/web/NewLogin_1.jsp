
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Đăng ký</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
        <style>
            .signup{
                padding-top: 50px;
            }
            body{
                font-family: Arial !important;
            }
            h2{
                font-family: Arial !important;
            }
            input{
                font-family: Arial !important;
            }
        </style>
    </head>
    <body>
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Đăng ký</h2>
                        <form class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="txt1User" required id="username" placeholder="Tên tài khoản"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-email"></i></label>
                                <input type="password" name="txt1Pass" required id="pass" placeholder="Mật khẩu"/>
                            </div>
                            <div class="form-group">
                                <label for="fullname"><i class=""></i></label>
                                <input type="text" name="txt1Name" id="fullname" placeholder="Họ tên"/>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class=""></i></label>
                                <input type="text" name="txt1Sdt" id="phone" placeholder="Số điện thoại"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>Tôi đồng ý với <a href="#" class="term-service">điều khoản và điều kiện</a> sử dụng trang web</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng ký"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="Login.jsp" style="font-weight: bold">Đã có tài khoản !</a>/<a style="font-weight: bold" href="Trangchu_1.jsp">Trang chủ</a>
                    </div>
                </div>
            </div>
        </section>
        <sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url="jdbc:sqlserver://localhost:1433;databaseName=Ass_Java4"
                           user="sa"
                           password="123"
                           var="con"/>

        <c:if test="${not empty param.txt1User}">
            <sql:update dataSource="${con}">
                Insert Into Users(UserName,Password,Ten,SDT,Permission) Values(?,?,?,?,?)
                <sql:param value="${param.txt1User}"/>
                <sql:param value="${param.txt1Pass}"/>
                <sql:param value="${param.txt1Name}"/>
                <sql:param value="${param.txt1Sdt}"/>
                <sql:param value="nv"/>
            </sql:update>
        </c:if>
    </body>
</html>

