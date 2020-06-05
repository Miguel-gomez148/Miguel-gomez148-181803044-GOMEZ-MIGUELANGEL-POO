<%-- 
    Document   : marcas
    Created on : 3/06/2020, 06:39:58 PM
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
<h1 style="color:#FFFFFF; background-color:#FF0066;"">Nuestras Marcas</h1>
<form action="index.jsp">
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/zapatosMAGR", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("SELECT * FROM marcas");%>
        <div style="text-align:center">
            <table>
                <h3 style="text-align:center;color:gold">CATALOGO: Marcas</h3>
                <table style="margin: 0 auto">
                    <tr>
                        <th>ID</th>
                        <th>MARCA</th>
                    </tr>
                    <%
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("idMarca")%></td>
                        <td><%= rs.getString("Marca")%></td>
                    </tr>
                    <%}%>
                </table>
        </div>  
              <input type="submit" name="mostrar" value="VOLVER"><br>
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
