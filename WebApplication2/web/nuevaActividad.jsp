<%-- 
    Document   : nuevaActividad
    Created on : abr 18, 2020, 10:35:25 a.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Nueva Actividad</title>

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
                        Nueva actividad
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">

                    </h2>
                </div>
            </div>
        </section>      


        <!-- Actividad -->

        <br>
        <div class="columns">
            <div class="column">
            <div class="column is-centered">
                <div class="container">
                    <div class="notification"> 
                        <form action="ServletAdmin" method="get">

                            <div class="field">
                                <label class="label">Nombre de la actividad:</label>
                                <div class="control">
                                    <input class="input" type="text" name="Nombre" required/>
                                </div>
                            </div>
                            <br>
                            <div class="field">
                                <label class="label">Descripción:</label>
                                <div class="control">
                                    <textarea name="Descripcion" class="textarea is-focused" placeholder="Descripción de la actividad (incluyendo la hora)" rows="10" cols="40" maxlength="400" required></textarea>
                                </div>
                            </div> 
                            <br>
                            <div class="field">
                                <label class="label">Encargado:</label>
                                <div class="control">
                                    <input class="input" type="text" name="Encargado" required/>
                                </div>
                            </div>                            
                            <br>
                            <div class="field">
                                <label class="label">Costo de la Actividad:</label>
                                <div class="control">
                                    <input class="input" type="number" step="any" name="Costo" required/>
                                </div>
                            </div>

                            <br>
                            <div class="field">
                                <label class="label">Año:</label>
                                <div class="control">
                                    <input class="input" type="number" name="Anno" required/>
                                </div>
                            </div>
                            <br>
                            <div class="field">
                                <label class="label">Mes:</label>
                                <div class="control">
                                    <input class="input" type="number" min="1" max="12" name="Mes" required/>
                                </div>
                            </div>            
                            <br>
                            <div class="field">
                                <label class="label">Día:</label>
                                <div class="control">
                                    <input class="input" type="number" min="1" max="31" name="Dia" required/>
                                </div>
                            </div>            
                            <br>
                            <div class="field">
                                <label class="label">Banner:</label>
                                <div class="control">
                                    <input class="input" type="text" name="Banner" placeholder="NombreDeLaFoto.jpg" required/>
                                </div>
                            </div>            

                            <div id="navbarMenuHeroA" class="navbar-menu">
                                <div class="navbar-end">
                                    <span class="navbar-item">
                                        <input class="button is-link" type="submit" value="Create"/>
                                        <input type="hidden" name="formid" value="14" />
                                    </span> 
                                </div>
                            </div>

                            <div>
                                <button class="button is-info"onclick="goBack()">Volver</button>
                            </div>

                            <script>
                                function goBack() {
                                    window.history.back();
                                }
                            </script>                            
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <br><br>
</body>
</html>
