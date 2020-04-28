<%-- 
    Document   : noEditarSolicitud
    Created on : abr 10, 2020, 12:16:40 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitud</title>
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
                        Atención
                    </h1>
                    <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                        Ya se ha tomado una decision, no se puede aprobar o desaprobar
                    </h2>                    
                </div>
            </div>
        </section> 
        
        <br><br>
        <section class="container has-text-centered">
            <div>
                <button class="button is-info"onclick="goBack()">Volver</button>
            </div>

            <script>
                function goBack() {
                    window.history.back();
                }
            </script>     
        </section>
    </body>
</html>
