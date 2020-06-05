<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adiviname el número</title>
    </head>
    <body><%
        int num = (int) (Math.random() * 100 + 1);
            int turnos = 0, eleccion = 0;
            if (request.getParameter("numero") != null && request.getParameter("numero") != ""){
                do {
                    System.out.println("Por favor ingresa un número entre 1 y 100");
                    eleccion = Integer.parseInt(request.getParameter("numero"));
                    if (eleccion > num) {%>
                        <h4 style="color:blue">El número es menor</h4>
                        <% turnos = turnos - 1;
                        } else if (eleccion < num) {
                            %><h4 style="color:blue">El numero es mayor</h4>
                           <%turnos = turnos - 1;
                        } else if (eleccion == num){%>
                        <h4 style="color:blue">Felicidades Haz Acertado"</h4>
                  <% turnos=0;}
                } while (turnos>0);%>
                <br>
                <form>
                    <label for="mynum">Ingresa un número (entre 1 y 100):</label>
                    <input type="number" value="" id="mynum" name="numero"" min="1" max="100" required/><br><br>
                    <input type="submit" value="Enviar"/>
                </form>
            <%} else {%>
        <form> 
            <h1 style="color:gold">BIENVENIDO AL JUEGO PARA ADIVINAR UN NÚMERO</h1><br>
            <label for="mynum">Ingresa un número (entre 1 y 100):</label>
            <input type="number" id="mynum" name="numero"" min="1" max="100" required/><br><br>
            <input type="submit" value="Enviar"/>
        </form>
        <% } %>
</body>
</html>

