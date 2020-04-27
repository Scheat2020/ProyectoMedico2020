<%-- 
    Document   : FichaTecnica
    Created on : 7 mar. 2020, 10:02:21
    Author     : sergi
--%>

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
                <div class="columns is-vcentered">
                    <div class="column is-one-quarter">
                        <figure class="image is-190x190 is-center is-centered">
                            <img class="is-rounded" src="Images/<%= CUserInf.getFoto()%>">
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
                        <a href="controladorSalir.do">
                            <button class="button is-danger">Cerrar sesión</button>
                        </a>
                    </div>
                </div>
                
                <div class="column is-half">
                    <div class="container">
                       <article class="message is-primary">
                            <div class="message-body">
                             <strong>Receta</strong>
                             <% 
                                if (CUserInf.getReceta()!=null)
                                {   
                             %>
                             <br> <%= CUserInf.getReceta() %>
                             <% 
                                } else {
                             %>
                             <br> No hay receta dicponible
                             
                             <% 
                                }
                             %>
                             
                            </div>
                        </article>
                    </div>
                </div>
                <div class="column is-quarter">
                    <div class="container">
                       <article class="message is-primary">
                            <div class="message-body">
                                <strong>Cita programada</strong>
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
                            </div>
                        </article>
                    </div>
                    <p><p/>
                </div>
            </div>
 
        </section>
        </div>
    </section>                           
    </body>
</html>
