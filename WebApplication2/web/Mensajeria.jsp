<%-- 
    Document   : Mensajeria
    Created on : 04-10-2020, 12:52:34 PM
    Author     : fer10
--%>

<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.NewMensaje"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.AvalesWebAppLogics.messageLogic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%
          nuevoRegistroObj user = 
                (nuevoRegistroObj)request.getSession().getAttribute("logged_user");
                
                 messageLogic CnewMessageL = new messageLogic();
                
                List<NewMensaje> listaMensajes = CnewMessageL.getAllMensajesFromUser(user.getId());
         
        // List<NewMensaje> listaMensajes = 
             //   (List<NewMensaje>)request.getSession().getAttribute("totalMensajes");
          
    %>
    <body onload="messageBox.fl_newMessage.focus"()>
        <h1>Hello World!</h1>
                <table style="width:50%" border="1">
            <tr>
                <th>Other</th>
                <th>Me</th>
              
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
                             
                     
                    <%
                        }
                        else
                        {
                    %>
                    
                         <td><%= CTemp.getMessage() %></td>
                         <td></td>
                    
                     </tr>
                    <%
                        }
                    }
                }
            %>
        </table>
        <form action="ServletUsuario" method="get" name="messageBox" id="messageBox">
            <br><br>
            Mensajes:
            <br><br>
            <input type="text" name="fl_newMessage" id="fl_newMessage"/>
            <input type="hidden" name="formid" value="100" />
            <input type="submit" value="Enviar">
            
            
        </form>
    </body>
</html>
