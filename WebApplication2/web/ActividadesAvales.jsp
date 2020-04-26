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
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        <title>Actividades Avales</title>
    </head>
    <%
        actividadObj actividad = 
                (actividadObj)request.getSession().getAttribute("actividadAVer");
        
        String c = actividad.getFoto();
        String ruta_foto = "imagenes/"+c;
        
        
    %>
    <body style="background-color:#EAEAEA">
        <div class="container is-fluid">
            <h1 style="color:#170D61"><%= actividad.getNombre() %></h1>
        <br><br>
        <h3 style="color:#000000"><%= actividad.getDescripcion() %></h3><figure class="image is-128x128">
                                                                        <image src="<%= ruta_foto %>" />
                                                                        </figure>
        <br><br>
        costo:<h2 style="color:#000000"><strong><%= actividad.getCosto() %></strong></h2>
        <br><br>
        <button style="color:#2D1CA9" class="button is-normal" onclick="goBack()"><strong>Back</strong></button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
        </div>
    </body>
</html>
