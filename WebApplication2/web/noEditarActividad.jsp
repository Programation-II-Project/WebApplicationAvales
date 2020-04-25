<%-- 
    Document   : noEditarActividad
    Created on : abr 18, 2020, 12:02:47 p.m.
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
        <h1>Error en la fecha, no se puede editar, borrar o crear una actividad antes del día de hoy</h1>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
