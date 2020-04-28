<%-- 
    Document   : FichaTecnica
    Created on : 7 mar. 2020, 10:02:21
    Author     : sergi
--%>

<%@page import="com.proyectomedicowebapp.objects.RecetaObj"%>
<%@page import="com.proyectomedicowebapp.objects.TablaObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoObj"%>
<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%

    response.setHeader("Pragma","no-cache");
    response.addHeader("Cache-control","must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);

    try{
        if(session.getAttribute("user")==null){


            request.getRequestDispatcher("index.jsp").forward(request, response);

        }

    }catch(Exception e){


        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

%>
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
        
        RecetaObj CReceta =
                (RecetaObj)request.getSession().getAttribute("receta");
        
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
                    <li style="padding:0 5px;">CLÍNICA MÉDICA  </li>
                    <li><a href="controladorSalir.do?formid=1" class="tooltipped waves-effect waves-light btn-ExitSystem" data-position="bottom" data-delay="50" data-tooltip="Logout"><i class="fas fa-power-off"></i></a></li>               
                </ul>   
            </div>

             <div class="row">

                <!-- RECORDATORIOS CITA Y RECETA -->
                <article class="col s12">
                    
                    <div class="full-width center-align" style="margin: 40px 0;">
                        
                        <div class="columns is-multiline is-mobile">
                        <div class="column is-one-fifth">

                        </div>
                        <div class="column one-half">
                          
                            <div class="tile">
                                
                                <div class="tile-icon"><i class="fas fa-medkit fas fa-3x"></i></div>
                                
                                <div class="tile-caption">
                                    <span class="center-align">Receta</span>
                                    <p class="center-align">                     
                                        
                                     <% 
                                        if (CReceta.getReceta()==null)
                                        {   
                                     %>
                                     <br>  No hay receta disponible
                                     <% 
                                        } else {
                                     %>
                                     <br> <%= CReceta.getReceta() %>

                                     <% 
                                        }
                                     %>
                                     </p>

                                </div>
                                <a class="tile-link waves-effect waves-light"></a>
                            </div>
                        </div>
                                     
                        <div class="column">
                            <div class="tile">
                            <div class="tile-icon"><i class="far fa-address-card fas fa-3x" ></i></div>
                            <div class="tile-caption">
                                <span class="center-align">Cita</span>
                                <p class="center-align">
                                <% 
                                   if (CUserInf.getM_fecha()!=null)
                                   {   
                                %>
                                <br> Su cita está programada para: <%= CUserInf.getM_fecha() %>. A las <%= CUserInf.getM_Hora() %>
                                <% 
                                   } else {
                                %>
                                <br> No hay citas programadas

                                <% 
                                   }
                                %>
                                </p> 
                            </div>
                            <a class="tile-link waves-effect waves-light"></a>
                            </div>
                        </div>
                        </div>             
                    </div>       
                </article>

                <!-- INFORMACION -->
                <article class="col s12">
                    <h4>Información general:</h4>


                    <ul class="timeline">
                        <li>

                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h5 class="timeline-title">Datos personales</h5>
                                </div>
                                <div class="timeline-body">

                                    <p>
                                    <!-- AQUI VA LA INFORMACION PERSONAL -->
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

                                    </p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">

                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h5 class="timeline-title">Cuadro médico general</h5>

                                </div>
                                <div class="timeline-body">

                                    <p>
                                    <!-- AQUI VA LA INFORMACION CUADRO MÉDICO -->
                                    <p class="label">Tipo de sangre:<p/>
                                    <p><%= CUserInf.getTipoSangre() %></p>
                                    <p class="label">Estatura en metros:<p/>
                                    <p><%= CUserInf.getEstatura() %></p>
                                    <p class="label">Alegias:<p/>
                                    <p><%= CUserInf.getAlergias() %></p>
                                    <p class="label">Hisotrial familiar:<p/>
                                    <p><%= CUserInf.getHistorialFamiliar() %></p>
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </article>

            </div>
              

            <footer class="footer-MaterialDark">
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
