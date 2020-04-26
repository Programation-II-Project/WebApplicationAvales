<%-- 
    Document   : RelacionesEstrategicas
    Created on : Apr 25, 2020, 5:18:52 PM
    Author     : Josè Gutierrez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             
        <title>Nuestros Aliados </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>

    </head>
    <body>
        <!-- ENCABEZADO--> 
        <section class="hero is-light" >
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


                                <span class="navbar-item">
                                    <div class="button is-primary is-inverted">
                                        <a href="register.jsp">
                                            <span>Registro</span>
                                        </a>
                                    </div>
                                </span> 

                                <span class="navbar-item">
                                    <div class="button is-primary is-inverted">
                                        <a href="login.jsp">
                                            <span>Usuario</span>
                                        </a>
                                    </div>
                                </span>

                                <span class="navbar-item">
                                    <div class="button is-primary is-inverted">
                                        <span class="icon">
                                            <i class="fab"></i>
                                        </span>
                                        <a href="loginAdmin.jsp">Administración</a>
                                    </div>
                                </span>


                            </div>
                        </div>
                    </div>
                </nav>
            </div>

            <!-- Hero content: will be in the middle -->
            <div class="hero-body" >
                <div class="container"> 
                    <img src="styles/Encabezados/avales.png" alt=""/>
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
        
        <!-- Separador -->
        
        <section class="hero is-dark">
            <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                <div class="container has-text-centered">
                    <h1 class="title" style=" align-content: center; font-family: var; font-style: inherit; font-size: 45px; color: gold">
                        Nuestros Aliados
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                        Juntos por un mejor El Salvador
                    </h2>
                </div>
            </div>
        </section>
        <br>
        <br>
        <br>
        
        <section class="container">
            <div class="columns">
                <div class="columns">
                    <img src="styles/Aliados/1.png" alt=""/>
                </div>
                
                <div class="columns">
                    <img src="styles/Aliados/2.png" alt=""/>
                </div>
                
                <div class="columns">
                    <img src="styles/Aliados/3.png" alt=""/>
                </div>
                
            </div>
        </section>
    </body>
</html>
