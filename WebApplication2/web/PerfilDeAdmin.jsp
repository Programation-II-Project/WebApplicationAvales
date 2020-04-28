<%-- 
    Document   : PerfilDeAdmin
    Created on : abr 8, 2020, 3:24:27 p.m.
    Author     : Abel_Yo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>        
        
    </head>
    <body>
        
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Bienvenido/a administrador
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            Un gusto verte nuevamente
                        </h2>
                    </div>
                </div>
            </section>
            <br><br>                        
            
      <!-- CUERPO -->
      <section class="container has-text-centered">      
      <div class="columns">
          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="ServletAdmin?formid=1">
                      <img src="styles/Imagenes/solicitudes.png" alt="" style=" width: 30%; height: 30%;"/>
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
                          <a href="ServletAdmin?formid=5">
                      <img src="styles/Imagenes/proyectos.png" alt="" style=" width: 30%; height: 30%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Administrar proyectos
                      </div>
                  </div>
                  </div>
              </article>
          </div>    
          
          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="ServletAdmin?formid=13">
                      <img src="styles/Imagenes/actividades.png" alt="" style=" width: 30%; height: 30%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Administrar calendarización
                      </div>
                  </div>
                  </div>
              </article>
          </div> 
      </div>
      <div class="columns">
          <div class="column">
              <article class="message">
                  <div class="message-body" style=" background-color: lightgray ">
                      <div class="container has-text-centered">
                          <a href="ServletAdmin?formid=10">
                      <img src="styles/Imagenes/Corazon.png" alt="" style=" width: 30%; height: 30%;"/>
                          </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Ver donaciones
                      </div>
                  </div>
                  </div>
              </article>
          </div>          
      
      <div class="column">
          <article class="message">
              <div class="message-body" style=" background-color: lightgray ">
                  <div class="container has-text-centered">
                      <a href="bandejaEntradaAdmin.jsp">
                          <img src="styles/Imagenes/bandeja.png" alt="" style=" width: 30%; height: 30%;"/>
                      </a>
                      <br>
                      <div class="subtitle" style=" color: darkblue; font-family: serif; font-style: italic;">
                          Bandeja de Mensajes
                      </div>
                  </div>
              </div>
          </article>
      </div>          
    </div>
          <br>
          <br>

          <div class="buttons is-centered">
              <a href="index.html">
              <button class="button is-info">Inicio</button>
              </a>
          </div>  
          <br><br>
      </section>
    </body>
</html>
