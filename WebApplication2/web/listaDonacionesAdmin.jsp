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
        <title>Donaciones</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>        
    </head>
    <%
        List<donacionObj> listaDeDonaciones = 
                (List<donacionObj>)request.getSession().getAttribute("DonacionesTotales");
        int TotalDonado = 0;
    %>
    <body>
        
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Donaciones
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            En espera de decisión
                        </h2>
                    </div>
                </div>
            </section>
        
        <br><br>
        <section class="container is-centered">        
        <table class="table is-striped">
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
        <a class="subtitle is-centered">Total de donativo recibido: $<%= TotalDonado %></a>
        <br><br>

                                <div>
                                    <button class="button is-info"onclick="goBack()">Volver</button>
                                </div>

                                <script>
                                    function goBack() {
                                        window.history.back();
                                    }
                                </script>        
                                <br><br><br>
        </section>
    </body>
</html>
