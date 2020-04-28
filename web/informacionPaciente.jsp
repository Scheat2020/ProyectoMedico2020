<%-- 
    Document   : informacionPaciente
    Created on : Apr 8, 2020, 5:11:51 PM
    Author     : windows
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información del Paciente</title>
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
        <section class ="section"> 
            <div class="container">
                <h1 class="title">
                    Ficha del paciente <%= CUserInf.getNombres() %> <%= CUserInf.getApellidos() %> 
                </h1>
                <br>
            </div>
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <figure class="image is-128x128">
                        <img class="is-rounded" src="Images/<%= CUserInf.getFoto()%>">
                    </figure>
                </div>
                <div class="column is-one-quarter">
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
               
                
                <div class="column is-one-quarter">
                    <h2 class="title">Registro de recetas </h2>
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
                   
                </div>
            </div>
            
            
            <br><br><br><br><!--*****ARREGLAR IRGENTEMENTE****-->
            
            <div class="columns is-vcentered">
                
                <div class="column is-one-quarter">
                    <div class="container">
                        <div class="buttons">
                            <a href="RecetasServlet?usuario=<%= CDocInf.getUsuario()%>&password=<%= CDocInf.getPassword() %>&formid=2">
                                <button class="button is-primary">Volver</button>
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="column is-half">
                    <div class="container">
                       <article class="message is-primary">
                            <div class="message-body">
                             <strong>Cita programada</strong>
                             <br> Su cita está programada para: <%= CCita.getFecha() %>. A las <%= CCita.getHora() %>
                            </div>
                        </article>
                    </div>
                    <p><p/>
                </div>
                <div class="column is-one-quarter">
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
                </div>
             <br><br><br>

        <section/>
    <body/>
</html>

    