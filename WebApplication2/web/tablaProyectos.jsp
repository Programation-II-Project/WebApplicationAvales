<%-- 
    Document   : tablaProyectos
    Created on : abr 10, 2020, 4:59:19 p.m.
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
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
    </head>
    <%
        List<proyectoObj> totalProyectos = 
                (List<proyectoObj>)request.getSession().getAttribute("listaTotalProyectos");
    %>
    <body style="background-color:#EAEAEA">
        <div class="container is-fluid">
            <div align="center">
                <h1 style="color:#170D61">Proyectos</h1><br><br>
            </div>
        <br><br>
        <a href="nuevoProyecto.jsp" ><strong>Crear un nuevo proyecto</strong></a>
        <br><br>
        <div align="center">
         <table style="width:50%" border="1">
            <tr>
                <th>Nombre del proyecto</th>
                <th>Descripcion</th>
                <th>Lugar</th>
                <th>Foto</th>
                <th>Video</th>
            </tr>
            
            <%
                
                if(totalProyectos!=null)
                {
                    Iterator<proyectoObj> ite = totalProyectos.iterator();
                    proyectoObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
            %>
                    <tr>
                        <td><%= CTemp.getNombreProyecto() %></td>
                        <td><%= CTemp.getDescripcion() %></td>
                        <td><%= CTemp.getLugar() %></td>
                        <td><%= CTemp.getFoto() %></td>
                        <td><%= CTemp.getVideo() %></td>
                            <td>
                                    <a href="ServletAdmin?formid=7&id=<%= CTemp.getID() %>&nombre=<%= CTemp.getNombreProyecto() %>&descripcion=<%= CTemp.getDescripcion() %>&lugar=<%= CTemp.getLugar() %>&foto=<%= CTemp.getFoto() %>&video=<%= CTemp.getVideo() %>">
                                        <i style="color:#2D1CA9" class="button"><strong>Editar</strong></i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletAdmin?formid=8&id=<%= CTemp.getID() %>">
                                        <i style="color:#2D1CA9" class="button"><strong>Borrar</strong></i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>
        </table>
        </div>
        <br><br>
        <a href="PerfilDeAdmin.jsp" ><strong>Back</strong></a>
    </body>
</html>
