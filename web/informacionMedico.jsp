<%-- 
    Document   : informacionMedico
    Created on : Apr 8, 2020, 11:52:53 AM
    Author     : windows
--%>

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
    </head>
    <% 
         InfoDocObj CUserInf =
                (InfoDocObj)request.getSession().getAttribute("logged_Inf");
        session.getAttribute("user"); 

         List<TablaObj> CList = 
                (List<TablaObj>)request.getSession().getAttribute("usuarios");
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
                    <figure class="image is-128x128">
                        <img class="is-rounded" src="https://screenfiction.org/content/image/0/5/184/924b45fd-full.webp" >
                    </figure>
                </div>
                <div class="column is-half">
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
                     <br> Sergio David, López Paniagua
                     <a href="informacionPaciente.jsp">Revisar su registro</a>
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

                          </tr>
                        </thead>
                        <tfoot>
                          <tr>
                            <th><abbr title="ID">ID</abbr></th>
                            <th>Apellidos</th>
                            <th>Nombres</th>
                            <th><abbr title="Detalles">Detalles</abbr></th>
                            <th><abbr title="Date">Fecha Agendada</abbr></th>
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
                            <th>1</th>
                            <td><%= CTemp.getApellidos() %>
                            </td>
                            <td><%= CTemp.getNombres() %></td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td><%= CTemp.getFecha() %></td>
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
    </body>
</html>
