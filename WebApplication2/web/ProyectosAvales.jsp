<%-- 
    Document   : ProyectosAvales
    Created on : abr 10, 2020, 7:18:27 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.proyectoObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        <title>Proyectos Avales</title>
    </head>
    <%
        proyectoObj proyecto = 
                (proyectoObj)request.getSession().getAttribute("proyectoAVer");
        
        String a = proyecto.getVideo();
        String ruta_video = "videos/"+a;
        
        String c = proyecto.getFoto();
        String ruta_foto = "imagenes/"+c;
        
        
    %>
    <body <body style="background-color:#EAEAEA">
        <div class="container is-fluid">
            <div align="center">
                <h1 style="color:#170D61"><%= proyecto.getNombreProyecto() %></h1>
            </div>
        <br><br>
        <div align="center">
            <video src="<%= ruta_video %>" width=620  height=540 autoplay loop ></video>
        </div>
            <div align="center">
                <image class="image is-128x128" src="<%= ruta_foto %>" />
            </div>
        <br><br>
        <h2 style="color:#000000"><%= proyecto.getDescripcion() %></h2>
        <br><br>
        <h2 style="color:#000000"><%= proyecto.getLugar() %></h2>
        <br><br>
        <button style="color:#2D1CA9" class="button is-normal" onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
        </div>
    </body>
    
</html>
