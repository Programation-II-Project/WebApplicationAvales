<%-- 
    Document   : Galeria
    Created on : Apr 22, 2020, 9:55:50 PM
    Author     : Josè Gutierrez
--%>
<!DOCTYPE html>
<html lang="es">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta http-equiv="X-UA-Compatible" content="ie=edge">
     
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
     
     <title>Galería | AMARTE</title>
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
                                
                                <span class="navbar-item">
                                    <div class="button is-primary is-inverted">
                                        <a href="Amarte.jsp">
                                            <span>Volver</span>
                                        </a>
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
            
        </section>
    <!-- Separador-->
    
    <section class="hero is-dark">
      <div class="hero-body" style=" background-image: url(styles/Imagenes/ff.png)">

    <div class="container has-text-centered">
        <img style="width: 440px; height: 200px;" src="styles/Imagenes/VUELA-Logo.png" alt=""/>
      <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: black">
        Agrega sólo forma... y volará
      </h2>
    </div>
  </div>
  </section>
    <br>
        
        <!-- Galeria -->
    <section>
        
        <link href="styles/Overlay/estilos.css" rel="stylesheet" type="text/css"/>
        
    <div class="galeria">
        <div class="contenedor-imagenes">
            <div class="imagen">
                <img src="styles/Overlay/img/1.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/1.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/2.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/2.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/3.PNG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/3.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/4.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/4.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/5.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/5.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/6.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/6.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/7.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/7.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/8.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/8.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/9.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/9.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/10.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/10.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/11.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/11.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/12.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/12.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/13.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/13.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/14.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/14.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/15.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/15.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/16.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/16.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/17.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/17.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/18.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/18.1.jpg" alt=""/>
                </div>
            </div>
            <div class="imagen">
                <img src="styles/Overlay/img/19.JPG" alt=""/>
                <div class="overlay">
                    <img src="styles/Overlay/img/19.1.jpg" alt=""/>
                </div>
            </div>
            
        </div>
    </div>
    </section>


</body>
</html>

        