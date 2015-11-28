<%-- 
    Document   : dateQueryPage
    Created on : Nov 24, 2015, 1:42:44 AM
    Author     : amv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/includes/header.html" />
        <form action="reservationController" method="post">
        <h2>Please enter the dates you would like to stay at our hotel.</h2>
        <p>Check-in date: <input type="text" id="datepicker1" name="datepicker1"></p>
        <p>Check-in date: <input type="text" id="datepicker2" name="datepicker2"></p>
        <input type="submit" value="Submit">
        </form>
        <br>
        Or you could check on an existing reservation <a href="searchByReservationID.jsp">here</a>
        <jsp:include page="/includes/footer.html" />
