<%-- 
    Document   : cancelExistingReservation
    Created on : Nov 25, 2015, 4:13:32 AM
    Author     : amv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancel Reservation</title>
    </head>
    <body>
        <h1>Reservation Cancellation</h1>
        <% String existingReservationID = (String) session.getAttribute("enteredReservationID");%>
        Your current reservation ID is <%= existingReservationID%>. Are you sure you want to cancel this reservation?
        <br>
        <form action="cancellationController" method="post">
            <input type="submit" value="Confirm">
        </form>
        <br>
        Click <a href="existingReservationDetails.jsp">here</a> to go back and keep this reservation.
    </body>
</html>
