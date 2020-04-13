<%-- 
    Document   : listaDonacionesUsuario
    Created on : abr 12, 2020, 7:25:08 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.donacionObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tus donaciones</title>
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
    </head>
    <%
        List<donacionObj> listaDeDonaciones = 
                (List<donacionObj>)request.getSession().getAttribute("DonacionesByID");
        int TotalDonado = 0;
    %>
    <body>
        <h1>Donaciones</h1>
        <br><br>
        <a href="nuevaDonacion.jsp" >Hacer una nueva donacion</a>
        <br><br> 
         <table style="width:50%" border="1">
            <tr>
                <th>Fecha</th>
                <th>Tarjeta</th>
                <th>Monto</th>
                <th>Estado</th> 
            </tr>
            
            <%
                
                if(listaDeDonaciones!=null)
                {
                    Iterator<donacionObj> ite = listaDeDonaciones.iterator();
                    donacionObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
                        
                        
                        if(CTemp.getEstado()!=null && !CTemp.getEstado().equals("Denegado"))
                        {
                        TotalDonado = TotalDonado + CTemp.getDonacion();
                        }
            %>
                    <tr>
                        <td><%= CTemp.getFecha() %></td>
                        <td><%= CTemp.getTarjeta() %></td>
                        <td><%= CTemp.getDonacion() %></td>
            <%
                if(CTemp.getEstado()!=null)
                {
            %>
                        <td><%= CTemp.getEstado() %></td>
            <%
                }
                else
                {
            %>
                        <td>No se ha tramitado</td>
            <%
                }
            %>
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
        <br><br>
        <a>Total donado: $<%= TotalDonado %></a>
    </body>
</html>
