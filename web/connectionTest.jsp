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
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/group1","group1","group1");
        } catch (Exception e) {
            //noConnection.printStackTrace();
            do {
                //System.out.println("SQLState:" + e.getSQLState());
                //System.out.println("Error Code:" + e.getErrorCode());
                System.out.println("Message:" + e.getMessage());
                Throwable t = e.getCause();
            while(t != null) {
                System.out.println("Cause:" + t);
                t = t.getCause();
            } // end 
        //e = e.getNextException();
    } while (e != null);
        } // end connection try-catch
        %>
        <h1>Hello World!</h1>
    </body>
</html>
