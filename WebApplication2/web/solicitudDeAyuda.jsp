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
        <title>AYUDA</title>
    </head>
    <body>
        <h1>Llene el siguiente formulario para pedir ayuda especializada a AVALES</h1>
        <form action="ServletUsuario" method="get">
            Proyecto de Avales al que se quiere pedir ayuda: <select id="f_proyecto" name="f_proyecto">
                                                                <option value="VALORES">VALORES</option>
                                                                <option value="AMARTE">AMARTE</option>
                                                                <option value="ESFAMILIA">ESFAMILIA</option>
                                                                </select>
            <br><br>
            Descripción:
            <br><br>
            <textarea name="f_descripcion" rows="10" cols="40" maxlength="500" required>Escribe aquí tus comentarios</textarea>
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
</html>
