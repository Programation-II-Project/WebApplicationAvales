<%-- 
    Document   : noConfirmarDonacion
    Created on : abr 17, 2020, 3:10:33 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ya se ha tomado una decision</h1>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
