<%-- 
    Document   : dateQueryPage
    Created on : Nov 24, 2015, 1:42:44 AM
    Author     : amv
--%>

<%@page import="testPackageForAdrian.Reservation"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/includes/header.html" />

<%
    //Catch passed parameters
    String datepicker1, datepicker2;
    Date checkInDate=null;
    Date checkOutDate=null;
    datepicker1=request.getParameter("datepicker1");
    datepicker2=request.getParameter("datepicker2");
    
    //Check for first visit to page
    if ((datepicker1==null)||(datepicker2==null)){
        out.println("<h2>Please enter the dates you would like to stay at our hotel.</h2>");
    
%>
        <form action="dateQueryPage.jsp" method="post">
        
        <p>Check-in date: <input type="text" id="datepicker1" name="datepicker1"></p>
        <p>Check-out date: <input type="text" id="datepicker2" name="datepicker2"></p>
        <input type="submit" value="Submit">
        </form>
        <br>
        Or you could check on an existing reservation <a href="searchByReservationID.jsp">here</a>
<%
    } else {
            
            try {
            SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
                checkInDate = formatter.parse(datepicker1);
                checkOutDate = formatter.parse(datepicker2);
                
            } catch (Exception wrongDate){
                out.println("Date formatter failed!");
            } // end catch
            
            out.println("Your check-in date is "+checkInDate+".<br>");
            out.println("Your check-out date is "+checkOutDate+".<br>");
            
            out.println(Reservation.createConnection());
    } // end else
%>
    <jsp:include page="/includes/footer.html" />
