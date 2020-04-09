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
                                    <a>
                                        <i class="fas fa-edit"></i>
                                    </a>
                                </td>
                                <td>
                                    <a>
                                        <i class="fas fa-trash"></i>
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
