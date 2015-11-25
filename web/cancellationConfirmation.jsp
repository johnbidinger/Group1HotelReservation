<%-- 
    Document   : cancellationConfirmation
    Created on : Nov 25, 2015, 4:51:43 AM
    Author     : amv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation Cancellation Confirmation</title>
    </head>
    <body>
        <h1>Reservation Canceled</h1>
        <% String cancelledReservationID = (String) session.getAttribute("enteredReservationID");%>
        This is your confirmation that reservation <%= cancelledReservationID%> has been canceled.
        <br>
        <a href="dateQueryPage.jsp">Back</a> to main page.
    </body>
</html>
