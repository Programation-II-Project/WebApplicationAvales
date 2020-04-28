<%-- 
    Document   : nuevoProyecto
    Created on : abr 10, 2020, 5:40:23 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear proyecto</title>
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
                        Crear un nuevo proyecto
                    </h1>
                </div>
            </div>
        </section>

        <br><br>

        <div class="columns">
            <div class="column">
                <div class="column is-centered">
                    <div class="container">
                        <div class="notification">             
                            <form action="ServletAdmin" method="get">

                                <div class="field">
                                    <label class="label">Nombre del proyecto:</label>
                                    <div class="control">
                                        <input class="input" type="text" name="proyecto" required/>
                                    </div>
                                </div>                                        
                                <br>
                                <div class="field">
                                    <label class="label">Descripción:</label>
                                    <div class="control">
                                        <textarea name="descripcion" class="textarea is-focused" placeholder="Describe el proyecto" rows="10" cols="40" maxlength="500" required></textarea>
                                    </div>
                                </div>                                         
                                <br>
                                <div class="field">
                                    <label class="label">Lugar:</label>
                                    <div class="control">
                                        <textarea name="lugar" class="textarea is-focused" placeholder="Dirección" rows="4" cols="40" maxlength="100" required></textarea>
                                    </div>
                                </div> 
                                <br>
                                <div class="field">
                                    <label class="label">Foto:</label>
                                    <div class="control">
                                        <input class="input" type="text" name="foto" placeholder="Example.jpg" required/>
                                    </div>
                                </div>                                        
                                <br>
                                <div class="field">
                                    <label class="label">Video:</label>
                                    <div class="control">
                                        <input class="input" type="text" name="video" placeholder="Example.mp4" required/>
                                    </div>
                                </div>                                          

                                <div id="navbarMenuHeroA" class="navbar-menu">
                                    <div class="navbar-end">
                                        <span class="navbar-item">
                                            <input class="button is-link" type="submit" value="Create"/>
                                            <input type="hidden" name="formid" value="6" />
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

                                <!--<input type="submit" value="Create" />
                                <input type="hidden" name="formid" value="6" /> -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <br><br>

</body>
</html>
