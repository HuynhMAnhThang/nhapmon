<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style_1.css"
    </head>
    <body style="background-color: honeydew">
        <div align="center" >

            <form action="Controller" method="post" style="width: 600px;background-color: azure;"  >
                <div class="imgcontainer">
                    <h1>Login</h1>
                    <img src="img/logo.jpg" alt="Avatar" class="avatar">
                    <p style="color: red"> ĐĂNG NHẬP KHÔNG THÀNH CÔNG</p>

                </div>

                <div class="container">
                    <label for="uname"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="txtUser" required>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="txtPass" required>


                    <button class="btn btn-hover" ltype="submit" name="btnAction"  value="Login" style="padding-top: 7px;padding-bottom: 20px;" >Login</button>
                    <a href="NewLogin_1.jsp"><button class="btn btn-hover" type="button" name="btnAction"  value="Dangky" style="padding-top: 7px;padding-bottom: 20px;">Registration</button></a>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Rememberme
                    </label>
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" class="cancelbtn" style="padding-bottom: 22px;padding-top: 8px;"> <a href="">Cancel</a></button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
            </form>
        </div>
    </body>
</html>

