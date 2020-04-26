<%-- 
    Document   : VALORES
    Created on : Apr 23, 2020, 9:17:03 PM
    Author     : Josè Gutierrez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>VALORES</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        
        
        <title>VALORES</title>
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
                    <img src="styles/Encabezados/valores.png" alt=""/>
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
        
         <!-- Presentacion de imagenes-->
        
        <!DOCTYPE html>

  <meta charset="utf-8">
  <title>Swiper demo</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

  <!-- Link Swiper's CSS -->
  <link href="styles/slider/swiper.min.css" rel="stylesheet" type="text/css"/>

  <!-- Demo styles -->
  <style>
    html, body {
      position: relative;
      height: 80%;
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
      height: 80%;

    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
  </style>
\
  <!-- Swiper -->
  <div class="swiper-container">
    <div class="swiper-wrapper">
        
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/INTEGRIDAD.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/CONVICCIÓN.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/AUTO-DISCIPLINA.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/DILIGENCIA.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/SABIDURÍA.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/LEALTAD.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/VALENTÍA.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/HUMILDAD.png)"></div>

      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/CONVICCIÓN.png)"></div>
      
      <div class="swiper-slide" style="background-image: url(styles/slider/VALORES/GRATITUD.png)"></div>

    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>

  <!-- Swiper JS -->
  <script src="styles/slider/swiper.min.js" type="text/javascript"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 3200,
        disableOnInteraction: false,
      },
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
  <br>
  <section class="hero is-dark">
      <div class="hero-body" style=" background-image: url(styles/Imagenes/rectangulos.jpg)">

    <div class="container has-text-centered">
        <h1 class="title" style=" align-content: center; font-style: inherit; color: darkblue">
        Nuestros enfoques de trabajo
      </h1>
      <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: black">
        Educación y Finanzas
      </h2>
    </div>
  </div>
  </section>
      
      <section class=" container">
          <div class=" columns"> 
              <div class=" column"> 
                  <article class="message">
                      <div class="message-body" style=" background-color: #002752 ">
                          <h1 class="title" style=" align-content: flex-start; font-family: serif; font-style: italic; color: yellow">Educación</h1>
                          <h2 style=" color: #eee"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.</h2>
                      </div>
                  </article>
              </div>
              
              <div class=" column"> 
                  <article class="message">
                      <div class="message-body" style=" background-color: #002752 ">
                          <h1 class="title" style=" align-content: flex-start; font-family: serif; font-style: italic; color: yellow">Finanzas</h1>
                          <h2 style=" color: #eee"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.</h2>
                      </div>
                  </article>
              </div>
          </div>
      </section>
    </body>
</html>
