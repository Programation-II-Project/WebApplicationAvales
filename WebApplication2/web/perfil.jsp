<%-- 
    Document   : perfil
    Created on : abr 8, 2020, 12:16:09 p.m.
    Author     : Abel
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PERFIL DEL USUARIO</title>

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
                            Bienvenido/a
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            <%= user.getNombre()%>
                        </h2>
                    </div>
                </div>
            </section>
      
      <!-- CUERPO -->
      <div class="columns">
          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="solicitudDeAyuda.jsp">
                      <img src="styles/Imagenes/Lista.png" alt="" style=" width: 40%; height: 40%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Solicitar ayuda especializada
                      </div>
                  </div>
                  </div>
              </article>
          </div>

          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="ServletUsuario?formid=2">
                      <img src="styles/Imagenes/Lista.png" alt="" style=" width: 40%; height: 40%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Ver solicitudes y administrarlas
                      </div>
                  </div>
                  </div>
              </article>
          </div>
          
          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="ServletUsuario?formid=6">
                      <img src="styles/Imagenes/Lista.png" alt="" style=" width: 40%; height: 40%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Donaciones
                      </div>
                  </div>
                  </div>
              </article>
          </div>    
          
          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="Mensajeria.jsp">
                      <img src="styles/Imagenes/burbuja.png" alt="" style=" width: 40%; height: 40%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Mensajería
                      </div>
                  </div>
                  </div>
              </article>
          </div>             
      </div>
    </body>
</html>
