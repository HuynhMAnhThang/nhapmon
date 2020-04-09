
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: black;
            }

            * {
                box-sizing: border-box;
            }

            /* Add padding to containers */
            .container {
                padding: 16px;
                background-color: white;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Overwrite default styles of hr */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for the submit button */
            .registerbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .registerbtn:hover {
                opacity: 1;
            }

            /* Add a blue text color to links */
            a {
                color: dodgerblue;
            }

            /* Set a grey background color and center the text of the "sign in" section */
            .signin {
                background-color: #f1f1f1;
                text-align: center;
            }
        </style>
    </head>
    <body style="background-color: bisque">
    <center>
        <div  algin="center" style="width:600px">
            <form >
                <div class="container">
                    <h1 algin="center">Thêm Người Dùng</h1>
                    <p>Vui lòng điền vào mẫu này để tạo một tài khoản.</p>
                    <hr>

                    <label for="email"><b>UserName</b></label>
                    <input type="text" placeholder="Enter UserName" name="txt1User" required>
                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="txt1Pass" required>
                    <label for="psw"><b>FullName</b></label>
                    <input type="text" placeholder="Enter PasswFullNameord" name="txt1Name" required>
                    <label for="psw"><b>NumberPhone</b></label>
                    <input type="text" placeholder="Enter NumberPhone" name="txt1Sdt" required>
                    <label>Permission</label>
                    <select style="width: 84%;" name="cbo1Quyen">
                        <option disabled>---Chọn Quyền---</option>
                        <option value="nv">Nguời dùng</option>
                        <option value="admin">Quản lý</option>
                    </select>


                    <hr>

                    <button type="submit" class="registerbtn">ADD</button>
                </div>

                <div class="container signin">
                    <a href="Controller?btnAction=Trangchu">Quay Lại</a>
                </div>
            </form>
            <hr>
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
                    <sql:param value="${param.cbo1Quyen}"/>
                </sql:update>
            </c:if>

            <sql:query dataSource="${con}" var="rs">
                select * from Users
            </sql:query>

            <table border="0" class="w3-table w3-striped w3-bordered w3-border">
                <thead class="w3-pink">
                    <tr>
                        <th>No.</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>FullName</th>
                        <th>NumberPhone</th>
                        <th>Permission</th>
                    </tr>
                </thead>
                <c:set var="count" value="0"/>
                <c:forEach var="dong" items="${rs.rows}">
                    <tr>
                        <c:set var="count" value="${count+1}"/>
                        <td>${count}</td>
                        <td>${dong.UserName}</td>
                        <td>${dong.Password}</td>
                        <td>${dong.Ten}</td>
                        <td>${dong.SDT}</td>
                        <td>${dong.Permission}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </center>
</body>
</html>

