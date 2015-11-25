<%-- 
    Document   : dateQueryPage
    Created on : Nov 24, 2015, 1:42:44 AM
    Author     : amv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room Reservation Application</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script>
        $(function() {
        $( "#datepicker1" ).datepicker();
        });
        </script>
        <script>
        $(function() {
        $( "#datepicker2" ).datepicker();
        });
        </script>
    </head>
    <body>
        <form action="reservationController" method="post">
        <h2>Please enter the dates you would like to stay at our hotel.</h2>
        <p>Check-in date: <input type="text" id="datepicker1" name="datepicker1"></p>
        <p>Check-in date: <input type="text" id="datepicker2" name="datepicker2"></p>
        <input type="submit" value="Submit">
        </form>
        <br>
        Or you could check on an existing reservation <a href="searchByReservationID.jsp">here</a>
    </body>
</html>
