<%-- 
    Document   : tablaActividades
    Created on : abr 17, 2020, 8:36:48 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        List<actividadObj> totalActividades = 
                (List<actividadObj>)request.getSession().getAttribute("listaDeActividadesTotal");
    %>
    <body>
        <h1>Actividades</h1><br><br>
        <br><br>
        <a href="nuevaActividad.jsp" >Crear una nueva actividad</a>
        <br><br> 
         <table style="width:50%" border="1">
            <tr>
                <th>Actividad</th>
                <th>Descripcion</th>
                <th>Costo</th>
                <th>Encargado</th>
                <th>Año</th>
                <th>Mes</th>
                <th>Dia</th>
                <th>Foto</th>
            </tr>
            
            <%
                
                if(totalActividades!=null)
                {
                    Iterator<actividadObj> ite = totalActividades.iterator();
                    actividadObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
            %>
                    <tr>
                        <td><%= CTemp.getNombre() %></td>
                        <td><%= CTemp.getDescripcion() %></td>
                        <td><%= CTemp.getCosto() %></td>
                        <td><%= CTemp.getEncargado() %></td>
                        <td><%= CTemp.getAnno() %></td>
                        <td><%= CTemp.getMes() %></td>
                        <td><%= CTemp.getDia() %></td>
                        <td><%= CTemp.getFoto() %></td>
                            <td>
                                    <a href="ServletAdmin?formid=16&id=<%= CTemp.getId_Actividad() %>&nombre=<%= CTemp.getNombre() %>&descripcion=<%= CTemp.getDescripcion() %>&costo=<%= CTemp.getCosto() %>&foto=<%= CTemp.getFoto() %>&encargado=<%= CTemp.getEncargado() %>&anno=<%= CTemp.getAnno() %>&mes=<%= CTemp.getMes() %>&dia=<%= CTemp.getDia() %>">
                                        <i class="button">Editar</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletAdmin?formid=15&id=<%= CTemp.getId_Actividad() %>&anno=<%= CTemp.getAnno() %>&mes=<%= CTemp.getMes() %>&dia=<%= CTemp.getDia() %>">
                                        <i class="button">Borrar</i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>
        </table>
        <br><br>
        <a href="PerfilDeAdmin.jsp" >Back</a>
    </body>
</html>
