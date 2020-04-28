<%-- 
    Document   : login
    Created on : abr 6, 2020, 3:11:42 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/bulma/bulma.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
                                        <a href="register.jsp">
                                            <span>Registro</span>
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
                                        
                                        <span class="navbar-item">
                                            <div class="button is-primary is-inverted">
                                                <a href="RelacionesEstrategicas.jsp">
                                                    <span>Relaciones Estratégicas </span>
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

       
       <section class="hero">
           <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">
               <div class="container has-text-centered">
                   <h1 class="title" style="color: white">
                       Bienvenido
                   </h1>
                   <h2 class="subtitle" style="color: gold">
                       Ingrese sus datos
                   </h2>
               </div>
           </div>
       </section>
       
        <div class="columns">
            <div class="column"></div>
            <div class="column is-two-fifths">
                <div class="container">
                    <div class="notification"> 
                        <form action="RegisterLoginServlet" method="get">
                            <div class="field">
                                <label class="label">Email</label>
                                 <div class="control">
                                    <input class="input" type="text" name="fl_email" placeholder="Ingrese su Email" required>
                                 </div>
                            </div>
                            
                            <br>
                            
                            <div class="field">
                                <label class="label">Contraseña</label> 
                                 <div class="control">
                                    <input class="input" type="password" name="fl_password" placeholder="Ingrese su contraseña" required>
                                 </div>
                            </div>
                            
                            <div class="field is-grouped">
                                <div class="control">
                                    <button class="button is-link">
                                        Ingresar
                                    </button>
                                    <input type="hidden" name="formid" value="2" />
                                </div>
                                    
                                <div class="control">
                                    <button class="button is-white" onclick="goBack()">
                                        Regresar  
                                    </button>
                                    <script>
                                        function goBack() {
                                        window.history.back();
                                        }
                                    </script>
                                </div>
                                    
                            </div>
                    </div>
                </div>
            </div>
            <div class="column"></div>
        </div>       
    </body>
</html>
