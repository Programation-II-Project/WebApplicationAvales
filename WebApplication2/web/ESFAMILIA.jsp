<%-- 
    Document   : ESFAMILIA
    Created on : Apr 23, 2020, 10:42:59 PM
    Author     : Josè Gutierrez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ESFAMILIA</title>
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

                <img src="styles/Encabezados/esfamilia.png" alt="img">

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

        
        <!-- OBJETIVOS-->
        
    <meta charset="utf-8">
    <title>Swiper demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <!-- Link Swiper's CSS -->
    <link href="styles/slider/swiper.min.css" rel="stylesheet" type="text/css"/>

    <!-- Demo styles -->
    <style>
      html, body {
        position: relative;
        height: 100%;
      }
      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color:#000;
        margin: 0;
        padding: 0;
      }
      .swiper-container {
        width: 100%;
        height: 60%;
        background: #000;
      }
      .swiper-slide {
        font-size: 18px;
        color:#fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        padding: 40px 60px;
      }
      .parallax-bg {
        position: absolute;
        left: 0;
        top: 0;
        width: 130%;
        height: 100%;
        -webkit-background-size: cover;
        background-size: cover;
        background-position: center;
      }
      .swiper-slide .title {
        font-size: 53px;
        font-weight: 300;
        font-family: var;
      }
      .swiper-slide .subtitle {
        font-size: 23px;
        font-family: var;
        font-style: inherit;
      }
      .swiper-slide .text {
        font-size: 16px;
        max-width: 400px;
        line-height: 1.6;
        font-style: inherit;
      }

    </style>
</head>
<body>
    <!-- Swiper -->
    <div class="swiper-container">
        <div class="parallax-bg" style="background-image:url(styles/Imagenes/Mapa.png)" data-swiper-parallax="-23%"></div>
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="title" data-swiper-parallax="-300" style=" color: darkviolet">Educación Familiar</div>
                <div class="subtitle" data-swiper-parallax="-200" style=" color: plum">¿Por qué fortalecerla?</div>
                <div class="text" data-swiper-parallax="-100">
                    <p>Porque los hijos siguen necesitando a los padres, las relaciones afectivas que han mantenido con ellos, desde su nacimiento, les ayudarán a adquirir <strong style=" color: plum">los rasgos que los convertirán en seres humanos honorables.</strong> Aplicando <strong style=" color: plum">principios</strong> en las <strong style=" color: plum">relaciones humanas</strong> se constituyen las raíces de la formación del carácter.</p>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="title" data-swiper-parallax="-300" data-swiper-parallax-opacity="0" style=" color: darkviolet">Propósito</div>
                <div class="subtitle" data-swiper-parallax="-200"style=" color: plum"></div>
                <div class="text" data-swiper-parallax="-100">
                <br>
                    <p><strong style=" color: plum">El bienestar de la familia</strong> produce paz y prosperidad. <strong style=" color: plum">Activando el potencial de los padres</strong> para que defiendan sus hogares aplicando principios en la vida, <strong style=" color: plum">no hay por qué temer al futuro.</strong></p>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="title" data-swiper-parallax="-300" style=" color: darkviolet">Objetivo General</div>
                <div class="subtitle" data-swiper-parallax="-200"style=" color: plum"></div>
                <div class="text" data-swiper-parallax="-100">
                <br>
                    <p>Crear <strong style=" color: plum">conciencia en los padres </strong> exponiéndolos a principios básicos de educación familiar. Ayudándoles a <strong style=" color: plum">descubrir</strong> su propósito y <strong style=" color: plum">activar</strong> su potencial como padres.</p>
                </div>
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-white"></div>
        <!-- Add Navigation -->
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
    </div>

    <!-- Swiper JS -->
    <script src="styles/slider/swiper.min.js" type="text/javascript"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper('.swiper-container', {
        speed: 600,
        parallax: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    </script>

        
    </body>
</html>
