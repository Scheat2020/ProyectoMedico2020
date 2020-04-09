<%-- 
    Document   : cuadroMedico
    Created on : 7 mar. 2020, 12:12:56
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuadro médico</title>
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
         
    </head>
    <body>
       
        <section class ="section">
            
            <form action="" method="get">

                <!--Estatura-->
                <div class="field">
                    <label class="label">Estatura en metros</label>
                    <div class="control">
                        <input class="input" type="number" id="estatura" name="estatura" placeholder="Ej. 1.7">
                    </div>
                </div>
                <!--Tipo de sangre-->
                <div class="control">
                    <label class="label">Tipo de sangre</label>
                    <div class="select">
                        <select id="tipoSangre" name="tipoSangre">
                            <option id="A+" name="A+" value="A+">A+</option>
                            <option id="B+" name="B+" value="B+">B+</option>
                            <option id="AB+" name="AB+" value="AB+">AB+</option>
                            <option id="O+" name="O+" value="O+">O+</option>
                            <option id="A-" name="A-" value="A-">A-</option>
                            <option id="B-" name="B-" value="B-">B-</option>
                            <option id="AB-" name="AB-" value="AB-">AB-</option>
                            <option id="O-" name="O-" value="O-">O-</option>
                        </select>
                    </div>
                </div>

                <!--Alergias-->
                <div class="field">
                    <label class="label">Alergias</label>
                    <div class="control">
                        <input class="input" type="text" id="alergias" name="alergias" placeholder="Ej. Nueces, polen, picadura de animales, etc.">
                    </div>
                </div>

                <!--Historial familiar-->
                <div class="field">
                    <label class="label">Historial familiar</label>
                    <div class="control">
                        <input class="input" type="text" id="historial" name="historial" placeholder="Ej. cáncer, diabetes, afecciones cardìacas, etc.">
                    </div>
                </div>

                 <div class="field is-grouped">
                        <p class="control">
                            <a class="button is-primary"  href="inicioPaciente.jsp">
                                Finalizar
                            </a>
                         </p>
                </div>
            </form>
        </section>
    </body>
</html>
