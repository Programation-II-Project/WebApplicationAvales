<%-- 
    Document   : perfil
    Created on : abr 8, 2020, 12:16:09 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PERFIL</title>
    </head>
    <%
        nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
    %>
    <body> 
        <h1>Hola <%= user.getNombre() %></h1>
        <br><br>
        <a href="solicitudDeAyuda.jsp">Solicitar ayuda especializada</a>
        <br><br>
        <a href="ServletUsuario?formid=2">Ver tus solicitudes y administrarlas</a>
    </body>
</html>
