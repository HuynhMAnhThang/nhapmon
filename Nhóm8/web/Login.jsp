<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Đăng nhập</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
        <style>
            .sign-in{
                padding-top: 50px;
            }
            body{
                font-family: Arial !important;
            }
            h2{
                font-family: Arial !important;
            }
        </style>
    </head>
    <body>
<!--                <div align="center" >
        
                    <form action="Controller" method="post" style="width: 600px;background-color: azure;"  >
                        <div class="imgcontainer">
                            <h1>Login</h1>
                            <img src="img/logo.jpg" alt="Avatar" class="avatar">
                        </div>
        
                        <div class="container">
                            <label for="uname"><b>Username</b></label>
                            <input type="text" placeholder="Enter Username" name="txtUser" required>
        
                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="txtPass" required>
        
        
                            <button type="submit" name="btnAction"  value="Login" style="padding-top: 7px;padding-bottom: 20px;" >Login</button>
                            <a href="NewLogin_1.jsp"><button type="button" name="btnAction"  value="Dangky" style="padding-top: 7px;padding-bottom: 20px;">Registration</button></a>
                            <label>
                                <input type="checkbox" checked="checked" name="remember"> Rememberme
                            </label>
                        </div>
        
                        <div class="container" style="background-color:#f1f1f1">
                            <button type="button" class="cancelbtn" style="padding-bottom: 22px;padding-top: 8px;"> <a href="#">Cancel</a></button>
                            <span class="psw">Forgot <a href="#">password?</a></span>
                        </div>
                    </form>
                </div>-->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="NewLogin_1.jsp" style="font-weight: bold">Tạo tài khoản</a>/<a style="font-weight: bold" href="Trangchu_1.jsp">Trang chủ</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Đăng nhập</h2>
                        <form action="Controller" method="post" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="txtUser" id="your_name" placeholder="Tài khoản"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="txtPass" id="your_pass" placeholder="Mật khẩu"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Lưu tài khoản</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="btnAction"  value="Login" id="signin" class="form-submit"/>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Hoặc đăng nhập bằng</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>

