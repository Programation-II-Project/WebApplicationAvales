<%-- 
    Document   : register
    Created on : abr 6, 2020, 3:11:30 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    
    <body>
        <h1>Llena el siguiente formulario para registrarte!</h1>
        <br><br>
        
        <form action="RegisterLoginServlet" method="get">
            Nombre: <input type="text" name="f_nombre" />*
            <br><br>
            Telefono casa: <input type="text" name="f_telefono" />
            <br><br>
            Celular: <input type="text" name="f_celular" />*
            <br><br>
            Profesión: <input type="text" name="f_profesion" />*
            <br><br>
            Dirección: <input type="text" name="f_direccion" />*
            <br><br>
            Fecha de nacimiento: <input type="text" name="f_fecha" />*
            <br><br>
            Estado Civil: <select id="f_estatus" name="f_estatus">
                          <option value="Soltero">Soltero/a</option>
                          <option value="Casado">Casado/a</option>
                          <option value="Divorciado">Divorciado/a</option>
                          </select>*
            <br><br>
            Email: <input type="text" name="f_email" />
            <br><br>
            Facebook: <input type="text" name="f_facebook" />
            <br><br>
            Twitter: <input type="text" name="f_twitter" />
            <br><br>
   
           <h5> Áreas de influencia en la sociedad</h5>
            
            Familia:<select id="f_familia" name="f_familia">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br> 
            Iglesia/Religión:<select id="f_iglesia" name="f_iglesia">
                             <option value="0">No</option>
                             <option value="1">Sí</option>
                             </select>
            <br><br>
            Estado/Gobierno/Politica:<select id="f_estado" name="f_estado">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Medios de comunicación:<select id="f_mc" name="f_mc">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Educación y ciencia:<select id="f_educacion" name="f_educacion">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Economia y negocios:<select id="f_economia" name="f_economia">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            Artes/Deporte/Cultura:<select id="f_artes" name="f_artes">
                    <option value="0">No</option>
                    <option value="1">Sí</option>
                    </select>
            <br><br>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="1" />
        </form>

        <a href="index.html">Back</a>
    </body>
</html>
