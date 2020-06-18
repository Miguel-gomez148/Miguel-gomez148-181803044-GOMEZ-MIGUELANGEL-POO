<%-- 
    Document   : index
    Created on : 30/05/2020, 05:13:09 PM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Update Usuario</title>
    </head>
    <body>
    </body>
    <%
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("Select * from usuarios");
        rs = stmt.executeQuery();
    %><br><br> <div class="container">
        <table>
            <h3 style="text-align:center;color:black">TABLA: Usuarios</h3>
            <tr>
                <td colspan="2"><h2>Usuarios</h2></td>
                <td><a  class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Usuario</a></td>
            </tr>
            <table  class="table table-hover">
                <thead  class="thead-dark">
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Contraseña</th>
                </thead>
                <%
                    while (rs.next()) {
                %>
                <tr>
                    <td scope="row"><%= rs.getInt("id_usuario")%></td>
                    <td scope="row"><%= rs.getString("usuario")%></td>
                    <td scope="row"><%= rs.getString("password")%></td>
                    <td><a  class="btn btn-warning btn-block" href="formularioUsuario.jsp?id=<%= rs.getInt("id_usuario")%>">Editar Usuario</a></td>
                    <td><a  class="btn btn-danger btn-block" href="eliminarUsuario.jsp">Eliminar Usuario</a></td>
                </tr>
                <%}%>
            </table>
    </div>  <br><br>
</html>



