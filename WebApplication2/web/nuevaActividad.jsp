<%-- 
    Document   : nuevaActividad
    Created on : abr 18, 2020, 10:35:25 a.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>

    </head>
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
                        Descripción de la Actividad
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                        
                    </h2>
                </div>
            </div>
        </section>      


<!-- Actividad -->
<section class="container has-text-centered">
        <h1>Actividad</h1>
        <form action="ServletAdmin" method="get">
            Nombre de la actividad: <input type="text" name="Nombre" autocomplete="off" required/>
            <br><br>
            Descripcion:
            <br><br>
            <textarea name="Descripcion" rows="10" cols="40" maxlength="400" required>Descripcion de la actividad (Recuerda agregar la hora)</textarea>
            <br><br>
            Encargado: <input type="text" name="Encargado" autocomplete="off" required/>
            <br><br>
            Costo de la actividad: <input type="number" step="any" name="Costo" required/>
            <br><br>
            Año: <input type="number" name="Anno" required/>
            <br><br>
            Mes: <input type="number" min="1" max="12" name="Mes" required/>
            <br><br>
            Dia: <input type="number" min="1" max="31" name="Dia" required/>
            <br><br>
            Banner: <input type="text" name="Banner" placeholder="NombreDeLaFoto.jpg" required/> 
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="14" />
        </form>
        <br><br>
        

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
</section>
    </body>
</html>
