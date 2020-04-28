<%-- 
    Document   : solicitudesDeAyudaParaAdmin
    Created on : abr 10, 2020, 11:47:55 a.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.solicitudAyudaObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitudes de ayuda</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
        
    </head>
    <%
        List<solicitudAyudaObj> listaDeAyudas = 
                (List<solicitudAyudaObj>)request.getSession().getAttribute("listaTotal");
    %>
    <body>
        
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Bienvenido/a administrador
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            Estas son las solicitudes de ayuda recibidas 
                        </h2>
                    </div>
                </div>
            </section>
            
        <br><br>
        
        <table class="table is-fullwidth">
            <tr>
                <th>ID del usuario</th>
                <th>Proyecto</th>
                <th>Descripcion</th>
                <th>Fecha</th>
                <th>Estado</th>
            </tr>
            
            <%
                
                if(listaDeAyudas!=null)
                {
                    Iterator<solicitudAyudaObj> ite = listaDeAyudas.iterator();
                    solicitudAyudaObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
            %>
                    <tr>
                        <td><a href="ServletAdmin?formid=4&id=<%= CTemp.getIdUser() %>" ><%= CTemp.getIdUser() %></a></td>
                        <td><%= CTemp.getProyecto() %></td>
                        <td><%= CTemp.getDescripcion() %></td>
                        <td><%= CTemp.getFecha() %></td>
            <%
                        if (CTemp.getAprobacion()==null) 
                        {   
            %>              
                            <td>En espera de aprobación</td>
            <%          }
                        else
                        {
            %>
                            <td><%= CTemp.getAprobacion() %></td>
            <%            
                        }
            %>
                            <td>
                                    <a href="ServletAdmin?formid=2&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>">
                                        <i class="button">aceptar</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletAdmin?formid=3&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>">
                                        <i class="button">rechazar</i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>
        </table>
        <br><br>
        
          <div class="buttons is-centered">
              <a href="PerfilDeAdmin.jsp">
              <button class="button is-info">Volver</button>
              </a>
          </div> 
        <br><br>

    </body>
</html>
