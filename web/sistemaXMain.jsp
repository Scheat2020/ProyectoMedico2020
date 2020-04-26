<%-- 
    Document   : sistemaXMain
    Created on : 04-10-2020, 10:59:45 PM
    Author     : vanes
--%>
<%@page import="com.proyectomedicowebapp.objects.InfoAsisObj"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Información general</title>
    </head>
    <%
        InfoAsisObj CLoggedUser = 
                (InfoAsisObj)request.getSession().getAttribute("logged_user");
    %>
    <body>
        <%
            if(CLoggedUser!=null)
            {
        %>
        <h1>Información general</h1>
        <p>You are logged in, welcome <%= CLoggedUser.getUsuario() %></p>
        <%
            }
            else
            {
                request.getRequestDispatcher("errorMessage.jsp")
                       .forward(request, response);
            }
        %>
    </body>
</html>
