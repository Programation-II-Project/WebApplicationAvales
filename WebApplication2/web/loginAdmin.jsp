<%-- 
    Document   : loginAdmin
    Created on : abr 8, 2020, 3:12:59 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello User!</h1>
        <br><br>
        <form action="RegisterLoginServlet" method="get">
            Username: <input type="text" name="fadmin_username"/>
            <br><br>
            Contraseña:  <input type="password" name="fadmin_password">
            <br><br>          
            <input type="submit" value="Login" />
            <input type="hidden" name="formid" value="3" />
        </form>
        <a href="index.html">Back</a>
    </body>
</html>
