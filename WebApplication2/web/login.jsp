<%-- 
    Document   : login
    Created on : abr 6, 2020, 3:11:42 p.m.
    Author     : Abel_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <!-- EDICION EN PROCESO
        
        <section class='section'>
            <div class='container'>
                <h1 class='title'> 
                    Hello User!
                </h1>
                <p class='subtitle'>
                    Favor ingrese sus datos
                </p>
                
                <form action="RegisterLoginServlet" method="get">
            <section class="section">
                <div class="container">
                    
                    <div class="field">
                      <p class="control has-icons-left has-icons-right">
                          <input class="input" type="text" placeholder="Email" required="">
                        <span class="icon is-small is-left">
                          <i class="fas fa-envelope"></i>
                        </span>
                        <span class="icon is-small is-right">
                          <i class="fas fa-check"></i>
                        </span>
                      </p>
                    </div>
                    
                    <div class="field">
                      <p class="control has-icons-left">
                          <input class="input" type="password" placeholder="Password" required="">
                        <span class="icon is-small is-left">
                          <i class="fas fa-lock"></i>
                        </span>
                      </p>
                    </div>
                    
                    <div class="field">
                        <div class="control">
                            <input class="button is-link" type="submit" value="Login">
                            </input>
                        </div>
                    </div>
                </div> 
            </section>
                    
                    -->
                
       <h1>Hello User!</h1>
       <br><br>
        <form action="RegisterLoginServlet" method="get">
            Email: <input type="text" name="fl_email" />
            <br><br>
            Contraseña:  <input type="password" name="fl_password">
            <br><br>          
            <input type="submit" value="Login" />
            <input type="hidden" name="formid" value="2" />
        </form>
        <br><br>
        <button onclick="goBack()">Back</button>
        <script>
        function goBack() {
        window.history.back();
        }
        </script>
    </body>
</html>
