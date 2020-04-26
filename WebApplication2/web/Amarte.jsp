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
            
            <!-- Informacion-->
<div class="tile is-ancestor">
  <div class="tile is-vertical is-12">
    <div class="tile">
      <div class="tile is-parent is-vertical">
        <article class="tile is-child notification is-primary">
            <p class="title" style="color: white; align-content: center">AMARTE</p>
            <p class="subtitle" style="color: ghostwhite; align-content: center">
                Es un programa de beneficio social
                respaldado por AVALES, que impulsa, a través
                de las artes plásticas crear obras artísticas
                inspiradas en diversas historias de seres
                humanos con gran potencial para motivar a
                otros, a fin de promover la autosuperación.</p>
            <p class="subtitle" style="color: ghostwhite; align-content: center">
                De esta forma, AMARTE contribuye a iluminar
                la vida de un ser humano, exponiéndole a
                grandes oportunidades, y conectándole con
                gente altruista como usted.</p>
        </article>
        <article class="tile is-child notification is-warning">
          <p class="title">Nace</p>
          <p class="subtitle">El año 2019, con su primer proyecto
              denominado, “Vuela, Sueños de Acuarelas”, el
              cual presenta, una serie de exposiciones de
              pinturas. Son 19 jóvenes que compartieron sus
              historias personales, con sus desafíos superados y
              grandes batallas ganadas, para realizar su sueño de
              estudiar en la ESEN.</p>
        </article>
      </div>
      <div class="tile is-parent">
        <article class="tile is-child notification is-info">
          <p class="title">Middle tile</p>
          <p class="subtitle">With an image</p>
          <figure class="image is-4by3">
            <img src="https://bulma.io/images/placeholders/640x480.png">
          </figure>
        </article>
      </div>
    </div>
  </div>
</div>
            
        </section>
        
    </body>
</html>
