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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="ServletAdmin" method="get">
            Nombre de la actividad: <input type="text" name="Nombre" required/>
            <br><br>
            Descripcion:
            <br><br>
            <textarea name="Descripcion" rows="10" cols="40" maxlength="400" required>Descripcion de la actividad (Recuerda agregar la hora)</textarea>
            <br><br>
            Encargado: <input type="text" name="Encargado" required/>
            <br><br>
            Costo de la actividad: <input type="number" step="any" name="Costo" required/>
            <br><br>
            Año: <input type="number" name="Anno" required/>
            <br><br>
            Mes: <input type="number" min="1" max="12" name="Mes" required/>
            <br><br>
            Dia: <input type="number" min="1" max="31" name="Dia" required/>
            <br><br>
            Banner: <input type="text" name="Banner" placeholder="NombreDeLaFoto.jpg" required/> 
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="14" />
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
