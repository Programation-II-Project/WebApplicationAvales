<%-- 
    Document   : solicitudesUsuario
    Created on : abr 9, 2020, 1:55:18 p.m.
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
                (List<solicitudAyudaObj>)request.getSession().getAttribute("ayudas");
    %>
    <body>

        <!-- ENCABEZADO--> 
        <section class="hero is-light">
            <!-- Hero head: will stick at the top -->
            <div class="hero-head">
                <nav class="navbar">
                    <div class="container">

                        <div class="navbar-brand">
                            <div class="navbar-item">
                                <a href="https://www.facebook.com/avales.sv" target="_blank">
                                    <img src="styles/Imagenes/facebook.png" alt="logotipo"/>
                                </a>
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenuHeroA"></span>
                        </div>

                        <div class="navbar-brand">
                            <div class="navbar-item">
                                <a href="https://twitter.com/AVALES_SV" target="_blank">
                                    <img src="styles/Imagenes/twitter.png" alt="logotipo"/>
                                </a>
                            </div>
                            <span class="navbar-burger burger" data-target="navbarMenuHeroA"></span>
                        </div>

                        <div id="navbarMenuHeroA" class="navbar-menu">
                            <div class="navbar-end">
                                <span class="navbar-item">
                                    <div class="button is-primary is-inverted">
                                        <a href="index.html">
                                            <span>Inicio</span>
                                        </a>
                                    </div>
                                </span> 
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <!-- Hero content: will be in the middle -->
            <div class="hero-body">
                <div class="container"> 
                    <img src="styles/Encabezados/avales.png" alt=""/>
                </div>
            </div>
        </section>

            <!-- SEPARADOR -->
        
<section class="hero is-dark">
      <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

    <div class="container has-text-centered">
        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
        Bienvenido
      </h1>
      <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
        Estas son las solicitudes de ayuda realizadas recientemente
      </h2>
    </div>
  </div>
  </section>
        
        <br><br>
        <section class="container has-text-centered">
            <div class="columns is-centered">
         <table class="table is-striped">
            <tr>
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
                                    <a href="ServletUsuario?formid=3&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletUsuario?formid=4&id=<%= CTemp.getIdSolicitud() %>&aprobacion=<%= CTemp.getAprobacion() %>&iduser=<%= CTemp.getIdUser() %>&proyecto=<%= CTemp.getProyecto() %>&descripcion=<%= CTemp.getDescripcion() %>&fecha=<%= CTemp.getFecha() %>">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                </td>        
                            </tr>
                    <%
                    }
                }
            %>

         </table>
            </div>
        </section>
            <br><br><br>
            <section class="container has-text-centered">
                        <div>
                <button class="button is-info"onclick="goBack()">Volver</button>
            </div>

            <script>
                function goBack() {
                    window.history.back();
                }
            </script>
            </section>
            <br><br><br>
    </body>
</html>
