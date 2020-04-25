<%-- 
    Document   : editarActividad
    Created on : abr 18, 2020, 12:30:56 p.m.
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
        actividadObj actividadEditar = 
                (actividadObj)request.getSession().getAttribute("actividadEditar");
    %>
    <body>
        <h1>Editar solicitud</h1>
        <form action="ServletAdmin" method="get">
            Nombre de la actividad: <input type="text" name="Nombre" value="<%= actividadEditar.getNombre() %>" required/>
            <br><br>
            Descripcion:
            <br><br>
            <textarea name="Descripcion" rows="10" cols="40" maxlength="500" required><%= actividadEditar.getDescripcion() %></textarea>
            <br><br>
            Encargado: <input type="text" name="Encargado" value="<%= actividadEditar.getEncargado() %>" required/>
            <br><br>
            Costo de la actividad: <input type="number" step="any" name="Costo" placeholder="<%= actividadEditar.getCosto() %>" required/>
            <br><br>
            Año: <input type="number" name="Anno" placeholder="<%= actividadEditar.getAnno() %>" required/>
            <br><br>
            Mes: <input type="number" min="1" max="12" name="Mes" placeholder="<%= actividadEditar.getMes() %>" required/>
            <br><br>
            Dia: <input type="number" min="1" max="31" name="Dia" placeholder="<%= actividadEditar.getDia() %>" required/>
            <br><br>
            Banner: <input type="text" name="Banner" placeholder="<%= actividadEditar.getFoto() %>" required/> 
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="17" />
        </form>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
