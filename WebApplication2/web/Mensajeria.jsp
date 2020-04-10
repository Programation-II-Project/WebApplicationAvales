<%-- 
    Document   : Mensajeria
    Created on : 04-10-2020, 12:52:34 PM
    Author     : fer10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <form action="ServletUsuario" method="get">
            <br><br>
            Mensajes:
            <br><br>
            <input type="text" name="fl_newMessage"/>
            <input type="hidden" name="formid" value="100" />
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
