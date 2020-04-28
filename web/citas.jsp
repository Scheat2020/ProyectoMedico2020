<%-- 
    Document   : citas
    Created on : Mar 7, 2020, 7:56:44 AM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.proyectomedicowebapp.objects.TablaObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoObj"%>
<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page session="true" %>

<!DOCTYPE html>

<html lang="es">
<script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
<!-- Sweet Alert JS -->
<script src="js/sweetalert.min.js"></script>
    
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-2.2.0.min.js"><\/script>')</script>

<!-- Materialize JS -->
<script src="js/materialize.min.js"></script>

<!-- Malihu jQuery custom content scroller JS -->
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- MaterialDark JS -->
<script src="js/main.js"></script>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        
        
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Inicio Paciente</title>
    
        <!-- Normalize CSS -->
	<link rel="stylesheet" href="styles/css/normalize.css">
    
        <!-- Materialize CSS -->
	<link rel="stylesheet" href="styles/css/materialize.min.css">
    
        <!-- Material Design Iconic Font CSS -->
	<link rel="stylesheet" href="styles/css/material-design-iconic-font.min.css">
    
        <!-- Malihu jQuery custom content scroller CSS -->
	<link rel="stylesheet" href="styles/css/jquery.mCustomScrollbar.css">
    
        <!-- Sweet Alert CSS -->
        <link rel="stylesheet" href="styles/css/sweetalert.css">
    
        <!-- MaterialDark CSS -->
	<link rel="stylesheet" href="styles/css/style.css">
        
    </head>
    
    <!--CODIGO JAVA-->
    <%
        UserObj CUser = 
                (UserObj)request.getSession().getAttribute("logged_user");
        
        InfoObj CUserInf =
                (InfoObj)request.getSession().getAttribute("logged_Inf");
        
        session.getAttribute("user");
        
    %>
    
    <body>
        
    <!--BARRA LATERAL-->
    <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align">
                Paciente <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
            </header>
            <figure class="full-width NavLateral-logo">
                <img src="Images/<%= CUserInf.getFoto()%>" alt="material-logo" class="responsive-img center-box">
                <figcaption class="center-align"><%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                
                <ul class="full-width">
                    <li>
                        <a href="FichaTecnica.jsp" class="waves-effect waves-light"><i class="fas fa-tv"></i> Página principal</a>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="citas.jsp" class="waves-effect waves-light"><i class="far fa-address-card"></i> Información sobre citas</a>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li class="NavLateralDivider"></li>
   
                </ul>
                
                
            </div>  
        </div>  
    </section>
    
    <!-- CONTENIDO-->        
        <section class="ContentPage full-width">

            <!-- BARRA SUPERIOR-->
            <div class="ContentPage-Nav full-width">
                <ul class="full-width">
                    <li class="btn-MobileMenu ShowHideMenu"><a href="#" class="tooltipped waves-effect waves-light" data-position="bottom" data-delay="50" data-tooltip="Menu"><i class="zmdi zmdi-more-vert"></i></a></li>
                    <li><span class="icon"><i class="fas fa-heartbeat fas fas fa-lg"></i></span></li>
                    <li style="padding:0 5px;">CLÍNICA MÉDICA</li>          
                </ul>   
            </div>

            <!-- Titulillo -->
        <br>
        <h4 class="center-align">Información sobre citas</h4>
        
        <!-- Footer -->
        <footer class="footer-MaterialDark">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12"><br>
                        <h5 class="white-text">Horarios de atención</h5>
                        <p class="grey-text text-lighten-4">
                            <br>
                            <p>-De lunes a viernes</p>
                            <p>8:30 a.m a 12:30 p.m</p>
                            <p>2:00 p.m a 5:30 p.m</p>
                            <p>-Sábados</p>
                            <p>8:30 a.m a 12:30 p.m</p>
                    </div>
                    <div class="col l6 s12"><br>
                        <h5 class="white-text">Contáctanos</h5>
                        <p class="grey-text text-lighten-4">
                            <br>
                            <p>Correo electrónico: clinicamedica@gmail.com</p>
                            <p>Teléfono: 2221-3263</p>
                            <p>Dirección: Diagonal Dr. Luís Edmundo Vásquez, Colonia Médica.</p>
                </div>
            </div>
            <div class="NavLateralDivider"></div>
            <div class="footer-copyright">
                <div class="container center-align">
                    © 2020 CLÍNICA MÉDICA
                </div>
            </div>
        </footer>
        </section>                     
    </body>
</html>
