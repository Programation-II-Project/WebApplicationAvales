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
        
        <section class="hero is-link">
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
                                    <input class="input" type="text" name="f_nombre" placeholder="Ingrese su nombre" required>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Email</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_email" placeholder="Ingrese su Email" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Contraseña</label>
                                 <div class="control">
                                    <input class="input" type="password" name="f_password" placeholder="Ingrese su contraseña" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Escriba de nuevo su contraseña</label>
                                 <div class="control">
                                    <input class="input" type="password" name="f_passwordComprobacion" placeholder="Ingrese su contraseña" required>
                                 </div>
                            </div>
                            
                            <div class="field">                               
                                <div class="field-body">
                                  <div class="field">
                                      <label class="label">Teléfono de casa</label>
                                      <p class="control is-expanded">
                                        <input class="input" type="text" name="f_telefono" placeholder="Ingrese su número telefónico de casa">
                                      </p>
                                  </div>     
                                  <div class="field">
                                    <label class="label">Teléfono celular</label>
                                    <p class="control is-expanded">
                                        <input class="input" type="text" name="f_celular" placeholder="Ingrese su número de teléfono celular" required>   
                                    </p>
                                  </div>
                                </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Profesión</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_profesion" placeholder="Ingrese su profesión" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Dirección</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_direccion" placeholder="Ingrese su dirección" required>
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Fecha de nacimiento</label>
                                 <div class="control">
                                    <input class="input" type="date" name="f_fecha" placeholder="Ingrese su fecha de nacimiento" required>
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
                                    <input class="input" type="text" name="f_facebook" placeholder="Ingrese su usuario de facebook">
                                 </div>
                            </div>
                            
                            <div class="field">
                                <label class="label">Twitter</label>
                                 <div class="control">
                                    <input class="input" type="text" name="f_twitter" placeholder="Ingrese su usuario de twetter">
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
