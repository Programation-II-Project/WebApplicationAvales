<%-- 
    Document   : Mensajeria
    Created on : 04-10-2020, 12:52:34 PM
    Author     : fer10
--%>

<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.NewMensaje"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppLogics.messageLogic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajería</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>        
        
    </head>
     <%
          nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
                
                 messageLogic CnewMessageL = new messageLogic();
                
                List<NewMensaje> listaMensajes = CnewMessageL.getAllMensajesFromUser(user.getId());
         
       
          
    %>
    <body onload="messageBox.fl_newMessage.focus"()>
        
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
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Bienvenido/a <%= user.getNombre()%>
                        </h1>
                        <h2 class="subtitle" style=" align-content: center; font-family: initial; font-style: oblique; color: white">
                            AVALES responderá sus mensajes lo más pronto posible
                        </h2>
                    </div>
                </div>
            </section>
        <br><br>
        
        <section class="container">        
            <table class="table is-hovered">
                <tr>
                <th>AVALES</th>
                <th><%= user.getNombre()%></th>
              
            </tr>
            
            <%
                
                if(listaMensajes!=null)
                {
                    Iterator<NewMensaje> ite = listaMensajes.iterator();
                    NewMensaje CTemp;
                    while(ite.hasNext())
                    {
                        CTemp = ite.next();
                        
                        if(CTemp.getAdminStatus() == 0)
                        {
            %>
                    <tr>
                        <td></td>
                        <td><%= CTemp.getMessage()%></td>
                    </tr>         
                     
                    <%
                        }
                        else
                        {
                    %>
                    <tr>
                         <td><%= CTemp.getMessage() %></td>
                         <td></td>
                    
                     </tr>
                    <%
                        }
                    }
                }
            %>
        </table>

        

            <div class="columns">
                <div class="column">
                    <div class="column is-centered">
                        <div class="container is-centered">
                            <div class="notification">             
                                <form action="ServletUsuario" method="get" name="messageBox" id="messageBox">

                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name="fl_newMessage" id="fl_newMessage" autocomplete="off"/>
                                        </div>
                                    </div>                                        
                                    <div class="field">

                                        <div class="control">
                                            <input class="input" type="hidden" name="formid" value="100" />
                                        </div>
                                    </div> 

                                    <div class="field">
                                        <button class=" input button is-link" type="submit">Enviar mensaje</button>
                                    </div>                                                                         
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                        <div class="buttons is-centered">
                                            <a href="perfil.jsp">
                                                <button class="button is-info">Volver</button>
                                            </a>
                                        </div>
        </section>
        <br><br><br>

    </body>
</html>
