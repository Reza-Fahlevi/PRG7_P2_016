<%--Author : Reza Fahlevi--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Survey Bahasa Pemrograman</title>
</head>
<body>
    <h1>Selamat Datang Di Survey Developer</h1>
    <p>Pilihlah bahasa pemrograman yang anda suka</p>
    <form action="ControllerServlet" method="post">
        <table>
            <tr>
                <td>Nama lengkap</td>
                <td>:</td>
                <td><input type="text" name="namaLengkap" value=""></td>
            </tr>
            <tr>
                <td>Python</td>
                <td><input type="checkbox" name="bhsProgram" value="Python"></td>
            </tr>
            <tr>
                <td>Java</td>
                <td><input type="checkbox" name="bhsProgram" value="Java"></td>
            </tr>
            <tr>
                <td>PHP</td>
                <td><input type="checkbox" name="bhsProgram" value="PHP"></td>
            </tr>
            <tr>
                <td>C#</td>
                <td><input type="checkbox" name="bhsProgram" value="C#"></td>
            </tr>
            <tr>
                <td>Go</td>
                <td><input type="checkbox" name="bhsProgram" value="Go"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Kirim"></td>
            </tr>
        </table>
    </form>
    <a href="LoginServlet">Login</a>
</body>
</html>