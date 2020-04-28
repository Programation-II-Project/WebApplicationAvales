<%-- 
    Document   : solicitudDeAyuda
    Created on : abr 9, 2020, 12:56:44 p.m.
    Author     : Abel_
--%>
<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AYUDA</title>
        
                <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        
    </head>
    <%
        nuevoRegistroObj user
                = (nuevoRegistroObj) request.getSession().getAttribute("logged_user");
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
        <%= user.getNombre() %>
      </h2>
    </div>
  </div>
  </section>
      <br>
      <br>
      <div class="container has-text-centered">
        <h1 style="font-family: sans-serif; font-style: oblique; color: darkblue">Por favor selección el programa del cual quiere apoyo y expliquenos a detalle su solicitud.</h1>
        <form action="ServletUsuario" method="get" style="font-family: sans-serif; font-style: oblique; color: darkblue">
            <br><br><br>
            <div class="select">
                <select id="f_proyecto" name="f_proyecto">
                    <option value="VALORES">VALORES</option>
                    <option value="AMARTE">AMARTE</option>
                    <option value="ESFAMILIA">ESFAMILIA</option>
                </select>
            </div>
            <br><br><br><br>
            <div class="control">
                <textarea name="f_descripcion" class="textarea is-focused" placeholder="Describe la ayuda que solicitas" rows="10" cols="40"></textarea>
            </div>
            <div class="container">
                <div id="navbarMenuHeroA" class="navbar-menu">
                    <div class="navbar-end">
                        <span class="navbar-item">
                            <input class="button is-link" type="submit" value="Create"/>
                            <input type="hidden" name="formid" value="1" />
                        </span> 
                    </div>
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
            
        </form>
      </div>
    </body>
</html> 
