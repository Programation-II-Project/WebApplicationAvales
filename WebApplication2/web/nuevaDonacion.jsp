<%-- 
    Document   : nuevaDonacion
    Created on : abr 12, 2020, 7:54:04 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donacion</title>
    </head>
    <%
        nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
    %>
    <body>
        <h1>Hola <%= user.getNombre() %>, muchas gracias por hacer la siguiente donacion </h1>
        <br><br>
        <form action="ServletUsuario" method="get">
            Numero de la tarjeta: <input type="number" name="Tarjeta" required/>
            <br><br>
            CVV: <input type="number" name="CVV" required/>
            <br><br>
            Mes: <input type="number" name="Mes" required/>
            Año <input type="number" name="Anno" required/>
            <br><br>
            Monto a donar: <input type="number" name="Donacion" required/>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="7" />
        </form>
    </body>
</html>
