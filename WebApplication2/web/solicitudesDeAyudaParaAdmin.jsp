<%-- 
    Document   : solicitudesDeAyudaParaAdmin
    Created on : abr 10, 2020, 11:47:55 a.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.solicitudAyudaObj"%>
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
        List<solicitudAyudaObj> listaDeAyudas = 
                (List<solicitudAyudaObj>)request.getSession().getAttribute("listaTotal");
    %>
    <body>
        <h1>Hello World!</h1>
        <br><br>
         <table style="width:50%" border="1">
            <tr>
                <th>ID del usuario</th>
                <th>Proyecto</th>
                <th>Descripcion</th>
                <th>Fecha</th>
                <th>Estado</th>
            </tr>
            
            <%
                
                if(listaDeAyudas!=null)
                {
                    Iterator<solicitudAyudaObj> ite = listaDeAyudas.iterator();
                    solicitudAyudaObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
            %>
                    <tr>
                        <td><%= CTemp.getIdUser() %></td>
                        <td><%= CTemp.getProyecto() %></td>
                        <td><%= CTemp.getDescripcion() %></td>
                        <td><%= CTemp.getFecha() %></td>
            <%
                        if (CTemp.getAprobacion()==null) 
                        {   
            %>              
                            <td>En espera de aprobación</td>
            <%          }
                        else
                        {
            %>
                            <td><%= CTemp.getAprobacion() %></td>
            <%            
                        }
            %>
                            <td>
                                    <a href="ServletAdmin?formid=2&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>">
                                        <i class="button">aceptar</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletAdmin?formid=3&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>">
                                        <i class="button">rechazar</i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>
        </table>
        <br><br> 
        <a href="PerfilDeAdmin.jsp">Back</a>
    </body>
</html>
