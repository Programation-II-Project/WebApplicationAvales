<%-- 
    Document   : registro1exito
    Created on : abr 7, 2020, 7:47:33 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmación</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        
    </head>
    <%
    boolean bHasFailed = 
            (boolean)request.getSession().getAttribute("bHasFailed");
    
    nuevoRegistroObj registroEntrante =
            (nuevoRegistroObj)request.getSession().getAttribute("registroEntrante");

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
        
        <%
            if(!bHasFailed)
            {
        %>
        
<section class="hero is-dark">
      <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

    <div class="container has-text-centered">
        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
        Bienvenido/a
      </h1>
      <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
        Registro realizado exitosamente
      </h2>
    </div>
  </div>
    <br><br>
    <div class="button is-primary is-inverted">
        <a href="index.html">
            <span>Inicio</span>
        </a>
    </div>    
    <br><br>
    <div class="button is-primary is-inverted">
        <a href="RegisterLoginServlet?formid=2&fl_email=<%= registroEntrante.getEmail() %>&fl_password=<%= registroEntrante.getPassword() %>">
            <span>Perfil</span>
        </a>
    </div>          
</section>        

        <%
            }
            else
            {   
        %>
        
        
<section class="hero is-dark">
      <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

    <div class="container has-text-centered">
        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
        Cuidado
      </h1>
      <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
        Por favor, llenar correctamente la información 
      </h2>
    </div>
  </div>
    <br><br>
    <div class="button is-primary is-inverted">
        <a href="register.jsp">
            <span>Volver</span>
        </a>
    </div>
</section>    
        <br><br>   
        
        <%
            }
        %>
        <br><br>
    </body>
</html>
