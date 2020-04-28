<%-- 
    Document   : register
    Created on : abr 6, 2020, 3:11:30 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" href="styles/bulma/bulma.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        
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
        
        <!--<section class="hero is-link">
            <div class="hero-body">
              <div class="container">
                <h1 class="title">
                  Formulario AVALES
                </h1>
                <h2 class="subittle">
                  ¡Llena el siguiente formulario para registrarte!
                </h2>
              </div>
            </div>
        </section> -->
        
<section class="hero">
    <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">
    <div class="container has-text-centered">
        <h1 class="title" style="color: white">
        Asociación Acción de Valores para El Salvador
      </h1>
        <h2 class="subtitle" style="color: gold">
        Registro
      </h2>
    </div>
  </div>
</section>
        
         <div class="columns">
            <div class="column"></div>
            <div class="column is-three-fifths">
                <div class="container">
                    <div class="notification"> 
                        <form action="RegisterLoginServlet" method="get">
                            
                            <div class="field">
                                <label class="label">Nombre</label>
                                <div class="control">
                                    <input class="input" type="text" name="f_nombre" autocomplete="off" placeholder="Ingrese su nombre" required>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Email</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_email" autocomplete="off" placeholder="Ingrese su Email" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Contraseña</label>
                                 <div class="control">
                                    <input class="input" type="password" name="f_password" placeholder="Ingrese su contraseña" required>
                                 </div>

                            </div>                            

                            
                            <div class="field">                               
                                <div class="field-body">
                                  <div class="field">
                                      <label class="label">Teléfono de casa</label>
                                      <p class="control is-expanded">
                                          <input class="input" type="text" name="f_telefono" autocomplete="off" placeholder="Ingrese su número telefónico de casa">
                                      </p>
                                  </div>     
                                  <div class="field">
                                    <label class="label">Teléfono celular</label>
                                    <p class="control is-expanded">
                                        <input class="input" type="text" name="f_celular" autocomplete="off" placeholder="Ingrese su número de teléfono celular" required>   
                                    </p>
                                  </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Profesión</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_profesion" autocomplete="off" placeholder="Ingrese su profesión" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Dirección</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_direccion" autocomplete="off" placeholder="Ingrese su dirección" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Fecha de nacimiento</label>
                                 <div class="control">
                                    <input class="input" type="date" name="f_fecha" autocomplete="off" placeholder="Ingrese su fecha de nacimiento" required>
                                 </div>
                            </div> 
                            
                            <div class="select">
                                <label class="label">Estado civil</label>
                                <select id="f_estatus" name="f_estatus">
                                    <option value="Soltero">Soltero/a</option>
                                    <option value="Casado">Casado/a</option>
                                    <option value="Divorciado">Divorciado/a</option>
                                </select>
                            </div>
                            
                            <br>
                            <br>
                            <br>
                            
                            <div class="field">
                                <label class="label">Facebook</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_facebook" autocomplete="off" placeholder="Ingrese su usuario de facebook">
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Twitter</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_twitter" autocomplete="off" placeholder="Ingrese su usuario de twetter">
                                 </div>
                            </div>
                          
                 
                            <label class="label">Áreas de influncia en la sociedad</label>
             
                            <div class="field">
                                <label class="label">Familia</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_familia" name="f_familia">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                     </div>
                                </div>
                            </div>
                           
                            <div class="field">
                                <label class="label">Iglesia/Religión</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_iglesia" name="f_iglesia">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Estado/Gobierno/Política</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_estado" name="f_estado">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Medios de comunicación</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_mc" name="f_mc">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Educación y ciencia</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_educacion" name="f_educacion">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Economía y negocios</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_economia" name="f_economia">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Artes/Deporte/Cultura</label>
                                <div class="control">
                                    <div class="select">
                                        <select id="f_artes" name="f_artes">
                                            <option value="0">No</option>
                                            <option value="1">Sí</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="field is-grouped">
                                    <div class="control">
                                      <button class="button is-link">
                                          Crear
                                      </button>
                                      <input type="hidden" name="formid" value="1" />
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
                        </form>
                    </div>
                </div> 
            </div>
                            
            <div class="column"></div>
        
        </div>
               
        
        <br><br>
    </body>
</html>

        <!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    
    <body>
        <h1>Llena el siguiente formulario para registrarte!</h1>
        <br><br>
        
        <form action="RegisterLoginServlet" method="get">
            Nombre: <input type="text" name="f_nombre" required/>
            <br><br>
            Email: <input type="text" name="f_email" required/>
            <br><br>
            Contraseña:  <input type="password" name="f_password" required>
            <br><br>
            Telefono casa: <input type="text" name="f_telefono" />
            <br><br>
            Celular: <input type="text" name="f_celular" required/>
            <br><br>
            Profesión: <input type="text" name="f_profesion" required/>
            <br><br>
            Dirección: <input type="text" name="f_direccion" required/>
            <br><br>
            Fecha de nacimiento: <input type="date" name="f_fecha" required/>
            <br><br>
            Estado Civil: <select id="f_estatus" name="f_estatus">
                          <option value="Soltero">Soltero/a</option>
                          <option value="Casado">Casado/a</option>
                          <option value="Divorciado">Divorciado/a</option>
                          </select>*
            <br><br>    
            Facebook: <input type="text" name="f_facebook" />
            <br><br>
            Twitter: <input type="text" name="f_twitter" />
            <br><br>
   
           <h5> Áreas de influencia en la sociedad</h5>
            
            Familia:<select id="f_familia" name="f_familia">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br> 
            Iglesia/Religión:<select id="f_iglesia" name="f_iglesia">
                             <option value="0">No</option>
                             <option value="1">Sí</option>
                             </select>
            <br><br>
            Estado/Gobierno/Politica:<select id="f_estado" name="f_estado">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Medios de comunicación:<select id="f_mc" name="f_mc">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Educación y ciencia:<select id="f_educacion" name="f_educacion">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Economia y negocios:<select id="f_economia" name="f_economia">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Artes/Deporte/Cultura:<select id="f_artes" name="f_artes">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="1" />
        </form>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html> -->
