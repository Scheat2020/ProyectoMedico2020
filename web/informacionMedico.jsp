<%-- 
    Document   : informacionMedico
    Created on : Apr 8, 2020, 11:52:53 AM
    Author     : windows
--%>

<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page import="com.proyectomedicowebapp.objects.TablaObj"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.proyectomedicowebapp.objects.InfoDocObj"%>
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
	<title>Doctor</title>
    
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
        
        UserObj CUser = 
                (UserObj)request.getSession().getAttribute("logged_user");
        
        InfoDocObj CUserInf =
                (InfoDocObj)request.getSession().getAttribute("logged_Inf");
        
        session.getAttribute("user"); 

        List<TablaObj> CList = 
                (List<TablaObj>)request.getSession().getAttribute("usuarios");
         
         TablaObj CFistDB =
                 (TablaObj)request.getSession().getAttribute("first_user");

    %>
    <body>
    
    <!--BARRA LATERAL-->
    <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align">
                Doctor <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
            </header>
            <figure class="full-width NavLateral-logo">
                <img src="Images/<%= CUserInf.getFoto()%>" alt="material-logo" class="responsive-img center-box">
                <figcaption class="center-align">
                    <pr><%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></pr>
                    <p><%= CUserInf.getEspecialidad() %><p/>
                </figcaption>
                <br>
                <div class="NavLateral-Nav">
                <ul class="full-width">
                    <pr>
                        <article>
                        <DIR>Información general:</DIR>
                        <DIR><p><%= CUserInf.getDireccion() %></p>
                        <p>Credencial: <%= CUserInf.getCredencial() %></p>
                        <p>Telefono: <%= CUserInf.getTelefono() %></p></DIR>
                        </article>
                    </pr>   
                </ul>
            </figure>
            <div class="NavLateral-Nav">
                <ul class="full-width">
                    <li>
                        <a href="informacionMedico.jsp" class="waves-effect waves-light"><i class="fas fa-tv"></i> Página principal</a>
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
                <li><a href="controladorSalir.do?formid=2" class="tooltipped waves-effect waves-light btn-ExitSystem" data-position="bottom" data-delay="50" data-tooltip="Logout"><i class="fas fa-power-off"></i></a></li>               
            </ul>   
        </div>
        
        <div class="row">

            <!-- RECORDATORIOS CITA Y RECETA -->
            <article class="col s12">

                <div class="full-width center-align" style="margin: 40px 0;">

                    <div class="columns is-multiline is-mobile">
                        <div class="column is-one-fifth"></div>
                        <div class="column one-half">

                            <div class="tile">

                                <div class="tile-icon"><i class="far fa-address-card fas fa-3x"></i></div>

                                <DIR>
                                    <div class="tile-caption">
                                        <span class="center-align">Cita</span>
                                            <p class="center-align">                     
                                                <%
                                                if (CFistDB!=null){
                                                %>
                                                <br> <%= CFistDB.getApellidos() %>, <%= CFistDB.getNombres() %>
                                                <input type="hidden" id="first" name="first" value="<%= CFistDB.geIdPaciente() %>"  />
                                                <a href="InfoPacientesServlet?idPaciente=<%= CFistDB.geIdPaciente() %>&Doc=<%= CUserInf.getUsuario()%>&formid=1">Revisar su registro</a> <%-- Holaaaaa --%>
                                                <%
                                                    } else {
                                                %>

                                                <br> No hay citas próximas

                                                <%
                                                    }
                                                %>
                                            </p>

                                    </div>
                                </DIR>
                                <a class="tile-link waves-effect waves-light"></a>
                            </div>
                        </div>
                    </div>
                </div> 
                                            
            
                <br>
                <DIR><DIR><h4>Citas Agendadas</h4></DIR></DIR>
                <hr> 
                
                <div class="columns is-vcentered">
                    <br>
                    <DIR><DIR>
                    <table class="table">
                        <thead>
                          <tr>
                            <th><abbr title="ID">ID</abbr></th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th><abbr title="Detalles">Detalles</abbr></th>
                            <th><abbr title="Date">Fecha Agendada</abbr></th>
                            <th><abbr title="Time">Hora Agendada</abbr></th>

                          </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th><abbr title="ID">ID</abbr></th>
                                <th>Apellidos</th>
                                <th>Nombres</th>
                                <th><abbr title="Detalles">Detalles</abbr></th>
                                <th><abbr title="Date">Fecha Agendada</abbr></th>
                                <th><abbr title="Time">Hora Agendada</abbr></th>
                            </tr>
                        </tfoot>
                        <tbody>



                        <% 
                            if(CList!=null)
                            {
                                Iterator<TablaObj> ite = CList.iterator();
                                TablaObj CTemp;
                                while(ite.hasNext()) 
                                {

                                    CTemp = ite.next();
                        %>
                            <tr>
                                <th id="idPaciente" name="idPaciente"><%= CTemp.geIdPaciente() %></th>
                                <td id="nombres" name="nombres"><%= CTemp.getApellidos() %></td>
                                <td id="apellidos" name="apellidos"><%= CTemp.getNombres() %></td>
                                <td id="ver" name="ver"><a href="InfoPacientesServlet?idPaciente=<%= CTemp.geIdPaciente() %>&Doc=<%= CUserInf.getUsuario()%>&formid=1">Ver</a></td>
                                <td id="cita" name="cita"><%= CTemp.getFecha() %></td>
                                <td id="hora" name="hora"><%= CTemp.getHora() %></td>
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
                    </DIR></DIR>
                </div>              
            </article> 
        </div> 
    </section>
    </body>
</html>

