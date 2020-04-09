<%-- 
    Document   : informacionMedico
    Created on : Apr 8, 2020, 11:52:53 AM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información Médico</title>
    </head>
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
                        <p class="label">Neil Melendez</p>
                    </div>
                    <p>Médico general y cirujano cardiologo<p/>
                    <br>
                    <p>St. Bonaventure Hospital</p>
                    <p>Telefono: 2265-5875</p>
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
                            Lista de Pacientes
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
                          <tr>
                            <th>1</th>
                            <td>Flores Guzmán
                            </td>
                            <td>Vanessa Alejandra</td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td>05/09/20</td>
                          </tr>
                          <tr>
                            <th>2</th>
                           <td>López Paniagua
                            </td>
                            <td>Sergio David</td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td>29/05/20</td>
                          </tr>
                          <tr>
                            <th>3</th>
                             <td>Parada Ventura
                            </td>
                            <td>Grecia Stefania</td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td>17/10/21</td>
                          </tr>
                          <tr class="is-selected">
                            <th>4</th>
                            <td>Ochoa Gonzales
                            </td>
                            <td>Alexia Rosibel</td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td>01/12/20</td>
                          </tr>
                          <tr>
                            <th>5</th>
                            <td>Cortez Galindo
                            </td>
                            <td>Sara Valentina</td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td>19/08/20</td>
                          </tr>
                          <tr>
                            <th>6</th>
                            <td>Peña Girón
                            </td>
                            <td>Melanie Sabrina</td>
                            <td><a href="informacionPanciente.jsp">Ir</a></td>
                            <td>03/11/20</td>
                          </tr>

                        </tbody>
                      </table>

                
                    </div>
            </div>
        </section>
    </body>
</html>
