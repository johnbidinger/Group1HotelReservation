<%-- 
    Document   : existingReservationDetails
    Created on : Nov 25, 2015, 3:52:10 AM
    Author     : amv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Existing Reservation</title>
    </head>
    <body>
        <h1>Check on an existing reservation</h1>
        <% String existingReservationID = (String) session.getAttribute("enteredReservationID");%>
        Details for reservation ID 
        <span>${reservationID}</span>
        <br>
        <br>
        Click <a href="cancelExistingReservation.jsp">here </a> to cancel this reservation.
    </body>
</html>
