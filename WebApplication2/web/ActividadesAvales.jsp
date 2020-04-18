<%-- 
    Document   : ActividadesAvales
    Created on : abr 18, 2020, 2:44:01 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        actividadObj actividad = 
                (actividadObj)request.getSession().getAttribute("actividadAVer");
        
        String c = actividad.getFoto();
        String ruta_foto = "imagenes/"+c;
        
        
    %>
    <body>
        <h1><%= actividad.getNombre() %></h1>
        <br><br>
        <h3><%= actividad.getDescripcion() %></h3><image src="<%= ruta_foto %>" />
        <br><br>
        costo:<h2><%= actividad.getCosto() %></h2>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
