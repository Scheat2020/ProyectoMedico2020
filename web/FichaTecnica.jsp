<%-- 
    Document   : FichaTecnica
    Created on : 7 mar. 2020, 10:02:21
    Author     : sergi
--%>

<%@page import="com.proyectomedicowebapp.objects.InfoObj"%>
<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Ficha Tecnica</title>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
    </head>
    <%
        UserObj CUser = 
                (UserObj)request.getSession().getAttribute("logged_user");
        
        InfoObj CUserInf =
                (InfoObj)request.getSession().getAttribute("logged_Inf");
        
    %>
    <body>
        <section class ="section"> 
            <div class="container">
                <h1 class="title">Bienvenido, <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %> </h1>
            </div>
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <figure class="image is-128x128">
                        <img class="is-rounded" src="https://i.pinimg.com/236x/4d/b7/b7/4db7b7ecb39c4eebc5b8f5358773e4a2--break-room-stock-photos.jpg">
                    </figure>
                </div>
               
                <div class="column is-half">
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
            </div>
            
            
            <br><br><br><br:
            
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <div class="container">
                        <div class="buttons">
                            <a href="citas.jsp">
                                <button class="button is-primary">Agendar cita</button>
                            </a>
                        </div>
                        <a href="inicioPaciente.jsp">
                            <button class="button is-danger">Cerrar sesión</button>
                        </a>
                    </div>
                </div>
                
                <div class="column is-half">
                    <div class="container">
                    </div>
                    <article class="message is-primary">
                        <div class="message-header">
                            <p>Receta</p>
                            <button class="delete" aria-label="delete"></button>
                        </div>
                        <div class="message-body">
                            <p><%= CUserInf.getReceta() %></p>
                        </div>
                    </article>
                </div>
            </div>
 
        </section>
    </body>
</html>
