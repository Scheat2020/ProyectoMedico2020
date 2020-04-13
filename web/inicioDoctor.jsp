<%-- 
    Document   : inicioDoctor
    Created on : 03-07-2020, 08:27:19 AM
    Author     : vanes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Doctor</title>
    </head>
    <body>
        <section class ="section">
        <br><br><br>
        <div class="container">
                <h1 class="title">
                    Clínica médica 
                </h1>
            <p class="title-2">
                Iniciar sesión
            </p>
            </div>
        <br><br>
        <div class="field">
            <p class="control has-icons-left has-icons-right">
        <input class="input" id="usuario" name="usuario" type="text" placeholder="User">
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
            <input class="input" type="password" id="password" name="password" placeholder="Password">
                <span class="icon is-small is-left">
                    <i class="fas fa-lock"></i>
                   </span>
            </p>
        </div>
           <div class="field">
            <a href="informacionMedico.jsp">
                <p>
                    <input class="button is-primary" type="submit" value="Log in">
                    <input type="hidden" name="formid" value="3" />
                    <%--Aquie comienza--%>
                </p>
                </a>
            <br><br><br>
  
                
        </div>
        </section>
    </body>
</html>
