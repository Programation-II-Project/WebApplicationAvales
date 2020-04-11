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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Crear nuevo proyecto</h1>
        <form action="ServletAdmin" method="get">
            Nombre proyecto: <input type="text" name="proyecto" required/>
            <br><br>
            Descripción:
            <br><br>
            <textarea name="descripcion" rows="10" cols="40" maxlength="500" required></textarea>
            <br><br>
            Lugar:
            <textarea name="lugar" rows="4" cols="40" maxlength="100" required></textarea>
            <br><br>
            Foto: <input type="text" name="foto" placeholder="Example.jpg" required/>
            <br><br>
            Video: <input type="text" name="video" placeholder="Example.mp4" required/>
            <br><br>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="6" />
        </form>
    </body>
</html>
