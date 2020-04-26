<%-- 
    Document   : chat
    Created on : 04-25-2020, 02:26:56 PM
    Author     : fer10
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.NewMensaje"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
         List<NewMensaje> listaMensajes = 
                (List<NewMensaje>)request.getSession().getAttribute("listaMensajes");
          
    %>
    <body>
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
            %>
                    <tr>
                        <td><%= CTemp.getMessage()%></td>
             
                          
                     </tr>
                    <%
                    }
                }
            %>
        </table>
          <form action="ServletUsuario" method="get">
            <br><br>
            Mensajes:
            <br><br>
            <input type="text" name="fl_newMessage"/>
            <input type="hidden" name="formid" value="100" />
            <input type="submit" value="Enviar">
            
            
        </form>
    </body>
</html>
