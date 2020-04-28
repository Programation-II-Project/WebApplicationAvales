<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CALENDARIO</title>

        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>

    </head>
    <%
        List<actividadObj> totalActividades
                = (List<actividadObj>) request.getSession().getAttribute("listaDeActividadesTotal");

        int dia = 0;
        int mes = 0;
        int anno = 0;
        String Titulo = "Naniiiiii!";
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
                        Bienvenido
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                        Calendarización de las actividades de AVALES
                    </h2>
                </div>
            </div>
        </section>      

        <section class="container"> 


            <link rel="stylesheet" href="styles/calendar/demo.css"/>
            <link rel="stylesheet" href="styles/calendar/theme1.css"/>

            <br><br>
            <div id="caleandar">
                <script type="text/javascript" src="styles/calendar/caleandar.js"></script>
                <script type="text/javascript">
                    var events = [
                    <%
                            if (totalActividades != null) {
                                Iterator<actividadObj> ite = totalActividades.iterator();
                                actividadObj CTemp;
                                while (ite.hasNext()) {
                                    CTemp = ite.next();
                                    dia = CTemp.getDia();
                                    mes = CTemp.getMes() - 1;
                                    anno = CTemp.getAnno();
                                    Titulo = CTemp.getNombre();

                    %>
                        {'Date': new Date(<%= anno%>, <%= mes%>, <%= dia%>), 'Title': '<%= Titulo%> -Costo: <%= CTemp.getCosto()%>'},
                    <%
                                }
                            }
                    %>
                            ];
                </script>

                <script type="text/javascript">
                    var settings = {};
                    var element = document.getElementById('caleandar');
                    caleandar(element, events, settings);
                </script>
            </div>
            <br>
                    <div class="buttons">
                        <a href="CalendarizacionTabla.jsp">
                            <button class=" button is-link">Ver la calendarización completa</button>
                        </a>
                    </div>

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
