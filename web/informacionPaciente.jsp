<%-- 
    Document   : informacionPaciente
    Created on : Apr 8, 2020, 5:11:51 PM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Información del Paciente</title>
    </head>
    <body>
        <section class ="section"> 
            <div class="container">
                <h1 class="title">
                    Ficha del paciente
                    
                </h1>
                <br>
            </div>
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <figure class="image is-128x128">
                        <img class="is-rounded" src="https://i.pinimg.com/236x/4d/b7/b7/4db7b7ecb39c4eebc5b8f5358773e4a2--break-room-stock-photos.jpg">
                    </figure>
                </div>
                <div class="column is-half">
                    <div class="container">
                        <p class="label">Cuadro médico</p>
                    </div>
                    <p>Aquí va el historial médico del paciente<p/>
                </div>
                <div class="column is-one-quarter">
                    <div class="container">
                        <article class="message is-primary">
                        <div class="message-header">
                            <p>Receta Actual</p>
                            <button class="delete" aria-label="delete"></button>
                        </div>
                        <div class="message-body">
                            Aquí va la ultima receta que mandó el doctor.
                        </div>
                    </article>
                    </div>
                   
                </div>
            </div>
            
            
            <br><br><br><br><!--*****ARREGLAR IRGENTEMENTE****-->
            
            <div class="columns is-vcentered">
                <div class="column is-one-quarter">
                    <div class="container">
                        <p class="label">Datos personales</p>
                    </div>
                    <p>Aquí van los datos personales del paciente<p/>
                </div>
                <div class="column is-half">
                    <div class="container">
                        <p class="label">Registro médico</p>
                    </div>
                    <p>Aquí va registro médico del paciente<p/>
                </div>
                <div class="column is-one-quarter">
                   <textarea class="textarea" placeholder="Actualización de receta"></textarea>
                   <div class="column is-one-quarter">
                    <div class="container">
                        <div class="control">
                            <button class="button is-primary">Actualizar</button>
                            </div>
                    </div>
                </div>      
            </div>                   
                </div>
             <br><br><br>
             
                <article class="message is-primary">
                    <div class="message-body">
                     <strong>Cita programada</strong>
                     <br> Aqui va la informacion de la cita 
                    </div>
                  </article>
            
        <section/>
    <body/>
</html>

    