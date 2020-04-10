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
        <title>JSP Page</title>
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
        <h1>Información del usuario</h1>
        <br><br>
        <a>Nombre: </a>
        <a><%= infoUser.getNombre() %> </a>
        <br><br>
        <a>Telefono de su casa: </a>
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
        <a>Celular: </a>
        <a><%= infoUser.getCelular() %> </a>
        <br><br>
        <a>Profesión: </a>
        <a><%= infoUser.getProfesion() %> </a>
        <br><br>
        <a>Dirección: </a>
        <a><%= infoUser.getDireccion() %> </a>
        <br><br>
        <a>Fecha de nacimiento: </a>
        <a><%= infoUser.getFecha() %> </a>
        <br><br>
        <a>Estado civil: </a>
        <a><%= infoUser.getEstado_civil() %> </a>
        <br><br>
        <a>Email: </a>
        <a><%= infoUser.getEmail() %> </a>
        <br><br>
        <a>Facebook: </a>
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
        <a>Twitter: </a>
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
        <br><br>
        <h4>Áreas de influencia:</h4>
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
        
        
        
        
        
        
    </body>
</html>
