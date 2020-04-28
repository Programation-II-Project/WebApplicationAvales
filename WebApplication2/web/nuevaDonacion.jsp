<%-- 
    Document   : nuevaDonacion
    Created on : abr 12, 2020, 7:54:04 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Donación</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
    </head>
    <%
        nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
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
                            Bienvenido/a <%= user.getNombre() %>
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            Gracias por tú contribución
                        </h2>
                    </div>
                </div>
            </section>        

        <div class="columns">
            <div class="column">
                <div class="column is-centered">
                    <div class="container">
                        <div class="notification">             
                            <form action="ServletUsuario" method="get">

                                <div class="field">
                                    <label class="label">Número de la Tarjeta:</label>
                                    <div class="control">
                                        <input class="input" type="number" name="Tarjeta" required/>
                                    </div>
                                </div>                                        
                                <br>                                
                                <div class="field">
                                    <label class="label">CVV:</label>
                                    <div class="control">
                                        <input class="input" type="number" name="CVV" required/>
                                    </div>
                                </div>                                        
                                <br>
                                <div class="field">
                                    <label class="label">Mes:</label>
                                    <div class="control">
                                        <input class="input" type="number" name="Mes" required/>
                                    </div>
                                </div>                                          

                                <div class="field">
                                    <label class="label">Año:</label>
                                    <div class="control">
                                        <input class="input" type="number" name="Anno" required/>
                                    </div>
                                </div>
                                
                                <div class="field">
                                    <label class="label">Monto a Donar:</label>
                                    <div class="control">
                                        <input class="input" type="number" name="Donacion" required/>
                                    </div>
                                </div>
                                
                                <div id="navbarMenuHeroA" class="navbar-menu">
                                    <div class="navbar-end">
                                        <span class="navbar-item">
                                            <input class="button is-link" type="submit" value="Create"/>
                                            <input type="hidden" name="formid" value="7" />
                                        </span> 
                                    </div>
                                </div>    

                                <div>
                                    <button class="button is-info"onclick="goBack()">Volver</button>
                                </div>

                                <script>
                                    function goBack() {
                                        window.history.back();
                                    }
                                </script>   
                                <br><br>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
