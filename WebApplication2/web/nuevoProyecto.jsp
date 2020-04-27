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
        <title>Nuevo Proyecto</title>
    </head>
    <body style="background-color:#EAEAEA" class="container is-fluid">
        <h1 style="color:#170D61">Crear nuevo proyecto</h1>
        <div style="color:#000000">
        <form action="ServletAdmin" method="get">
            <div class="label">Nombre Proyecto</div>
            <input class="input is-info" type="text" name="proyecto" required/>
            <br><br>
            <div class="label">Descripción:</div>
            <br><br>
            <textarea class="textarea are-medium" name="descripcion" rows="10" cols="40" maxlength="500" required></textarea>
            <br><br>
            <div class="label">Lugar:</div>
            <textarea class="textarea are-medium" name="lugar" rows="4" cols="40" maxlength="100" required></textarea>
            <br><br>
            <div class="label">Foto:</div>
            <input class="input is-info" type="text" name="foto" placeholder="Example.jpg" required/>
            <br><br>
            <div class="label">Video:</div>  
            <input class="input is-info" type="text" name="video" placeholder="Example.mp4" required/>
            <br><br>
            <input class="button is-normal" style="color:#2D1CA9" type="submit" value="Create" />
            <input type="hidden" name="formid" value="6" />
        </form>
        <br><br>
        
        <button style="color:#2D1CA9" class="button is-normal" onclick="goBack()"><strong>Back</strong></button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
        </div>
    </body>
</html>
