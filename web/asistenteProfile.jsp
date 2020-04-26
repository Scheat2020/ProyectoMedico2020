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
        <title>Información del Asistente</title>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
    </head>
    
    <%
        InfoAsisObj CUserInf =
                (InfoAsisObj)request.getSession().getAttribute("logged_Inf");
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
                <form class="cmxform" id="signupForm" action="LoginRegistroServlet" method="post" enctype="multipart/form-data">
                    <!--idPaciente-->
                    <div class="field">
                        <label class="label" for="idPaciente">ID Paciente</label>
                        <div class="control">
                        <input class="input" id="paciente" name="paciente" type="text" placeholder="Ej: 1">
                        </div>
                    </div>

                    <!--idDoctor-->
                    <div class="field">
                        <label class="label" for="idDoctor">ID Doctor</label>
                        <div class="control">
                            <input class="input" id="doctor" name="doctor" type="text" placeholder="1">
                        </div>
                    </div>  

                    <!--Fecha de la cita-->
                    <div class="field">
                        <label class="label" for="fecha">Fecha de la cita</label>
                        <div class="control">
                        <input class="input" id="fecha" name="fecha" type="date">
                        </div>

                    </div> 
                        
                    <!--Hora de la cita-->
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
                        <div class="control">
                           <button type="submit" id="hora" class="button is-light">Choose</button>
                        </div>
                    </div>
                    
                    <!--Motivo de la cita-->
                    <div class="field">
                        <label class="label">Motivo de la cita</label>
                        <div class="control">
                            <div class="select">
                                <select id="motivo" name="motivo">
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
               
                        
                            <p>
                                <input class="button is-light is-radiusless is-shadowless button is-medium is-fullwidth" type="submit" value="Confirmar">
                                <input type="hidden" name="formid" value="5" />
                            </p>
                      
                </form>
            </section>
            </div>
            
            
                
        </section>
        </section>
       </div>
        
    </body>
</html>