<%-- 
    Document   : CuadroGeneralForm
    Created on : Mar 7, 2020, 10:20:25 AM
    Author     : Sara Valentina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuadro médico</title>
    </head>
    <body>
       
        <section class ="section">
            <!--Nombre-->
            <div class="field">
                <label class="label">Nombre</label>
                <div class="control">
                    <input class="input" type="text" placeholder="Ej. Grecia Maria">
                </div>
            </div>
            
            <!--Estatura-->
            <div class="field">
                <label class="label">Estatura en metros</label>
                <div class="control">
                    <input class="input" type="number" placeholder="Ej. 1.7">
                </div>
            </div>
            <!--Tipo de sangre-->
            <div class="control">
                <label class="label">Tipo de sangre</label>
                <div class="select">
                    <select>
                        <option>A+</option>
                        <option>B+</option>
                        <option>AB+</option>
                        <option>O+</option>
                        <option>A-</option>
                        <option>B-</option>
                        <option>AB-</option>
                        <option>O-</option>
                    </select>
                </div>
            </div>
            
            <!--Alergias-->
            <div class="field">
                <label class="label">Alergias</label>
                <div class="control">
                    <input class="input" type="text" placeholder="Ej. Nueces, Pelo de Gato, Agua">
                </div>
            </div>
            
            <!--Alergias-->
            <div class="field">
                <label class="label">Historial familiar</label>
                <div class="control">
                    <input class="input" type="text" placeholder="Ej. cáncer, paro cardiaco, diabetes">
                </div>
            </div>
            
        </section>
    </body>
</html>

