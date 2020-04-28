<%-- 
    Document   : tablaActividades
    Created on : abr 17, 2020, 8:36:48 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppObjs.actividadObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración de Actividades</title>

        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
    </head>
    <%
        List<actividadObj> totalActividades
                = (List<actividadObj>) request.getSession().getAttribute("listaDeActividadesTotal");
    %>
    <body>
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Actividades
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            Lo próximo a realizar
                        </h2>
                    </div>
                </div>
            </section>        
        <br><br> 
        <section class="container">
            <table class="table is-striped">
                <tr>
                    <th>Actividad</th>
                    <th>Descripcion</th>
                    <th>Costo</th>
                    <th>Encargado</th>
                    <th>Año</th>
                    <th>Mes</th>
                    <th>Dia</th>
                    <th>Foto</th>
                </tr>

                <%
                    if (totalActividades != null) {
                        Iterator<actividadObj> ite = totalActividades.iterator();
                        actividadObj CTemp;
                        while (ite.hasNext()) {
                            CTemp = ite.next();
                %>
                <tr>
                    <td><%= CTemp.getNombre()%></td>
                    <td><%= CTemp.getDescripcion()%></td>
                    <td><%= CTemp.getCosto()%></td>
                    <td><%= CTemp.getEncargado()%></td>
                    <td><%= CTemp.getAnno()%></td>
                    <td><%= CTemp.getMes()%></td>
                    <td><%= CTemp.getDia()%></td>
                    <td><%= CTemp.getFoto()%></td>
                    <td>
                        <a href="ServletAdmin?formid=16&id=<%= CTemp.getId_Actividad()%>&nombre=<%= CTemp.getNombre()%>&descripcion=<%= CTemp.getDescripcion()%>&costo=<%= CTemp.getCosto()%>&foto=<%= CTemp.getFoto()%>&encargado=<%= CTemp.getEncargado()%>&anno=<%= CTemp.getAnno()%>&mes=<%= CTemp.getMes()%>&dia=<%= CTemp.getDia()%>">
                            <i class="button">Editar</i>
                        </a>
                    </td>
                    <td>
                        <a href="ServletAdmin?formid=15&id=<%= CTemp.getId_Actividad()%>&anno=<%= CTemp.getAnno()%>&mes=<%= CTemp.getMes()%>&dia=<%= CTemp.getDia()%>">
                            <i class="button">Borrar</i>
                        </a>
                    </td>        
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </section>
            <br><br>
        <section class=" container is-centered">
            <div class="buttons is-centered">
                <a href="nuevaActividad.jsp">
                    <button class="button is-info">Crear una nueva actividad</button>
                </a>
            </div> 

            <br>

            <div class="buttons is-centered">
                <a href="PerfilDeAdmin.jsp">
                    <button class="button is-info">Volver</button>
                </a>
            </div> 
            <br><br>
        </section>        
    </body>
</html>
