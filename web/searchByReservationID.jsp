<%-- 
    Document   : searchByReservationID
    Created on : Nov 24, 2015, 8:14:25 PM
    Author     : amv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search by Reservation ID</title>
    </head>
    <body>
        <h1>Check on an existing reservation</h1>
        <form action="existingReservationController" method="post">
            <table>
                <tr>
                    <td>Please enter your reservation ID:</td>
                    <td><input type="text" name="enteredReservationID">
                </tr>
            </table>
            <br>
            <input type="submit" value="Check for reservation">
        </form>
    </body>
</html>
