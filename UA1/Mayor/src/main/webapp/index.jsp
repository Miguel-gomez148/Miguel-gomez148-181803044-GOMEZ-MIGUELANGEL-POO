<%-- 
    Un programa que solicite un número, el programa solicita dichos números y 
    muestra el menor y el mayor de ellos. Se necesita más de un formulario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar Número</title>
    </head>
    <body>
        <h1 style="color:gold">Ingrese el número de números que desea ingresar</h1>
        <form action ="solicita.jsp">
            <input type="number" name="numero" min="1" max="100000" required/>
            <input type="submit" value="Enviar"/>
        </form>
    </body>
</html>
