<%-- 
    Document   : inicioPaciente
    Created on : 03-07-2020, 08:26:58 AM
    Author     : vanes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Paciente</title>
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
        
        <form class="cmxform" id="logInPacienteForm" action="LoginRegistroServlet" method="get">
            <div class="field">
                <p class="control has-icons-left has-icons-right">
                    <input class="input" type="email" placeholder="ejemplo@gmail.com">
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
                        <input class="input" type="password" placeholder="Password">
                        <span class="icon is-small is-left">
                        <i class="fas fa-lock"></i>
                        </span>
                </p>
            </div>
            <div class="field">
                <p>
                    <input class="button is-primary" type="submit" value="Log in">
                    <input type="hidden" name="formid" value="1" />
                </p>
                <br><br><br>
                <div>
                    <a href="DataPersonaljsp.jsp">¿No tienes un usuario? Regístrate aquí</a> 
                </div>
            </div>
        </form>
        </section>
    </body>
</html>

