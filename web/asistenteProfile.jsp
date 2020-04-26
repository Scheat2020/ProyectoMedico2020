<%-- 
    Document   : AsistenteProfile
    Created on : Apr 25, 2020, 3:39:56 PM
    Author     : Sara Valentina
--%>

<%@page import="com.proyectomedicowebapp.objects.InfoAsisObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información del Asistemte</title>
    </head>
    
    <%
        InfoAsisObj CUserInf =
                (InfoAsisObj)request.getSession().getAttribute("logged_Inf");
        session.getAttribute("user");
    %>
    <body>


         <section class ="section"> 
            <div class="container">
                <h1 class="title">
                    Información General
                </h1>
            </div>
            <br><br>
            
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <!--Esta clase la cree en el archivo bulma.css -->
                    <!--<figure class="image is-190x190"> -->
                    <figure class="image is-150x150">
                        <img class="is-rounded" src="https://www.fontaneroylimpiezasvalencia.com/wp-content/uploads/2019/07/trabajo-toronto-secretaria.jpg" >
                    </figure>
                </div>
                <div class="column is-half">
                    <div class="container">
                        <p class="label">Asistente: <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></p>
                    </div>
                    
                    <p>Telefono: <%= CUserInf.getTelefono() %></p>
                    <p>Correo: <%= CUserInf.getCorreo() %></p>
                </div>
 
            </div>
            <br><br><br><br>
            
     
            <br><br><br><br:
            
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <div class="container">
                        <a href="controladorSalir.do">
                            <button class="button is-danger">Cerrar sesión</button>
                        </a>
                    </div>
                </div>
            </div>
            
        </section>
        
        
        
        
        
    </body>
</html>