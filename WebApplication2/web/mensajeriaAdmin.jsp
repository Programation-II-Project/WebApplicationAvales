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
        <title>JSP Page</title>
    </head>
    <%
          int idUserFrom = 
                (int)request.getSession().getAttribute("idUser");
                
                 messageLogic CnewMessageL = new messageLogic();
                
                List<NewMensaje> listaMensajes = CnewMessageL.getAllMensajesFromUser(idUserFrom);
                String nombreUser = CnewMessageL.getNameUserByIdUser(idUserFrom);
    %>
    <body>
        <h1>Hello World!</h1>
           <table style="width:50%" border="1">
            <tr>
                <th><%=nombreUser %></th>
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
                        
                        if(CTemp.getAdminStatus() != 0)
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
        
        <form action="ServletAdmin" method="get">
            
            <input type="text" name="s_adminMessage" autocomplete="off">
            <input type="hidden" name="idUserFrom" value="<%=idUserFrom %>">
            <input type="hidden" name="formid" value="95">
            <input type="submit" value="Enviar">
        </form>
        
    </body>
</html>