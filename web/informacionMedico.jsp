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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información de Médico</title>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
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
                <h1 class="subtitle">Bienvenido, Dr. <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></h1>
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
                <br>
            
                <div class="columns is-vcentered">
                    <div class="column is-one-quarter">
                        <!--Esta clase la cree en el archivo bulma.css -->
                        <!--<figure class="image is-190x190"> -->
                        <figure class="image is-190x190 is-center is-centered">
                            <img class="is-rounded" src="https://screenfiction.org/content/image/0/5/184/924b45fd-full.webp" >
                        </figure>
                    </div>
                    <div class="column">
                        <div class="container">
                            <p class="label">Dr. <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %></p>
                        </div>
                        <p><%= CUserInf.getEspecialidad() %><p/>
                        <br>
                        <p><%= CUserInf.getDireccion() %></p>
                        <p>Credencial: <%= CUserInf.getCredencial() %></p>
                        <p>Telefono: <%= CUserInf.getTelefono() %></p>
                    </div>


                    <article class="message is-primary">
                        <div class="message-body">
                         <strong>Paciente más próximo</strong>
                         <br> <%= CFistDB.getApellidos() %>, <%= CFistDB.getNombres() %>
                         <input type="hidden" id="first" name="first" value="<%= CFistDB.geIdPaciente() %>"  />
                         <a href="InfoPacientesServlet?idPaciente=<%= CFistDB.geIdPaciente() %>&Doc=<%= CUserInf.getUsuario()%>&formid=1">Revisar su registro</a> <%-- Holaaaaa --%>
                        </div>
                     </article>

                    <br>
                </div>
                <br><br><br><br>

                <div class="columns is-vcentered">
                    <div class="column is-one-quarter">
                        <div class="container">
                            <p class="label"></p>
                        </div> 
                    </div>
                    <div class="column is-half">
                        <div class="container">
                            <h1 class="title">
                                Lista de citas agendadas
                            </h1>
                        </div>
                    <br><br>
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
                                   }
                               %>                         


                            </tbody>
                          </table>
                        </div>
                </div>
     
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
            
            </section>                     
        </div>           
    </section>
    </body>
</html>
