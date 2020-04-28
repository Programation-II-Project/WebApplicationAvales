<%-- 
    Document   : mensajeriaAdmin
    Created on : 04-27-2020, 08:32:42 PM
    Author     : fer10
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.NewMensaje"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppLogics.messageLogic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>

        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>         
    </head>
    <%
        int idUserFrom
                = (int) request.getSession().getAttribute("idUser");

        messageLogic CnewMessageL = new messageLogic();

        List<NewMensaje> listaMensajes = CnewMessageL.getAllMensajesFromUser(idUserFrom);
        String nombreUser = CnewMessageL.getNameUserByIdUser(idUserFrom);
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
                        Sale de mensajería con <%=nombreUser%>
                    </h2>
                </div>
            </div>
        </section>  
        <br><br>
        <section class="container is-centered">
            <table class="table is-hoverable">
                <tr>
                    <th><%=nombreUser%></th>
                    <th>AVALES</th>

                </tr>

                <%

                    if (listaMensajes != null) {
                        Iterator<NewMensaje> ite = listaMensajes.iterator();
                        NewMensaje CTemp;
                        while (ite.hasNext()) {
                            CTemp = ite.next();

                            if (CTemp.getAdminStatus() != 0) {
                %>
                <tr>
                    <td></td>
                    <td><%= CTemp.getMessage()%></td>


                    <%
                    } else {
                    %>

                    <td><%= CTemp.getMessage()%></td>
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
                                <form action="ServletAdmin" method="get">

                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="text" name="s_adminMessage" autocomplete="off"/>
                                        </div>
                                    </div>                                        
                                    <div class="field">

                                        <div class="control">
                                            <input class="input" type="hidden" name="idUserFrom" value="<%=idUserFrom%>"/>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input class="input" type="hidden" name="formid" value="95"/>
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
                                            <a href="bandejaEntradaAdmin.jsp">
                                                <button class="button is-info">Volver</button>
                                            </a>
                                        </div>
        </section>
        <br><br><br>
    </body>
</html>
