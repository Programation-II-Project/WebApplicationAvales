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
        <title>JSP Page</title>
    </head>
    <%
    messageLogic Mlogic = new messageLogic();    
    List<usuariosMensaje> listaUsuarios = Mlogic.getAllUserWithMessages();
    
    %>
    <body>
        <h1>Hello World!</h1>
          <table style="width:50%" border="1">
            <tr>
                <th>Other</th>
          
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
        
    </body>
</html>
