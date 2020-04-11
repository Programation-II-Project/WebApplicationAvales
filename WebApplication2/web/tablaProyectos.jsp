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
    <body>
        <h1>Proyectos</h1><br><br>
        <br><br>
        <a href="nuevoProyecto.jsp" >Crear un nuevo proyecto</a>
        <br><br> 
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
                        <td><a><%= CTemp.getNombreProyecto() %></a></td>
                        <td><%= CTemp.getDescripcion() %></td>
                        <td><%= CTemp.getLugar() %></td>
                        <td><%= CTemp.getFoto() %></td>
                        <td><%= CTemp.getVideo() %></td>
                            <td>
                                    <a>
                                        <i class="button">Editar</i>
                                    </a>
                                </td>
                                <td>
                                    <a>
                                        <i class="button">Borrar</i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>
        </table>
    </body>
</html>
