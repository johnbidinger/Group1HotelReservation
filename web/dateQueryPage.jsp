<%-- 
    Document   : dateQueryPage
    Created on : Nov 24, 2015, 1:42:44 AM
    Author     : amv
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<%@page import="testPackageForAdrian.Reservation"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/includes/header.html" />

<%
    
    //Catch passed parameters
    Boolean valid=false;
    String datepicker1, datepicker2;
    Date checkInDate=null;
    Date checkOutDate=null;
    datepicker1=request.getParameter("datepicker1");
    datepicker2=request.getParameter("datepicker2");
    valid=Boolean.parseBoolean(request.getParameter("valid"));
    
    //Check for first visit to page
    if ((datepicker1==null)||(datepicker2==null)){
        out.println("<title>Date Entry</title>");
        out.println("<h2>Please enter the dates you would like to stay at our hotel.</h2>");
    
%>
        <form action="dateQueryPage.jsp" method="post">
        
        <p>Check-in date: <input type="text" id="datepicker1" name="datepicker1"></p>
        <p>Check-out date: <input type="text" id="datepicker2" name="datepicker2"></p>
        <input type="hidden" name="valid" value="<%=valid%>">
        <input type="submit" value="Submit">
        </form>
        <br>
        Or you could check on an existing reservation <a href="searchByReservationID.jsp">here</a>
<%
    } else { // check dates
        out.println("<title>Date Verification</title>");
            DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
            try {
                checkInDate =  formatter.parse(datepicker1);
                checkOutDate = formatter.parse(datepicker2);
                
            } catch (Exception wrongDate){
                out.println("Date formatter failed!");
            } // end try-catch parse string to date
            
            out.println("Your check-in date is "+formatter.format(checkInDate)+".<br>");
            out.println("Your check-out date is "+formatter.format(checkOutDate)+".<br>");
           
            //out.println(Reservation.createConnection()+"<br>"); // NOT WORKING RIGHT NOW
            
            Date currentDate = new Date();
            try{
            //out.println(formatter.format(currentDate)); // for debugging purposes
            } catch (Exception E) {
                out.println("error formatting currentDate<br>");
            } // end try-catch for currentDate capture
            
            valid=Reservation.checkDates(checkInDate, checkOutDate);
            if (valid){
                out.println("<form action=\"userInfo.jsp\" method=\"post\">"
                +"<input type=\"hidden\" name=\"checkInDate\" value="+datepicker1+">"
                +"<input type=\"hidden\" name=\"checkOutDate\" value="+datepicker2+">"
                +"<input type=\"hidden\" name=\"valid\" value="+valid+">"
                +"<input type=\"submit\" value=\"Enter User Info\">"
                +"</form>");
            } else { // dates are good, on to customer data entry
                out.println("There is something wrong with your dates.<br>"
                +"<form action=\"dateQueryPage.jsp\" method=\"post\">"
                +"<input type=\"submit\" value=\"Try Again\">"
                +"</form>");
            } // end else, dates are bad
            
    } // end else
    
%>
    <jsp:include page="/includes/footer.html" />
