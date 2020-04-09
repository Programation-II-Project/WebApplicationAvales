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
            Proyecto de Avales al que se quiere pedir ayuda: Estado Civil: <select id="f_proyecto" name="f_proyecto">
                                                                           <option value="VALORES">VALORES</option>
                                                                           <option value="AMARTE">AMARTE</option>
                                                                           <option value="ESFAMILIA">ESFAMILIA</option>
                                                                           </select>
            <br><br>
            Descripción: <input type="text" name="f_descripcion" required/>
            <br><br>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="1" />
        </form>
    </body>
</html>
