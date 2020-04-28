<%-- 
    Document   : AsistenteProfile
    Created on : Apr 25, 2020, 3:39:56 PM
    Author     : Sara Valentina
--%>



<%@page import="com.proyectomedicowebapp.objects.TablaAsisObj"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.proyectomedicowebapp.objects.TablaDocObj"%>
<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page import="java.util.List"%>
<%@page import="com.proyectomedicowebapp.objects.TablaObj"%>
<%@page import="com.proyectomedicowebapp.objects.InfoAsisObj"%>
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
        <script src="Scripts/validate/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="Scripts/validate/jquery.validate.js" type="text/javascript"></script>
        
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Asistente médico</title>
    
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
        
        <script>
	$().ready(function() {
		

		// validate signup form on keyup and submit
		$("#signupForm").validate({
			rules: {
				fecha: "required",
				motivo: "required"
			},          
                       
			messages: {
				fecha: "*Ingrese una fecha para la cita",
				motivo: "*Ingrese el motivo de la cita"
			}
		});
                
                
                
	});
	</script>
    </head>
    
    <%
        UserObj CUser = 
                (UserObj)request.getSession().getAttribute("logged_user");
        
        InfoAsisObj CUserInf =
                (InfoAsisObj)request.getSession().getAttribute("logged_Inf");
        
        List<TablaDocObj> CList = 
                (List<TablaDocObj>)request.getSession().getAttribute("usuarios");
        
        List<TablaDocObj> CListDoc = 
                (List<TablaDocObj>)request.getSession().getAttribute("doctores");
        
        List<TablaAsisObj> CListTab = 
                (List<TablaAsisObj>)request.getSession().getAttribute("tabla");
        
        session.getAttribute("user");
    %>
    <body>
        
    <!--BARRA LATERAL-->
    <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align">
                Asistente médico <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
            </header>
            <figure class="full-width NavLateral-logo">
                <img src="Images/<%= CUserInf.getFoto()%>" alt="material-logo" class="responsive-img center-box">
                <figcaption class="center-align"><%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></figcaption>
                <br>
                <div class="NavLateral-Nav">
                <ul class="full-width">
                    <pr>
                        <article>
                        <DIR>Información general:</DIR>
                        <DIR><p>Telefono: <%= CUserInf.getTelefono() %></p>
                             <p>Correo: <%= CUserInf.getCorreo() %></p></DIR>
                        </article>
                    </pr>   
                </ul>
                </div>
            </figure>  
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
            <li><a href="controladorSalir.do?formid=3" class="tooltipped waves-effect waves-light btn-ExitSystem" data-position="bottom" data-delay="50" data-tooltip="Logout"><i class="fas fa-power-off"></i></a></li>               
        </ul>   
    </div>
    
    <div class="row">
                        
            <!-- FORM -->
            <article class="col s12">
                <br>
                <DIR><DIR><h4>Confirmación de la cita:</h4></DIR></DIR>
                <hr>
            
                <div class="columns is-vcentered">
                    <div class="column is-half">
                        <div class="container">
                            <div class="row">
                    
                                <form class="col s12" id="signupForm" action="CitasServlet" method="post">
                         
                                    <!--Paciente-->
                                    <label class="label" for="paciente">Paciente</label>
                                        <div class="field has-addons">                              
                                            <div class="control is-expanded">
                                                <div class="select is-fullwidth">
                                                    <select id="paciente" name="paciente">
                                                        <% 
                                                            if(CList!=null)
                                                             {
                                                                 Iterator<TablaDocObj> ite = CList.iterator();
                                                                 TablaDocObj CTemp;
                                                                 while(ite.hasNext())
                                                                 {
                                                                     CTemp = ite.next();
                                                        %>
                                                         <option value="<%= CTemp.getIdPaciente()%>"><%= CTemp.getApellidos() %>, <%= CTemp.getNombres() %></option>

                                                        <%
                                                                }
                                                            }
                                                        %>    
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                    <!--Doctor-->
                                    <label class="label" for="doctor">Doctor</label>
                                    <div class="field has-addons">
                                        <div class="control is-expanded">
                                            <div class="select is-fullwidth">
                                                <select id="doctor" name="doctor">

                                                        <% 
                                                            if(CList!=null)
                                                             {
                                                                 Iterator<TablaDocObj> ite = CListDoc.iterator();
                                                                 TablaDocObj CTemp;
                                                                 while(ite.hasNext())
                                                                 {
                                                                    CTemp = ite.next();
                                                        %>

                                                        <option value="<%= CTemp.getIdPaciente()%>"><%= CTemp.getApellidos()%>, <%= CTemp.getNombres()%></option>
                                                        <%
                                                                }
                                                            }
                                                        %>    

                                                    </select>

                                            </div>
                                        </div>
                                    </div>

                                    <!--Fecha de la cita-->
                                    <label class="label" for="fecha">Fecha de la cita</label>                            
                                    <div class="field">
                                        <div class="control">
                                        <input class="input" id="fecha" name="fecha" type="date">
                                        </div>
                                    </div> 

                                    <!--Hora de la cita-->
                                    <label class="label" for="hora">Hora</label>
                                    <div class="field has-addons">    
                                        <div class="control is-expanded">
                                            <div class="select is-fullwidth">
                                                <select id="hora" name="hora">
                                                     <option value="08:30:00">8:30</option>
                                                     <option value="09:30:00">9:30</option>
                                                     <option value="10:30:00">10:30</option>
                                                     <option value="13:30:00">13:30</option>
                                                     <option value="14:30:00">14:30</option>
                                                     <option value="15:30:00">15:30</option>
                                                     <option value="16:30:00">16:30</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <!--Motivo de la cita-->
                                    <div class="field">
                                        <label class="label" for="motivo">Motivo</label>
                                        <div class="control">
                                            <input class="input" id="motivo" name="motivo" type="text" placeholder="Dolores en el pecho">
                                        </div>
                                    </div>
                                
                                    <br>
                                </form>                      
                            </div>
                        </div>                        
                    </div>            
                </div>
                
                <%--Boton registrar cita--%>
                <div class="column is-one-quarter">
                    <div class="container">
                            <p>      
                                <input class="button is-light is-radiusless is-shadowless button is-medium is-fullwidth" type="submit" value="Confirmar">
                                <input type="hidden" name="formid" value="1" />
                                <input type="hidden" name="asistente" value="<%= CUser.getUser() %>" />
                                <input type="hidden" name="password" value="<%= CUser.getPassword() %>" />
                            </p>
                    </div>
                </div>
                                    
                 
                <%--TABLA--%>
                <br><br><br>
                <DIR><DIR><h4>Citas agendadas:</h4></DIR></DIR>
                <hr>     
                
                                                              
            
                <div class="columns is-vcentered">
                    
                    <div class="column is-half">
                        
                    <DIR>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID Paciente</th>
                                <th>Paciente</th>
                                <th>Número</th>
                                <th>Correo</th>
                                <th>Fecha Agendada</th>
                                <th>Hora Agendada</th>
                                <th>ID Doctor</th>
                                <th>Doctor</th>
                                <th>Borrar</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID Paciente</th>
                                <th>Paciente</th>
                                <th>Número</th>
                                <th>Correo</th>
                                <th>Fecha Agendada</th>
                                <th>Hora Agendada</th>
                                <th>ID Doctor</th>
                                <th>Doctor</th>
                                <th>Borrar</th>
                            </tr>
                        </tfoot>
                        <tbody>


                        <% 
                           if(CList!=null)
                            {

                                Iterator<TablaAsisObj> ite = CListTab.iterator();
                                TablaAsisObj CTemp;
                                while(ite.hasNext())
                                {
                                    CTemp = ite.next();
                        %>
                        <tr>
                            <td id="idPaciente" name="idPaciente"><%= CTemp.getIdPaciente() %></td>
                            <td id="Paciente" name="nombres"><%= CTemp.getApellidosPa()%>, <%= CTemp.getNombresPa() %></td>
                            <td id="numero" name="numero"><%= CTemp.getNumero() %></td>
                            <td id="correo" name="correo"><%= CTemp.getCorreo() %></td>
                            <td id="cita" name="apellidos"><%= CTemp.getFecha() %></td>
                            <td id="hora" name="cita"><%= CTemp.getHora() %></td>
                            <td id="IdDoctor" name="IdDoctor"><%= CTemp.getIdDoctor() %></td>
                            <td id="Doctor" name="Doctor"><%= CTemp.getApellidosDoc() %>, <%= CTemp.getNombresDoc() %></td>
                            <td id="borrar" name="borrar"><a href="CitasServlet?paciente=<%= CTemp.getIdPaciente() %>&doctor=<%= CTemp.getIdDoctor() %>&fecha=<%= CTemp.getFecha() %>&hora=<%= CTemp.getHora() %>&asistente=<%= CUser.getUser() %>&password=<%= CUser.getPassword() %>&formid=2">Borrar</a></td>
                        </tr>
                        <%
                                }
                            }else {
                        %>                         

                        <%
                            }
                        %>                 
                        </tbody>
                      </table>
                      </DIR>
                    </div>
                </div>
                
                <br><br>
                <%--Boton actualizar tabla--%>
                <div class="column is-one-quarter">
                    <div class="container">
                        <form class="cmxform" id="logAdminForm" action="LoginRegistroServlet?usuario=<%= CUser.getUser() %>&password=<%= CUser.getPassword() %>&formid=4" method="post">
                            <input class="button is-light is-radiusless is-shadowless button is-medium is-fullwidth" type="submit" value="Actualizar tabla">
                        </form>
                    </div>
                </div>
                <br><br><br><br>  
            </article>
        </section>
    </body>
</html>