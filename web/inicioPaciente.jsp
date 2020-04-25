<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/90de824922.js" crossorigin="anonymous"></script>
        <title>Paciente</title>
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
                    Login Paciente
                  </h2>
               </div>
            </div>
        </section>
        
        <section class="hero is-light">
            <div class="hero-body">
              <div class="image is-full-desktop">
                <img src="img/img-paciente.jpg" alt="" >   
               </div>
            </div>
            </section>      


            <section class="hero is-light">
                <div class="container">
                    <p class="title">
                        Inicia tu sesión
                    </p>
                </div>
                <section class ="section">       
                <form class="cmxform" id="logInPacienteForm" action="LoginRegistroServlet" method="get">
                    <div class="field">
                        <label class="label">Usuario</label>
                        <p class="control has-icons-left has-icons-right">
                            <input class="input" id="usuario" name="usuario" type="text" placeholder="User">
                                <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                                </span>
                                <span class="icon is-small is-right">
                                <i class="fas fa-check"></i>
                                </span>
                        </p>
                    </div>
                    <div class="field">
                        <label class="label">Contraseña</label>
                        <p class="control has-icons-left">
                            <input class="input" id="password" name="password" type="password" placeholder="Password">
                            <span class="icon is-small is-left">
                            <i class="fas fa-lock"></i>
                            </span>
                        </p>
                    </div>
                    <div class="field">
                        
                        <p class="control">
                            <a type="submit" value="Log in" class="button is-primary is-radiusless is-shadowless button is-medium is-fullwidth">
                             Login
                            </a>
                        </p>
                        <input type="hidden" name="formid" value="1" />
                                            
                        <br>                       
                        
                        
                        <div>
                            <a href="DataPersonaljsp.jsp">¿No tienes un usuario? Regístrate aquí</a> 
                        </div>
                    </div>
                </form>
            </section>
        </section>
    </body>
</html>

