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
        <title>JSP Page</title>
    </head>
    <%
        proyectoObj proyecto = 
                (proyectoObj)request.getSession().getAttribute("proyectoAVer");
        
        String a = proyecto.getVideo();
        String ruta_video = "videos/"+a;
        
        String c = proyecto.getFoto();
        String ruta_foto = "imagenes/"+c;
        
        
    %>
    <body>
        <h1><%= proyecto.getNombreProyecto() %></h1>
        <br><br>
        <video src="<%= ruta_video %>" width=620  height=540 autoplay loop ></video>
        <image src="<%= ruta_foto %>" />
        <br><br>
        <h2><%= proyecto.getDescripcion() %></h2>
        <br><br>
        <h2><%= proyecto.getLugar() %></h2>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
    
</html>
