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
        <title>Solicitud de ayuda</title>
    </head>
    <body style="background-color:rgb(51, 51, 153)" >
        <h1  style="font-size:40px">Formulario de solicitud de ayuda</h1>
        <h2 style="font-size:20px">Llene el siguiente formulario para pedir ayuda especializada a AVALES</h2>
        <form action="ServletUsuario" method="get">
            Proyecto de Avales al que se quiere pedir ayuda: <select id="f_proyecto" name="f_proyecto">
                                                                <option value="VALORES">VALORES</option>
                                                                <option value="AMARTE">AMARTE</option>
                                                                <option value="ESFAMILIA">ESFAMILIA</option>
                                                                </select>
            <br><br>
            Descripción: <input type="text" name="f_descripcion" placeholder="Ingrese" required/>
            <br><br>
            <input type="submit" value="Enviar" />
            <input type="hidden" name="formid" value="1" />
        </form>
        <br><br>
        <a href="perfil.jsp">Back</a>
    </body>
</html>
