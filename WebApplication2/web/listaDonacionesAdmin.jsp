<%-- 
    Document   : listaDonacionesAdmin
    Created on : abr 17, 2020, 2:59:14 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppObjs.donacionObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        List<donacionObj> listaDeDonaciones = 
                (List<donacionObj>)request.getSession().getAttribute("DonacionesTotales");
        int TotalDonado = 0;
    %>
    <body>
        <h1>Donaciones</h1>
        <br><br>
         <table style="width:50%" border="3">
            <tr>
                <th>Usuario</th>
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
                    
                        <td><a href="ServletAdmin?formid=4&id=<%= CTemp.getID_donante() %>" ><%= CTemp.getID_donante() %></a></td>
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
                        <td>En espera de confirmación</td>
            <%
                }
            %>
                            <td>
                                    <a href="ServletAdmin?formid=11&id=<%= CTemp.getID_donacion() %>&aprobacion=<%= CTemp.getEstado() %>" >
                                        <i class="button">Aceptada</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletAdmin?formid=12&id=<%= CTemp.getID_donacion() %>&aprobacion=<%= CTemp.getEstado() %>" >
                                        <i class="button">Denegada</i>
                                    </a>
                                </td>        
                    </tr>
                    <%
                    }
                }
            %>
        </table>
        <br><br>
        <a>Total donado a AVALES por todos los usuarios: $<%= TotalDonado %></a>
        <br><br>
        <a href="PerfilDeAdmin.jsp">Back</a>
    </body>
</html>
