<%-- 
    Document   : editarProyecto
    Created on : abr 12, 2020, 4:33:44 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.proyectoObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar proyecto</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
    </head>
    <%
        proyectoObj proyectoAEditar = 
                (proyectoObj)request.getSession().getAttribute("proyectoAEditar");
    %>
    <body>
        <h1>Editar proyecto</h1>
        <form action="ServletAdmin" method="get">
            Nombre proyecto: <input type="text" name="nombre" value="<%= proyectoAEditar.getNombreProyecto() %>" required/>
            <br><br>
            Descripción:
            <br><br>
            <textarea name="descripcion" rows="10" cols="40" maxlength="500" required><%= proyectoAEditar.getDescripcion() %></textarea>
            <br><br>
            Lugar:
            <textarea name="lugar" rows="4" cols="40" maxlength="100" required><%= proyectoAEditar.getLugar() %></textarea>
            <br><br>
            Foto: <input type="text" name="foto" value="<%= proyectoAEditar.getFoto() %>" required/>
            <br><br>
            Video: <input type="text" name="video" value="<%= proyectoAEditar.getVideo() %>" required/>
            <br><br>
            <input type="submit" value="Edit" />
            <input type="hidden" name="formid" value="9" />
        </form>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
