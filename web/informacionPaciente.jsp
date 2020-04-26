<%-- 
    Document   : informacionPaciente
    Created on : Apr 8, 2020, 5:11:51 PM
    Author     : windows
--%>

<%@page import="com.proyectomedicowebapp.objects.TablaObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoDocObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información del Paciente</title>
    </head>
     <%
        InfoObj CUserInf =
                (InfoObj)request.getSession().getAttribute("logged_Inf");
        InfoDocObj CDocInf =
                (InfoDocObj)request.getSession().getAttribute("logged_user");
        TablaObj CCita =
                 (TablaObj)request.getSession().getAttribute("Cita");
    %>
  
    <body>
        <section class ="section"> 
            <div class="container">
                <h1 class="title">
                    Ficha del paciente <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %> 
                </h1>
                <br>
            </div>
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <figure class="image is-128x128">
                        <img class="is-rounded" src="Images/<%= CUserInf.getFoto()%>">
                    </figure>
                </div>
                <div class="column is-one-quarter">
                    <div class="container">
                        <br>
                        <h2 class="title">Datos personales </h2>
                    </div>
                        <br>
                        <p class="label">Fecha de nacimiento:<p/>
                        <p><%= CUserInf.getFechaNacimiento() %></p>
                        <p class="label">Número de DUI:<p/>
                        <p><%= CUserInf.getDUI() %></p>
                        <p class="label">Dirección de residencia<p/>
                        <p><%= CUserInf.getDireccion() %></p>
                        <p class="label">Número de telefono<p/>
                        <p><%= CUserInf.getCelular() %></p>
                        <p class="label">Correo electrónico<p/>
                        <p><%= CUserInf.getCorreo() %></p>
                </div>
                <div class="column is-one-quarter">
                    <div class="container">
                        <h2 class="title">Cuadro médico </h2>
                        <br>
                    </div>
                        <p class="label">Tipo de sangre:<p/>
                        <p><%= CUserInf.getTipoSangre() %></p>
                        <p class="label">Estatura en metros:<p/>
                        <p><%= CUserInf.getEstatura() %></p>
                        <p class="label">Alegias:<p/>
                        <p><%= CUserInf.getAlergias() %></p>
                        <p class="label">Hisotrial familiar:<p/>
                        <p><%= CUserInf.getHistorialFamiliar() %></p>

                </div>
               
                
                <div class="column is-one-quarter">
                    <div class="container">
                        <article class="message is-primary">
                        <div class="message-header">
                            <p>Receta Actual</p>
                            <button class="delete" aria-label="delete"></button>
                        </div>
                        <div class="message-body">
                            <%= CUserInf.getReceta() %>
                        </div>
                    </article>
                    </div>
                   
                </div>
            </div>
            
            
            <br><br><br><br><!--*****ARREGLAR IRGENTEMENTE****-->
            
            <div class="columns is-vcentered">
                
                <div class="column is-one-quarter">
                    <div class="container">
                        <div class="buttons">
                            <a href="LoginRegistroServlet?usuario=<%= CDocInf.getUsuario()%>&password=<%= CDocInf.getPassword() %>&formid=3">
                                <button class="button is-primary">Volver</button>
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="column is-half">
                    <div class="container">
                       <article class="message is-primary">
                            <div class="message-body">
                             <strong>Cita programada</strong>
                             <br> Su cita está programada para: <%= CCita.getFecha() %>. A las <%= CCita.getHora() %>
                            </div>
                        </article>
                    </div>
                    <p><p/>
                </div>
                <div class="column is-one-quarter">
                    <form class="cmxform" id="signupForm" action="RecetasServlet" method="get">
                        <input class="input" id="receta" name="receta" type="text" placeholder="Modificar receta">
                        <div class="column is-one-quarter">
                            <div class="container">
                                <div class="control">
                                    <p>
                                        <input class="button is-primary" type="submit" value="Actualizar">
                                        <input type="hidden" name="idPaciente" id="idPaciente" value="<%= CUserInf.getIdPaciente() %>" />
                                        <input type="hidden" name="userDoc" id="userDoc" value="<%= CDocInf.getUsuario() %>" />
                                    </p>
                                    </div>
                            </div>
                         </div> 
                    </form>     
            </div>                   
                </div>
             <br><br><br>

        <section/>
    <body/>
</html>

    