<%-- 
    Document   : sistemaXMain
    Created on : 04-10-2020, 10:59:45 PM
    Author     : vanes
--%>
<%@page import="com.proyectomedicowebapp.objects.UserObj"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sistema x Main</title>
    </head>
    <%
        UserObj CLoggedUser = 
                (UserObj)request.getSession().getAttribute("logged_user");
    %>
    <body>
        <%
            if(CLoggedUser!=null)
            {
        %>
        <h1>sistema x Main</h1>
        <p>you are logged in, welcome <%= CLoggedUser.getUser() %></p>
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
