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
            <form class="cmxform" id="signupForm" action="LoginRegistroServlet" method="post" enctype="multipart/form-data">
                <fieldset>
                    
                    <section class="hero is-dark">
                        <div class="hero-body">
                          <div class="container">
                              <a class="title">
                                <span class="icon">
                                <i class="fas fa-heartbeat"></i>
                                </span>
                                <span class="brand">Agendar Cita</span>
                                </a>
                                <br>
                                <h2 class="subtitle">
                                Agendar Citas
                              </h2>
                           </div>
                        </div>
                    </section>
                   
                    <br>
            
                    <!--campos del form-->
                        <!--idPaciente-->
                        <div class="field">
                            <label class="label" for="idPaciente">ID Paciente</label>
                            <div class="control">
                            <input class="input" id="idPaciente" name="idPaciente" type="text" placeholder="Ej: 1">
                            </div>
                        </div>

                        <!--idDoctor-->
                        <div class="field">
                            <label class="label" for="idDoctor">ID Doctor</label>
                            <div class="control">
                                <input class="input" id="idDoctor" name="idDoctor" type="text" placeholder="1">
                            </div>
                        </div>  

                        <!--Fecha de la cita-->
                        <div class="field">
                            <label class="label" for="fechaCita">Fecha de la cita</label>
                            <div class="control">
                            <input class="input" id="fechaCita" name="fechaCita" type="date">
                            </div>
                        </div> 

                        <div class="field">
                        <label class="label">Motivo de la cita</label>
                        <div class="control">
                            <div class="select">
                                <select id="" name="motivo">
                                    <option id="chequeoGeneral" name="chequeoGeneral" value="chequeoGeneral">Chequeo general</option>
                                    <option id="cardiologia" name="cardiologia" value="cardiologia">Cardiología</option>
                                    <option id="neurologia" name="neurologia" value="neurologia">Neurología</option>
                                    <option id="pediatria" name="pediatria" value="pediatria">Pediatría</option>
                                    <option id="ortopedia" name="ortopedia" value="ortopedia">Ortopedia</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <br><br>  
               
        </section>
    </form>
        
    </body>
</html>