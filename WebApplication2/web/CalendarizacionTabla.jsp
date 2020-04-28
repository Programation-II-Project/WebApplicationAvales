<%-- 
    Document   : CalendarizacionTabla
    Created on : abr 18, 2020, 2:13:09 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="styles/CSStables/images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="styles/CSStables/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="styles/CSStables/vendor/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css" href="styles/CSStables/css/util.css">
        <link rel="stylesheet" type="text/css" href="styles/CSStables/css/main.css">
        <title>ACTIVIDADES</title>


        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>

    </head>
    <%

        List<actividadObj> totalActividades
                = (List<actividadObj>) request.getSession().getAttribute("listaDeActividadesTotal");

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
                            <span class="navbar-burger burger" data-target="navbarMenuHeroA"></span>
                        </div>

                        <div class="navbar-brand">
                            <div class="navbar-item">
                                <a href="https://twitter.com/AVALES_SV" target="_blank">
                                    <img src="styles/Imagenes/twitter.png" alt="logotipo"/>
                                </a>
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenuHeroA"></span>
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
        </section>

        <!-- SEPARADOR -->

        <section class="hero is-dark">
            <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                <div class="container has-text-centered">
                    <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                        Actividades
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                        Edifiquemos juntos una mejor sociedad
                    </h2>
                </div>
            </div>
        </section>      


        <%--Desde aquí empieza la tabla --%>  
        <div class="limiter">
            <div class="container-table100">
                <div class="wrap-table100">
                    <div class="table100 ver4 m-b-110">
                        <div class="table100-head">
                            <table>
                                <thead>
                                    <tr class="row100 head">
                                        <th class="cell100 column1">Nombre</th>
                                        <th class="cell100 column2">Descripcion</th>
                                        <th class="cell100 column3">Costo</th>
                                        <th class="cell100 column4">Año</th>
                                        <th class="cell100 column5">Mes</th>
                                        <th class="cell100 column6" >Dia</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>

                        <div class="table100-body js-pscroll">
                            <table>
                                <tbody>
                                    <%                                                                        if (totalActividades != null) {
                                            Iterator<actividadObj> ite = totalActividades.iterator();
                                            actividadObj CTemp;
                                            while (ite.hasNext()) {
                                                CTemp = ite.next();

                                    %>
                                    <tr class="row100 body">

                                        <td class="cell100 column1"><a href="ServletMainPage?formid=4&id=<%= CTemp.getId_Actividad()%>"><%= CTemp.getNombre()%></a></td>
                                        <td class="cell100 column2"><%= CTemp.getDescripcion()%></td>
                                        <td class="cell100 column3"><%= CTemp.getCosto()%></td>
                                        <td class="cell100 column4"><%= CTemp.getAnno()%></td>
                                        <td class="cell100 column5"><%= CTemp.getMes()%></td>
                                        <td class="cell100 column6"><%= CTemp.getDia()%></td>

                                    </tr>
                                    <%
                                            }
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
        <script>
            $('.js-pscroll').each(function () {
                var ps = new PerfectScrollbar(this);

                $(window).on('resize', function () {
                    ps.update();
                })
            });
        </script>
        <script src="js/main.js"></script>

        <section class="container has-text-centered">
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
