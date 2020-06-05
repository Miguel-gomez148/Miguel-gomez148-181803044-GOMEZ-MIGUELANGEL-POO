<%-- 
    Document   : index
    Created on : 20/05/2020, 09:12:26 AM
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Primer Formulario</title>
    </head>
    <body>
        <h1>Mi Primer Formulario</h1>
        <p>Este es mi primer formulario en donde conocere la diferencia entre POST y<b>GET</b></p>
        <form method="POST">  
                <input type="text" name="minombre"/><br><br>
                <input type="password" name="contra"/><br><br>
                <input type="date" name="fechanacimiento"/><br><br>
                <input type="submit" value="Enviar"/>
        </form>
        <h1>Los datos ingresados son: </h1>
        <%
            out.println(request.getParameter("minombre"));
            out.println(request.getParameter("contra"));
            out.println(request.getParameter("fechanacimiento"));
        %>
    </body>
</html>
