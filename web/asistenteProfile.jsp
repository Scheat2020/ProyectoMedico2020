<%-- 
    Document   : AsistenteProfile
    Created on : Apr 25, 2020, 3:39:56 PM
    Author     : Sara Valentina
--%>

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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información del Asistente</title>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
        <script>
	$().ready(function() {
		

		// validate signup form on keyup and submit
		$("#signupForm").validate({
			rules: {
				fecha: "required",
				motivo: "required",
			},          
                       
			messages: {
				fecha: "*Ingrese una fecha para la cita",
				motivo: "*Ingrese el motivo de la cita",
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
        
        session.getAttribute("user");
    %>
    <body>
        <section class="hero is-dark">
            <div class="hero-body">
              <div class="container">
                  <a class="title">
                    <span class="icon">
                    <i class="fas fa-heartbeat"></i>
                    </span>
                    <span class="brand">CLÍNICA MÉDICA</span>
                  </a>
                  <br>
                  <div class="container">
                    <h1 class="subtitle">Bienvenido, <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></h1>
                </div>
               </div>
            </div>
         </section>

        <section class="hero is-light">
          <div class="hero-body">
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
                    <div class="column is-one-quarter">
                        <div class="container">
                            <a href="controladorSalir.do">
                                <button class="button is-danger">Cerrar sesión</button>
                            </a>
                        </div>
                    </div>

                </div>
                <br><br>

                <h1 class="title is-dark is-centered">Agendar cita</h1> 
                    <section class="hero is-info">
                    <div class="hero-body">
                        <form class="cmxform" id="signupForm" action="CitasServlet" method="post">
                            
                            
                            
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
                                             <option value="<%= CTemp.getIdPaciente()%>"><%= CTemp.getNombres() %> <%= CTemp.getApellidos() %></option>
                                             
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
                                            
                                            <option value="<%= CTemp.getIdPaciente()%>"><%= CTemp.getNombres()%> <%= CTemp.getApellidos()%></option>
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
                            <br><br>  


                            <p>
                                <input class="button is-light is-radiusless is-shadowless button is-medium is-fullwidth" type="submit" value="Confirmar">
                                <input type="hidden" name="formid" value="1" />
                            </p>

                        </form>
                    </div>
                </section>
            </div>



        </section>
        
    </body>
</html>