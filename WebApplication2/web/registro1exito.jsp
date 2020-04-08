<%-- 
    Document   : registro1exito
    Created on : abr 7, 2020, 7:47:33 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message</title>
    </head>
    <%
    boolean bHasFailed = 
            (boolean)request.getSession().getAttribute("bHasFailed");
    %>
    
    <body>
        <h1>Message</h1>
        <br><br>
        
        <%
            if(!bHasFailed)
            {
        %>
        <p>Datos guardados con exito, ¿desea ingresar a su cuenta o seguir conociendo los diferentes proyectos de AVALES?</p>
        <a href="index.html">AVALES</a>
        <a href="´perfil.jsp">PERFIL</a> 
        <%
            }
            else
            {   
        %>
        <p>Datos no guardados, revise si dejo algún campo importante en blanco</p>
        <a href="register.jsp">Back</a>
        <%
            }
        %>
    </body>
</html>
