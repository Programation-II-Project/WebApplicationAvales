<%-- 
    Document   : editarSolicitudAyuda
    Created on : abr 9, 2020, 6:32:40 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.solicitudAyudaObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        solicitudAyudaObj ayudaActual = 
                (solicitudAyudaObj)request.getSession().getAttribute("ayudaAEditar");
    %>
    <body>
        <h1>Editar ayuda</h1>
        <form action="ServletUsuario" method="get">
            Proyecto de Avales al que se quiere pedir ayuda: Estado Civil: <select id="f_proyecto" name="f_proyecto">
                                                                           <option value="VALORES">VALORES</option>
                                                                           <option value="AMARTE">AMARTE</option>
                                                                           <option value="ESFAMILIA">ESFAMILIA</option>
                                                                           </select>
            <br><br>
            Descripción:
            <br><br>
            <textarea name="f_descripcion" rows="10" cols="40" required><%= ayudaActual.getDescripcion() %></textarea>
            <br><br>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="5" />
        </form>
    </body>
</html>
