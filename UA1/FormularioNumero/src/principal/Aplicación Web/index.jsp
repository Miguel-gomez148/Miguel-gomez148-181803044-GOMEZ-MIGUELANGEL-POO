<%-- 
    Document   : index
    Created on : 20/05/2020, 09:57:40 AM
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrando Numeros MAGR</title>
    </head>
    <body>
        <h1></h1>
        <p>Aqui ingresaras un <b>NUMERO ENTERO</b></p>
        <form method="GET">  
                <input type="number" name="numero" required /><br><br>
                <input type="submit" value="Mostrar"/>
        </form>
        <h1>NUMERACIÓN: </h1>       
        <%
            try{
               String Num=request.getParameter("numero");
                int numero= Integer.valueOf(Num);
                if(numero>0){
                    for (int i=0; i<=numero; i++){
                    out.println(i);
                    }
                }else{
                    for (int i=0; i>=numero; i--){
                        out.println(i);
                    }
                }
            }catch (Exception e) {
                System.out.println("Hubo un error");
    }
    
        %>
    </body>
</html>
