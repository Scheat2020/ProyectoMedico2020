<%-- 
    Document   : informacionPaciente
    Created on : Apr 8, 2020, 5:11:51 PM
    Author     : Sergio 
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.proyectomedicowebapp.objects.RecetaObj"%>
<%@page import="java.util.List"%>
<%@page import="com.proyectomedicowebapp.objects.TablaObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoDocObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%

    response.setHeader("Pragma","no-cache");
    response.addHeader("Cache-control","must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);

    try{
        if(session.getAttribute("user2")==null){


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
        
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Información del Paciente</title>
    
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
     <%
        InfoObj CUserInf =
                (InfoObj)request.getSession().getAttribute("logged_Inf2");
        InfoDocObj CDocInf =
                (InfoDocObj)request.getSession().getAttribute("logged_user2");
        TablaObj CCita =
                 (TablaObj)request.getSession().getAttribute("Cita");
        session.getAttribute("user2"); 
        
        List<RecetaObj> CListReceta =
                    (List<RecetaObj>)request.getSession().getAttribute("Receta");
    %>
  
    <body>
        
    <!--BARRA LATERAL-->
    <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align">
                Ficha de paciente <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
            </header>
            <figure class="full-width NavLateral-logo">
                <img src="Images/<%= CUserInf.getFoto()%>" alt="material-logo" class="responsive-img center-box">
                <figcaption class="center-align"><%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                
                <ul class="full-width">
                    <li>
                        <a href="informacionMedico.jsp" class="waves-effect waves-light"><i class="fas fa-tv"></i> Página principal</a>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li class="NavLateralDivider"></li>
                    <li>
                       
   
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
            </ul>   
        </div>
        
        
        <div class="row">

            <!-- RECORDATORIOS CITA Y RECETA -->
            <article class="col s12">

                <div class="full-width center-align" style="margin: 40px 0;">

                    <div class="columns is-multiline is-mobile">
                    <div class="column is-one-fifth"></div>
                        <div class="column">
                            <div class="tile">
                            <div class="tile-icon"><i class="far fa-address-card fas fa-3x" ></i></div>
                            <div class="tile-caption">
                                <span class="center-align">Cita</span>
                                <p class="center-align">
                                <br>Su cita está programada para: 
                                <%= CCita.getFecha() %>. 
                                A las <%= CCita.getHora() %>
                                </p> 
                            </div>
                                <a class="tile-link waves-effect waves-light"></a>
                            </div>
                        </div>
                    </div>             
                </div>
            
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
                                    
                    <!--TABLA-->
                    <h4>Registrar nuevas recetas:</h4>
                    <br>
                    
                    <div class="container">
                         <table class="table">
                            <thead>
                              <tr>
                                <th><abbr title="Receta">Receta</abbr></th>
                                <th><abbr title="Fecha">Fecha de emisión</abbr></th>

                              </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th><abbr title="Receta">Receta</abbr></th>
                                    <th><abbr title="Fecha">Fecha de emisión</abbr></th>
                                </tr>
                            </tfoot>
                            <tbody>
                            
                            <% 
                                if(CListReceta!=null)
                                {
                                    Iterator<RecetaObj> ite = CListReceta.iterator();
                                    RecetaObj CTemp;
                                    while(ite.hasNext()) 
                                    {
                                    
                                        CTemp = ite.next();
                            %>
                                <tr>
                                    <td id="receta" name="receta"><%= CTemp.getReceta() %></td>
                                    <td id="fecha" name="fecha"><%= CTemp.getFecha() %></td>
                                </tr>
                            <%
                                    }
                                } else {
                            %>                         
                                
                            <%
                                }
                            %> 
                            </tbody>
                          </table>
                    </div>
                    <br><br>
                    
                    <!--REGISTRAR INFORMACION-->
                    <div class="container">
                        <form class="cmxform" id="signupForm" action="RecetasServlet" method="post">
                        <input class="input" id="receta" name="receta" type="text" placeholder="Modificar receta">
                            <div class="column is-one-quarter">
                                <div class="container">
                                    <div class="control">
                                        <p>
                                            <input class="button is-primary" type="submit" value="Actualizar">
                                            <input type="hidden" name="idPaciente" id="idPaciente" value="<%= CUserInf.getIdPaciente() %>" />
                                            <input type="hidden" name="userDoc" id="userDoc" value="<%= CDocInf.getUsuario() %>" />
                                            <input type="hidden" name="formid" id="formid" value="1" />
                                        </p>
                                        </div>
                                </div>
                             </div> 
                        </form>
                    </div>                
                </article>        
            </article>
            <br><br><br>
        </div>
    </section>
    <body/>
</html>
