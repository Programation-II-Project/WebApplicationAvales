<%-- 
    Document   : Amarte
    Created on : Apr 22, 2020, 6:56:21 PM
    Author     : Josè Gutierrez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AMARTE</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>


        <title>AMARTE</title>
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
                                <a href="https://instagram.com/amarte_sv?r=nametag" target="_blank">
                                    <img src="styles/Imagenes/In1.png" alt="logotipo"/>
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
                                <a href="https://www.facebook.com/amarte.sv/" target="_blank">
                                    <img src="styles/Imagenes/Fe1.png" alt="logotipo"/>
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
                                <a href="https://twitter.com/AmArte_sv" target="_blank">
                                    <img src="styles/Imagenes/Tw1.png" alt="logotipo"/>
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
                                        <a href="Galeria.jsp">
                                            <span>Galería</span>
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



            <div class="hero-body">
                <div class="container"> 

                    <img src="styles/Encabezados/amartee.png" alt="img">

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

            <!-- INFO -->

<div class="tile is-ancestor">
  <div class="tile is-4 is-vertical is-parent">
    <div class="tile is-child box" style=" background-image: url(styles/Imagenes/back.png)">
        <p class="title has-text-centered" style="color: #002752; font-family: var; font-style: oblique">Nace</p>
      <p>El año 2019, con su primer proyecto 
          denominado, “Vuela, Sueños de Acuarelas”, el
          cual presenta, una serie de exposiciones de
          pinturas. Son 19 jóvenes que compartieron sus
          historias personales, con sus desafíos superados y
          grandes batallas ganadas, para realizar su sueño de
          estudiar en la ESEN.</p>
    </div>
    <div class="tile is-child box" style=" background-image: url(styles/Imagenes/back.png)">
      <p class="title has-text-centered" style="color: #002752; font-family: var; font-style: oblique">Nace</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p>
    </div>
  </div>
  <div class="tile is-parent">
    <div class="tile is-child box" style=" background-image: url(styles/Imagenes/back.png)">
        <p class="title has-text-centered" style="color: #002752; font-family: var; font-style: oblique">¿Qué es?</p>
      <p>Es un programa de beneficio social
      respaldado por AVALES, que impulsa, a través
      de las artes plásticas crear obras artísticas
      inspiradas en diversas historias de seres
      humanos con gran potencial para motivar a
      otros, a fin de promover la autosuperación.</p>
      <p>De esta forma, AMARTE contribuye a iluminar
          la vida de un ser humano, exponiéndole a
          grandes oportunidades, y conectándole con
          gente altruista como usted.</p>

    </div>
  </div>
</div>
        </section>
    </body>
</html>
