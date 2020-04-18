<%-- 
    Document   : login
    Created on : abr 6, 2020, 3:11:42 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Hello User!</h1>
        <br><br>
        <form action="RegisterLoginServlet" method="get">
            Email: <input type="text" name="fl_email" />
            <br><br>
            Contraseña:  <input type="password" name="fl_password">
            <br><br>          
            <input type="submit" value="Login" />
            <input type="hidden" name="formid" value="2" />
        </form>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
