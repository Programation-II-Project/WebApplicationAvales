<%-- 
    Document   : mensajeríaAdmins
    Created on : 04-26-2020, 04:31:08 PM
    Author     : fer10
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppLogics.messageLogic"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppObjs.usuariosMensaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sala de mensajería</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
    </head>
    <%
    messageLogic Mlogic = new messageLogic();    
    List<usuariosMensaje> listaUsuarios = Mlogic.getAllUserWithMessages();
    
    %>
    <body>
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Bienvenido Administrador
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            Sala de mensajería
                        </h2>
                    </div>
                </div>
            </section>  
            <br><br>
            <section class="container is-centered">
                <table class="table is-striped is-centered">
            <tr>
                <th class="title" style=" align-content: center; width: 30%; font-family: sans-serif; font-style: inherit; color: darkblue">Usuarios</th>
          
            </tr>
            
              <%
                
                if(listaUsuarios!=null)
                {
                    Iterator<usuariosMensaje> ite = listaUsuarios.iterator();
                    usuariosMensaje CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
                        
                        if(CTemp.getAdminStatus() == 0)
                        {
            %>
            <tr>
            <th><a href="ServletAdmin?formid=98&idUser=<%= CTemp.getIdUser() %>" ><%=CTemp.getUserName() %></th>
            </tr>
            <%
                
                        }
                    }
                }
                
                %>
          </table>
          <br><br>
          
          <div class="buttons">
              <a href="PerfilDeAdmin.jsp">
                  <button class="button is-info">Volver</button>
              </a>
          </div>
                                
            </section>
    </body>
</html>
