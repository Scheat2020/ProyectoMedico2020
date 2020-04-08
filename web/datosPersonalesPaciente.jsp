<%-- 
    Document   : datosPersonalesPaciente
    Created on : Mar 7, 2020, 9:47:48 AM
    Author     : Sara Valentina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
FORMULARIO DE DATOS PERSONALES
-->
<html>
    <head>
        <title>Registro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
    </head>
   
    <body>
       
       <section class ="section">
           
            <div class="container">
               
                <h1 class="title">
                    Datos personales
                </h1>
                <p class="title-2">
                    Complete la información requerida
                </p>
            </div>
           
            <form action="" method="get">
               
                <!--campos del form-->
                <div class="field">
                   
                    <!--Nombres y apellidos-->
                    <label class="label">Nombres</label>
                    <div class="control">
                      <input class="input" type="text" placeholder="Ej: Grecia María">
                    </div>
                  </div>

                  <div class="field">
                    <label class="label">Apellidos</label>
                    <div class="control">
                      <input class="input" type="text" placeholder="Ej: Parada Ventura">
                    </div>
                  </div>
               
                    <!--foto-->
                    <div class="file">
                        <label class="label">Fotos de perfil</label>
                        <label class="file-label">
                          <input class="file-input" type="file" name="resume">
                          <span class="file-cta">
                            <span class="file-icon">
                              <i class="fas fa-upload"></i>
                            </span>
                            <span class="file-label">
                              Seleccione el archivo…
                            </span>
                          </span>
                        </label>
                      </div>

               
                <!--Fecha de nacimiento-->
                    <label class="label">Nombres</label>
                    <div class="control">
                      <input class="input" type="date" >
                    </div>

                <!--DUI-->
                    <label class="label">DUI</label>
                    <div class="control">
                      <input class="input" type="text" placeholder="12345678-1">
                    </div>
                 
                   <!--Direcciòn-->
                    <label class="label">Dirección</label>
                    <div class="control">
                      <input class="input" type="text" placeholder="P. Sherman, Calle Wallaby 42, Sydney">
                    </div>
                 
                 
                 <!--Username-->
                  <div class="field">
                    <label class="label">Nombre de usuario</label>
                    <div class="control has-icons-left has-icons-right">
                      <input class="input is-success" type="text" placeholder="Text input" value="bulma">
                      <span class="icon is-small is-left">
                        <i class="fas fa-user"></i>
                      </span>
                      <span class="icon is-small is-right">
                        <i class="fas fa-check"></i>
                      </span>
                    </div>
                    <p class="help is-success">El nombre de usuario esta disponible</p>
                  </div>

                 <!--Celular-->
                    <label class="label">Dirección</label>
                    <div class="control">
                      <input class="input" type="text" placeholder="78787170">
                    </div>
                   
                 <!--Email-->
                  <div class="field">
                    <label class="label">Correo electrónico</label>
                    <div class="control has-icons-left has-icons-right">
                      <input class="input is-danger" type="email" placeholder="Email input" value="ejemplo@gmail.com">
                      <span class="icon is-small is-left">
                        <i class="fas fa-envelope"></i>
                      </span>
                      <span class="icon is-small is-right">
                        <i class="fas fa-exclamation-triangle"></i>
                      </span>
                    </div>
                    <p class="help is-danger">El correo electrónico no es válido</p>
                  </div>
                 
                 <!--Sexo-->
                  <div class="field">
                    <label class="label">Sexo</label>
                    <div class="control">
                      <div class="select">
                        <select>
                          <option>Mujer</option>
                          <option>Hombre</option>
                        </select>
                      </div>
                    </div>
                  </div>


                 <!--terms-->
                  <div class="field">
                    <div class="control">
                      <label class="checkbox">
                        <input type="checkbox">
                        Acepto los términos y condiciones
                      </label>
                    </div>
                  </div>

                  <div class="field">
                    <div class="control">
                      <label class="radio">
                        <input type="radio" name="question">
                        Sí
                      </label>
                      <label class="radio">
                        <input type="radio" name="question">
                        No
                      </label>
                    </div>
                  </div>
                 
                 <!--botones continuar y cancelar-->
                  <div class="field is-grouped">
                    <div class="control">
                      <button class="button is-link">Continuar</button>
                    </div>
                    <div class="control">
                        <a href="inicioPaciente.jsp">
                      <button class="button is-link is-light" >Cancelar</button>
                        </a>
                    </div>
                  </div>

               
               
               
            </form>
           
        </section>
       
    </body>
</html>
