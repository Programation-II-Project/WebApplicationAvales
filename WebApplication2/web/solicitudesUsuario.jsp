<%-- 
    Document   : solicitudesUsuario
    Created on : abr 9, 2020, 1:55:18 p.m.
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
                (List<solicitudAyudaObj>)request.getSession().getAttribute("ayudas");
    %>
    <body>
        <h1>Hello World!</h1>
        <br><br>
         <table style="width:50%" border="1">
            <tr>
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
                                    <a href="ServletUsuario?formid=3&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletUsuario?formid=4&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>&iduser=<%= CTemp.getIdUser() %>&proyecto=<%= CTemp.getProyecto() %>&descripcion=<%= CTemp.getDescripcion() %>&fecha=<%= CTemp.getFecha() %>">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>
        </table>
        <br><br> 
        <a href="perfil.jsp">Back</a>
    </body>
</html>
