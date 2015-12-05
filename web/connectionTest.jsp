<%-- 
    Document   : connectionTest
    Created on : Dec 4, 2015, 8:05:16 PM
    Author     : Stu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        Connection conn = null;
            try{
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/group1","group1","group1");
            out.println("connection successful");
        } catch (SQLException noConnection) {
            noConnection.printStackTrace();
            System.err.println("Connection Failed!");
            System.out.println("SQLstate: " + noConnection.getSQLState());
            System.out.println("  Error Code: " + noConnection.getErrorCode());
            System.out.println("  Message:    " + noConnection.getMessage());
            noConnection = noConnection.getNextException();
            out.println("connection failed");
        } // end connection try-catch
        %>
        <h1>Hello World!</h1>
    </body>
</html>