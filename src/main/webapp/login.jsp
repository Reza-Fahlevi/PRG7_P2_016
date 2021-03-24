<%--
  Created by IntelliJ IDEA.
  User: mocha
  Date: 3/24/2021
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:useBean id="loginData" scope="request" class="model.LoginData"></jsp:useBean>
<head>
    <title>Form Login</title>
</head>
<body>
<center>
    <h2>Login Terlebih Dahulu</h2>
    <form action="LoginServlet" method="post">
        <table>
            <tr>
                <td>Username</td>
                <td>:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td>:</td>
                <td><input type="password" name="passwd"></td>
            </tr>
            <tr>
                <td>Varifikasi Hasil<br>${angka1} + ${angka2}</td>
                <td>:</td>
                <td><input type="number" name="verifNumber"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Masuk"></td>
                <td><input type="button" value="Batal"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
