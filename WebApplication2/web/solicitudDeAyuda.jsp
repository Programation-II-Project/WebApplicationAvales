<%-- 
    Document   : solicitudDeAyuda
    Created on : abr 9, 2020, 12:56:44 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>

        <title>AYUDA</title>
    </head>
        <body style="background-color:#0B184F"> 
        <div class="container is-fluid">
            <div style="color:#fff">
            <h1>Llene el siguiente formulario para pedir ayuda especializada a AVALES</h1>
                <form action="ServletUsuario" method="get">
                    Proyecto de Avales al que se quiere pedir ayuda: <div class="select is-small">
                                                                     <select id="f_proyecto" name="f_proyecto">
                                                                     <option value="VALORES">VALORES</option>
                                                                     <option value="AMARTE">AMARTE</option>
                                                                     <option value="ESFAMILIA">ESFAMILIA</option>
                                                                     </select>
                                                                     </div>
            <br><br>
            Descripción:
            <br><br>
            <textarea class="textarea is-normal" name="f_descripcion" rows="10" cols="40" maxlength="500" required placeholder="Escribe aquí tus comentarios"></textarea>
            <br><br>
            <input class="button" type="submit" value="Create" />
            <input type="hidden" name="formid" value="1" />
        </form>
        <br><br>
        <button class="button" onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
                </div>
            </div>
    </body>
</html>
