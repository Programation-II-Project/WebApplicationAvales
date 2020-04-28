<%-- 
    Document   : ProyectosAvales
    Created on : abr 10, 2020, 7:18:27 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.proyectoObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyectos en curso</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>        
        
    </head>
    <%
        proyectoObj proyecto = 
                (proyectoObj)request.getSession().getAttribute("proyectoAVer");
        
        String a = proyecto.getVideo();
        String ruta_video = "videos/"+a;
        
        String c = proyecto.getFoto();
        String ruta_foto = "imagenes/"+c;
        
        
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
                            Proyectos activos
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            Acciones de valor para El Salvador
                        </h2>
                    </div>
                </div>
            </section>
            <br><br>
            <section class="container has-text-centered">
                <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: darkblue"><%= proyecto.getNombreProyecto() %></h1>
                <h3 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: blue"><%= proyecto.getDescripcion() %></h3>
                <image src="<%= ruta_foto %>" style="width: 50%; height: 50%"/>
                <video src="<%= ruta_video %>" width=620  height=540 autoplay loop ></video>
                <br><br>
                <h class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: blue"><%= proyecto.getLugar() %></h>
                <br><br>

                <div>
                    <button class="button is-info"onclick="goBack()">Volver</button>
                </div>

                <script>
                    function goBack() {
                        window.history.back();
                    }
                </script>        
        <br><br>
            </section>
    </body>
</html>
