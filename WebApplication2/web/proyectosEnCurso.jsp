<%-- 
    Document   : proyectosEnCurso
    Created on : abr 10, 2020, 6:19:04 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.proyectoObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        List<proyectoObj> todosLosProyectos = 
                    (List<proyectoObj>)request.getSession().getAttribute("proyectosViewByUser");
        %>
    <body>
        <h1>AVALES está desarrollando los siguientes proyectos actualmente, cliquea y conoce sobre cada uno de ellos</h1>
        <% if(todosLosProyectos!=null)
                {
                    Iterator<proyectoObj> ite = todosLosProyectos.iterator();
                    proyectoObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
            %>
                        <a href="ServletMainPage?formid=2&id=<%= CTemp.getID() %>" ><%= CTemp.getNombreProyecto() %></a>
                        <br><br>
            <%
                    }
                }
            %>
            <br><br>
            
            <button onclick="goBack()">Back</button>
            <script>
            function goBack() {
            window.history.back();
            }
            </script>
    </body>
    
</html>
