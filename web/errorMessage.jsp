<%-- 
    Document   : errorMessage
    Created on : 04-10-2020, 10:53:46 PM
    Author     : vanes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/bulma/bulma.css" rel="stylesheet" type="text/css"/>
        <title>Mensaje de error</title>
        <script defer src="https://use.fontawesome.com/releases/v5.12.1/js/all.js"></script>
    </head>
    <%
        String strMessage = 
                (String) request.getSession().getAttribute("message");
    %>
    <body>
        <div class="column is-half">
        </div>
        <div class="column is-half">
            <br><br>
            <h1 class="title">Se ha producido un error</h1>
            <p><%= strMessage %></p>
            <br><br>
            <a href="index.jsp">
            <button class="button is-danger">Volver al inicio </button>
            </a>
        </div>
    </body>
</html>

