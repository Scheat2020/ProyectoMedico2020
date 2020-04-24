<%-- 
    Document   : index
    Created on : 24 abr. 2020, 01:13:06
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Pragma","no-cache");
    response.addHeader("Cache-control","must-revalidate");
    response.addHeader("Cache-control", "no-cache");
    response.addHeader("Cache-control", "no-store");
    response.setDateHeader("Expires", 0);
%>
<!DOCTYPE html>

<html>
    <head>
        <title>Clínica médica</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        <section class ="section"> 
            <div class="container">
                <h1 class="title">
                    Clínica médica 
                </h1>

            </div>
            
            
         <br><br>   
        <div class="field is-grouped is-grouped-centered">
            <p class="control">
                <a href="inicioPaciente.jsp" class="button is-primary">
                    Paciente
                </a>
            </p>
            <p class="control">
                <a href="inicioDoctor.jsp" class="button is-primary">
                    Doctor
                </a>
            </p>
        </div>
            <br><br>
            
        </section>
    </body>
</html>
