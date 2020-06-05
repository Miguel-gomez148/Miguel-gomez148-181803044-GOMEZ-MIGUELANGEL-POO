<%-- 
    Document   : index
    Created on : 3/06/2020, 05:39:22 PM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
            table, th, td {
            border: 1px solid #FF0066;
            }
            tr{
                font-size: 18px;
                font-family: Arial;
            }
            h1, h3{
                font-size: 25px;
                font-family: Arial;
            }
</style>
<h1 style="color:#FFFFFF; background-color:#FF0066;"">Crazy Feet</h1>
<form action="marcas.jsp">
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/zapatosMAGR", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("SELECT zapatos.idZapato, marcas.Marca, zapatos.Modelo, zapatos.Color, zapatos.Precio, zapatos.Tipo FROM marcas JOIN zapatos ON marcas.idMarca=zapatos.idMarca ORDER BY(zapatos.idZapato) ASC");%>
        <div style="text-align:center">
            <table>
                <h3 style="text-align:center;color:gold">TABLA: Zapatos</h3>
                <table style="margin: 0 auto;">
                    <tr>
                        <th>ID</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Color</th>
                        <th>Precio</th>
                        <th>Tipo</th>
                    </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("idZapato")%></td>
                        <td><%= rs.getString("Marca")%></td>                    
                        <td><%= rs.getString("Modelo")%></td>
                        <td><%= rs.getString("Color")%></td>
                        <td><%= rs.getFloat("Precio")%></td>
                        <td><%= rs.getString("Tipo")%></td>
                    </tr>
                    <%}%>
                </table>
        </div>  
                <br><label for="ir" style="color:#FF0066;text-align:center;font-size: 16px;
                font-family: Arial;">Ver Marcas:</label><br>
                <input type="submit" id="ir" name="mostrar" value="Ir"><br>
    <%} catch (SQLException e) {
        out.println(e.getMessage());
    }
%>
</form>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
