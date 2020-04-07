<%-- 
    Document   : register
    Created on : abr 6, 2020, 3:11:30 p.m.
    Author     : Abel_
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.AvalesWebAppObjs.nuevoRegistroObj"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <%
        List<nuevoRegistroObj> newRegister = 
                (List<nuevoRegistroObj>)request.getSession().getAttribute("nuevoRegistroList");
        %>
    
    <body>
        <h1>Hello New User!</h1>
        <br><br>
        
        <%
        if(newRegister!=null)
        {
            Iterator<nuevoRegistroObj> ite = newRegister.iterator();
            nuevoRegistroObj CTemp;
            while(ite.hasNext())
            {
                CTemp = ite.next();
            %> <h1><%= CTemp.getNombre() %> </h1> <%
            }
        }
        
        %> 
        
        
        
        
        <a href="index.html">Back</a>
    </body>
</html>
