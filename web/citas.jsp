<%-- 
    Document   : citas
    Created on : Mar 7, 2020, 7:56:44 AM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Agendar Cita</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <section class="section">
        <div class="container">
            <h1 class ="title">
                Agendar Citas
            </h1>
            <p class="title-2">
                Por favor complete la información solicitada
            </p>
        </div>
        
        <form action="NameServlet" method="get">
           <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Paciente</label>
            </div>
            <div class="field-body">
              <div class="field">
                <p class="control is-expanded has-icons-left">
                  <input class="input" type="text" placeholder="Name">
                  <span class="icon is-small is-left">
                    <i class="fas fa-user"></i>
                  </span>
                </p>
              </div>
              <div class="field">
                <p class="control is-expanded has-icons-left has-icons-right">
                  <input class="input is-success" type="email" placeholder="ejemplo@gmail.com">
                  <span class="icon is-small is-left">
                    <i class="fas fa-envelope"></i>
                  </span>
                  <span class="icon is-small is-right">
                    <i class="fas fa-check"></i>
                  </span>
                </p>
              </div>
            </div>
          </div>

          <div class="field is-horizontal">
            <div class="field-label"></div>
            <div class="field-body">
              <div class="field is-expanded">
                <div class="field has-addons">
                  <p class="control">
                    <a class="button is-static">
                      +503
                    </a>
                  </p>
                  <p class="control is-expanded">
                    <input class="input" type="tel" placeholder="Télefono de contacto">
                  </p>
                </div>
              <!--  <p class="help">Do not enter the first zero</p> -->
              </div>
            </div>
          </div>

          <div class="field is-horizontal">
            <div class="field-label is-normal">
              <label class="label">Motivo de la cita</label>
            </div>
            <div class="field-body">
              <div class="field is-narrow">
                <div class="control">
                  <div class="select is-fullwidth">
                    <select>
                      <option>Seguimiento médico</option>
                      <option>Control médico</option>
                      <option>Otros</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="field is-horizontal">
            <div class="field-label">
              <label class="label">¿Cuenta con seguro médico?</label>
            </div>
            <div class="field-body">
              <div class="field is-narrow">
                <div class="control">
                  <label class="radio">
                    <input type="radio" name="member">
                    Sí
                  </label>
                  <label class="radio">
                    <input type="radio" name="member">
                    No
                  </label>
                </div>
              </div>
            </div>
          </div>
           
         <div class="field-label">
              <label class="label">Seleccione la fecha de su conveniencia</label>
         </div>
            
          <div class="field is-grouped is-grouped-multiline">
              <p class="title-2">
                Lunes, 16 de Marzo
            </p>
            <br><br>
          <p class="control">
            <a class="button">
              9:00 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              10:30 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              2:00 P.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              2:45 P.M.
            </a>
          </p>
        </div>
            
        <div class="field is-grouped is-grouped-multiline">
              <p class="title-2">
                Martes, 17 de Marzo
            </p>
            <br>
          <p class="control">
            <a class="button">
              9:30 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              11:00 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              3:30 P.M.
            </a>
        </div>
            
         <div class="field is-grouped is-grouped-multiline">
              <p class="title-2">
                Miercóles, 18 de Marzo
            </p>
            <br>
          <p class="control">
            <a class="button">
              8:00 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              8:30 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              10:00 P.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              2:00 P.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              2:30 P.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              3:00 P.M.
            </a>
          </p>  
        </div>
            
         <div class="field is-grouped is-grouped-multiline">
              <p class="title-2">
                Jueves, 19 de Marzo
            </p>
            <br>
          <p class="control">
            <a class="button">
              10:00 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              11:00 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              2:30 P.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              3:00 P.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              4:00 P.M.
            </a>
          </p>
        </div>
            
         <div class="field is-grouped is-grouped-multiline">
              <p class="title-2">
                Viernes, 20 de Marzo
            </p>
            <br>
          <p class="control">
            <a class="button">
              8:00 A.M.
            </a>
          </p>
          <p class="control">
            <a class="button">
              10:30 A.M.
            </a>
          </p>
    
        </div>
              <!-- Left empty for spacing -->
            <div class="field is-grouped">
            <p class="control">
                <a class="button is-primary">
                    Agendar
                </a>
             </p>
            <p class="control">
                <a class="button is-light">
                    Cancelar
                </a>
            </p>
            </div>
        </form>
        
        
    </section>
    </body>
</html>
