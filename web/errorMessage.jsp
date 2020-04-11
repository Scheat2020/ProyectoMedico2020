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
        <title>Error Message</title>
    </head>
    <%
        String strMessage = 
                (String) request.getSession().getAttribute("message");
    %>
    <body>
        <h1>Error Message</h1>
        <p><%= strMessage %></p>
        <br><br>
        <a href="inicioPaciente.jsp">go to log in form</a>
    </body>
</html>

