<%-- 
    Document   : citas
    Created on : Mar 7, 2020, 7:56:44 AM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>Agendar Citas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/90de824922.js" crossorigin="anonymous"></script>
    </head>
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
              <h2 class="subtitle">
                Agendar Citas
              </h2>
           </div>
        </div>
     </section>
        
    <br>
 
    <section class="hero is-primary">
        <section class="section">
            
            <br>
            <div class="columns is-mobile is-centered">
                <div class="column">
                    <p class="title">Horarios   </p>
                </div>
                <div class="column">
                  <p class="title">Contactos</p>
                </div>
                <div class="column">
                  <p class="title">Dirección</p>
                </div>
            </div>
            <div class="tile is-ancestor">
                <div class="tile is-parent">
                  <article class="tile is-child box"> 
                    <p>De lunes a viernes</p>
                    <p>8:30 a.m a 12:30 p.m</p>
                    <p>2:00 p.m a 5:30 p.m</p>
                  </article>
                </div>
                
                <div class="tile is-parent">                   
                    <article class="tile is-child box">
                    <p>Correo electrónico: clinicamedica@gmail.com</p>
                    <p>Teléfono: 2221-3263</p>
                    </article>
                </div>
                
                <div class="tile is-parent">
                    <article class="tile is-child box">
                    <p>Diagonal Dr. Luís Edmundo Vásquez, Colonia Médica. San Salvador, El Salvador</p>
                    </article>
                </div>
            
            </div>
            
            <br>
            
            </section>   
        </section>

        
    <br>
    <section class="hero is-dark">
        <div class="hero-body">
          <div class="container">
            <div class='column'>
                <div class="columns is-half">
                    <div class="field">
                        <div class="control">                           
                             <p class="control">
                                <a href="FichaTecnica.jsp" class="is-light is-radiusless is-shadowless button is-medium">
                                    Volver
                                </a>
                             </p>
                        </div>
                    </div>  
                </div>
            </div>
               </div>
            </div>
        </section>

                
            
    </body>
</html>
