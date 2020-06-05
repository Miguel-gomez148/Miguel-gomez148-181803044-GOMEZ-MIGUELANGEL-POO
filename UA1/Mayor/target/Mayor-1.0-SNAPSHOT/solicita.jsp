<%-- 
    Document   : solicita
    Created on : 27/05/2020, 08:26:42 AM
    Author     : migue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    int numero = Integer.parseInt(request.getParameter("numero"));

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitando los números</title>
    </head>
    <body>
        <h1 style="color:goldenrod">INGRESA UN TOTAL DE <%out.println(numero);%> NÚMEROS</h1>
        <form>

            <input type="hidden" value="<%out.print(numero);%>" name="numero"/>
            <%
                int datos[] = new int[numero];
                int i=0;
                while(i < numero) {%>
                    <input type="number" name="num<%out.print(i);%>" min="1" max="100000" requerid/><br>
                    <% if(request.getParameter("num"+i)!=null){
                        int posc = Integer.parseInt(request.getParameter("num"+i));
                        datos[i] = posc;
                    }
                i=i+1;
            }
            for (i= 0; i < numero; i++) {%>
                <h2 style="color:brown"> <%out.println(datos[i]);%></h2>
                <%}
            %>
            <input type="submit" value="Transferir Datos"/>
        </form>
    </body>
</html>