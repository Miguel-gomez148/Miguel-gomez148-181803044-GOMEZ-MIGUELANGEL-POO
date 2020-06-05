<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrando Numeros MAGR</title>
    </head>
    <body>
        <h1>El programa que debio ser y no fue (Sin TRY, SIN JAVASCRIPT, SIN PROBLEMAS DE GLASSFISH) </h1><%
            if (request.getParameter("numero") != null && request.getParameter("numero") != "") {%>
        <h1 style="color:greenyellow">El ciclo del valor ingresado es:</h1><br><%
            int numero = Integer.parseInt(request.getParameter("numero"));
            if (numero > 0) {
                for (int i = 0; i <= numero; i++) {
                    out.println(i);
                }
            } else {
                for (int i = numero; i <= 0; i++) {
                    out.println(i);
                }
            }%>
       <form>  
            <input type="hidden" name="numero"" value=""/>
            <input type="submit" value="Regresar"/>
        </form>
        <% } else { %>
        <form>  
            <p>Tu número:</p><input type="number" name="numero"" required/><br><br>
            <input type="submit" value="Enviar"/>
        </form>
        <h3 style="color:red"> No haz ingresado un número </h3>
        <%}%> 
    </body>
</html>