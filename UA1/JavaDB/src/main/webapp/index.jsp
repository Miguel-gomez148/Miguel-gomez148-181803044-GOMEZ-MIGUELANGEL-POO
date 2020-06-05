<%-- 
    Document   : index
    Created on : 30/05/2020, 05:13:09 PM
    Author     : Pc
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion=null;
    Statement stmt=null;
    ResultSet rs=null;
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuar");
        while(rs.next()){
            out.print(rs.getString(1));
            out.print(rs.getString(2));
            %><br><br><%
        }
    }catch(SQLException e){
        out.println(e.getMessage());
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JavaDB</title>
    </head>
    <body>
        <h1>Si jalo mi conexión</h1>
    </body>
</html>
