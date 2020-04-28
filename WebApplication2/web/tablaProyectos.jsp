<%-- 
    Document   : tablaProyectos
    Created on : abr 10, 2020, 4:59:19 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.proyectoObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyectos</title>
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
    </head>
    <%
        List<proyectoObj> totalProyectos = 
                (List<proyectoObj>)request.getSession().getAttribute("listaTotalProyectos");
    %>
    <body>
        
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Proyectos en curso
                        </h1>
                    </div>
                </div>
            </section>        
        <br><br> 
        <section class="container">
        <table class="table is-striped">
            <tr>
                <th>Proyecto</th>
                <th>Descripcion</th>
                <th>Lugar</th>
                <th>Foto</th>
                <th>Video</th>
            </tr>
            
            <%
                
                if(totalProyectos!=null)
                {
                    Iterator<proyectoObj> ite = totalProyectos.iterator();
                    proyectoObj CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
            %>
                    <tr>
                        <td><%= CTemp.getNombreProyecto() %></td>
                        <td><%= CTemp.getDescripcion() %></td>
                        <td><%= CTemp.getLugar() %></td>
                        <td><%= CTemp.getFoto() %></td>
                        <td><%= CTemp.getVideo() %></td>
                            <td>
                                    <a href="ServletAdmin?formid=7&id=<%= CTemp.getID() %>&nombre=<%= CTemp.getNombreProyecto() %>&descripcion=<%= CTemp.getDescripcion() %>&lugar=<%= CTemp.getLugar() %>&foto=<%= CTemp.getFoto() %>&video=<%= CTemp.getVideo() %>">
                                        <i class="button">Editar</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="ServletAdmin?formid=8&id=<%= CTemp.getID() %>">
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
              <a href="nuevoProyecto.jsp">
              <button class="button is-info">Crear un nuevo proyecto</button>
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
