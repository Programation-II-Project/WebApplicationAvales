<%-- 
    Document   : InfoDelUsuarioParaAdmin
    Created on : abr 10, 2020, 1:27:42 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
        
        <!-- Añadir los links para jar y bulma-->

        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <link href="styles/bulma/Style.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>        
    </head>
    <%
        nuevoRegistroObj infoUser = 
                (nuevoRegistroObj)request.getSession().getAttribute("registroPedido");
        
        String telefono = infoUser.getTelefono_casa();
        String fb = infoUser.getFacebook();
        String tw = infoUser.getTwitter();
        int familia = infoUser.getFamilia();
        int iglesia = infoUser.getIglesia();
        int gobierno = infoUser.getGobierno();
        int mc = infoUser.getMc();
        int educacion = infoUser.getEducacion();
        int economia = infoUser.getEconomia();
        int arte = infoUser.getArte();


    %>
    <body>
        
            <!-- SEPARADOR -->
        
            <section class="hero is-dark">
                <div class="hero-body" style=" background-image: url(styles/Imagenes/bg4.jpg)">

                    <div class="container has-text-centered">
                        <h1 class="title" style=" align-content: center; font-family: sans-serif; font-style: inherit; color: gold">
                            Información de Administrador
                        </h1>

                    </div>
                </div>
            </section>
        
        <br><br>
        <section class="container">
        <h1 class="title" style="color: darkblue; font-family: serif; font-style: oblique;">Información General:</h1>
        <a style="color: darkblue"><strong>Nombre:</strong> </a>
        <a><%= infoUser.getNombre() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Telefono de su casa:</strong> </a>
        <%    
                if(telefono.equals(""))
                {
        %>
                    <a>No tiene</a>
        <%
                }
                else
                {
        %>
                    <a><%= infoUser.getTelefono_casa() %></a>
        <%
                }
        %>
        <br><br>
        <a style="color: darkblue"><strong>Celular:</strong> </a>
        <a><%= infoUser.getCelular() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Profesión:</strong> </a>
        <a><%= infoUser.getProfesion() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Dirección:</strong> </a>
        <a><%= infoUser.getDireccion() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Fecha de nacimiento:</strong> </a>
        <a><%= infoUser.getFecha() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Estado civil:</strong> </a>
        <a><%= infoUser.getEstado_civil() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Email:</strong> </a>
        <a><%= infoUser.getEmail() %> </a>
        <br><br>
        <a style="color: darkblue"><strong>Facebook:</strong> </a>
        <%    
                if(fb.equals(""))
                {
        %>
                    <a>No tiene</a>
        <%
                }
                else
                {
        %>
                    <a><%= infoUser.getFacebook() %></a>
        <%
                }
        %>
        <br><br>
        <a style="color: darkblue"><strong>Twitter:</strong> </a>
        <%  
                if(tw.equals(""))
                {
        %>
                    <a>No tiene</a>
        <%
                }
                else
                {
        %>
                    <a><%= infoUser.getTwitter() %></a>
        <%
                }
        %>
        <br><br><br>
        <h4 class="title" style="color: darkblue; font-family: serif; font-style: oblique;">Áreas de Influencia:</h4>
        
        <%    
            if(familia+iglesia+gobierno+mc+educacion+economia+arte==0)
            {
                %>
                <a>No es influyente en ningúna área</a>
                <%
            }
            else
            {
            
                if(familia==1)
                {
        %>
                    <a>Influencia familiar</a>
                    <br><br>
        <%
                }
        %>
        <%    
                if(iglesia==1)
                {
        %>
                    <a>Influencia en la iglesia</a>
                    <br><br>
        <%
                }
        %>
        <%    
                if(gobierno==1)
                {
        %>
                    <a>Influencia en la politica/gobierno/estado</a>
                    <br><br>
        <%
                }
        %>
        <%    
                if(mc==1)
                {
        %>
                    <a>Influencia en los medios de comunicación</a>
                    <br><br>
        <%
                }
        %>
        <%    
                if(educacion==1)
                {
        %>
                    <a>Influencia en el sector de educación</a>
                    <br><br>
        <%
                }
        %>
        <%    
                if(economia==1)
                {
        %>
                    <a>Influencia en la economía</a>
                    <br><br>
        <%
                }
        %>
        <%    
                if(arte==1)
                {
        %>
                    <a>Influencia en la cultura/arte/deportes</a>
                    <br><br>
        <%
                }
            }
        %>
        
        <br><br>
        
        <div>
            <button class="button is-info is-centered"onclick="goBack()">Volver</button>
        </div>

        <script>
            function goBack() {
                window.history.back();
            }
        </script>        
        </section>
        <br><br>
    </body>
</html>
