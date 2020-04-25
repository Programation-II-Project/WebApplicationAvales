<%-- 
    Document   : errorBorrarSolicitud
    Created on : abr 9, 2020, 3:50:13 p.m.
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
        <h1>NO PUEDES BORRAR ESTA SOLICITUD YA QUE YA HA SIDO TOMADA UNA DESICION POR PARTE DE LOS ADMINISTRADORES</h1>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
