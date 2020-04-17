<%-- 
    Document   : editDonation
    Created on : abr 17, 2020, 1:50:56 p.m.
    Author     : Abel_
--%>

<%@page import="com.AvalesWebAppObjs.donacionObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        donacionObj donation = 
                (donacionObj)request.getSession().getAttribute("DonacionAEditar");
    %>
    <body>
        <h1>Hello World!</h1>
        <br><br>
        <form action="ServletUsuario" method="get">
            Numero de la tarjeta: <textarea name="tarjeta" rows="1" cols="14" maxlength="14" required><%= donation.getTarjeta() %></textarea>
            <br><br>
            CVV: <textarea name="CVV" rows="1" cols="6" maxlength="4" required><%= donation.getCVV() %></textarea>
            <br><br>
            Mes: <input type="number" name="Mes" min="1" max="12" required/>
            Año <input type="number" name="Anno" required/>
            <br><br>
            Monto a donar: <input type="number" name="donation" required/>
            <input type="submit" value="Create" />
            <input type="hidden" name="formid" value="9" />
        </form>
    </body>
</html>
