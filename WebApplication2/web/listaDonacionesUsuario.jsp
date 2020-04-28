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
        <title>Donaciones</title>
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script> 
    </head>
    <%
        List<donacionObj> listaDeDonaciones
                = (List<donacionObj>) request.getSession().getAttribute("DonacionesByID");
        int TotalDonado = 0;
    %>
    <body>
        <!-- ENCABEZADO--> 
        <section class="hero is-light">
            <!-- Hero head: will stick at the top -->
            <div class="hero-head">
                <nav class="navbar">
                    <div class="container">

                        <div class="navbar-brand">
                            <div class="navbar-item">
                                <a href="https://www.facebook.com/avales.sv" target="_blank">
                                    <img src="styles/Imagenes/facebook.png" alt="logotipo"/>
                                </a>
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenuHeroA">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </div>

                        <div class="navbar-brand">
                            <div class="navbar-item">
                                <a href="https://twitter.com/AVALES_SV" target="_blank">
                                    <img src="styles/Imagenes/twitter.png" alt="logotipo"/>
                                </a>
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenuHeroA">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </div>

                        <div id="navbarMenuHeroA" class="navbar-menu">
                            <div class="navbar-end">

                                <span class="navbar-item">
                                    <div class="button is-primary is-inverted">
                                        <a href="index.html">
                                            <span>Inicio</span>
                                        </a>
                                    </div>
                                </span> 
                            </div>
                        </div>
                    </div>
                </nav>
            </div>

            <!-- Hero content: will be in the middle -->
            <div class="hero-body">
                <div class="container"> 
                    <img src="styles/Encabezados/avales.png" alt=""/>
                </div>
            </div>

            <!-- Hero footer: will stick at the bottom -->

            <div class="hero-foot">
                <nav class="tabs">
                    <div class="container">
                        <ul>
                            <div id="navbarMenuHeroA" class="navbar-menu">
                                <span class="navbar-item">

                                    <span class="navbar-item">
                                        <div class="button is-primary is-inverted">
                                            <a href="ServletMainPage?formid=1">
                                                <span>Proyectos</span>
                                            </a>
                                        </div>
                                    </span>

                                    <span class="navbar-item">
                                        <div class="button is-primary is-inverted">
                                            <a href="ServletMainPage?formid=3">
                                                <span>Calendario </span>
                                            </a>
                                        </div>
                                    </span>                                         
                                </span>
                            </div>
                        </ul>
                    </div>
                </nav>
            </div>
        </section>

        <!-- SEPARADOR -->

        <section class="hero is-dark">
            <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                <div class="container has-text-centered">
                    <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                        Donaciones
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                        Tus acciones de valor para un mejor futuro
                    </h2>
                </div>
            </div>
        </section>

        <br><br> 
        <section class="container has-text-centered">
            <table class="table is-hoverable is-centered">
                <tr>
                    <th>Fecha</th>
                    <th>Tarjeta</th>
                    <th>Monto</th>
                    <th>Estado</th> 
                </tr>

                <%
                    if (listaDeDonaciones != null) {
                        Iterator<donacionObj> ite = listaDeDonaciones.iterator();
                        donacionObj CTemp;
                        while (ite.hasNext()) {
                            CTemp = ite.next();

                            if (CTemp.getEstado() != null && !CTemp.getEstado().equals("Denegado")) {
                                TotalDonado = TotalDonado + CTemp.getDonacion();
                            }
                %>
                <tr>
                    <td><%= CTemp.getFecha()%></td>
                    <td><%= CTemp.getTarjeta()%></td>
                    <td><%= CTemp.getDonacion()%></td>
                    <%
                        if (CTemp.getEstado() != null) {
                    %>
                    <td><%= CTemp.getEstado()%></td>
                    <%
                    } else {
                    %>
                    <td>No se ha tramitado</td>
                    <%
                        }
                    %>
                    <td>
                        <a href="ServletUsuario?formid=8&id=<%= CTemp.getID_donacion()%>&aprobacion=<%= CTemp.getEstado()%>&tarjeta=<%= CTemp.getTarjeta()%>&CVV=<%= CTemp.getCVV()%>&anno=<%= CTemp.getAño()%>&mes=<%= CTemp.getMes()%>&monto=<%= CTemp.getDonacion()%>" >
                            <i class="button">Editar</i>
                        </a>
                    </td>
                    <td>
                        <a href="ServletUsuario?formid=10&id=<%= CTemp.getID_donacion()%>&aprobacion=<%= CTemp.getEstado()%>">
                            <i class="button">Borrar</i>
                        </a>
                    </td>        
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </section>
        <section class="container has-text-centered">
            <br><br>
            <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: darkblue">
                Total donado: $<%= TotalDonado%>
            </h2>

            <br><br>            
            <div class="buttons is-centered">
                <div>
                    <a href="nuevaDonacion.jsp">
                    <button class="button is-info">Realizar una nueva donación</button>
                    </a>
                </div>  

                <div>
                    <a href="perfil.jsp">
                    <button class="button is-info">Volver</button>
                    </a>
                </div>  
            </div>

        </section>
            <br><br><br>

    </body>
</html>
