<%-- 
    Document   : userInfo
    Created on : Nov 24, 2015, 8:16:54 PM
    Author     : amv
--%>

<%@page import="testPackageForAdrian.Reservation"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/includes/header.html" />
<title>Customer Data</title>
<%
    String stringCheckInDate, stringCheckOutDate, custFirstName, custLastName, custAddress, custCity, custState, custZip, custPhone;
    Boolean isValid=false;
    Boolean firstNameValid, lastNameValid, addressValid, cityValid, stateValid, zipValid, phoneValid;
    
    //catch passed paramters
    stringCheckInDate=request.getParameter("checkInDate");
    stringCheckOutDate=request.getParameter("checkOutDate");
    custFirstName=request.getParameter("custFirstName");
    custLastName=request.getParameter("custLastName");
    custAddress=request.getParameter("custAddress");
    custCity=request.getParameter("custCity");
    custState=request.getParameter("custState");
    custZip=request.getParameter("custZip");
    custPhone=request.getParameter("custPhone");
    
    
    //create format for passed dates
    SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
    
    
    try{
        //out.println(formatter.parse(stringCheckInDate+"<br>")); // used for parsing dates
    } catch (Exception E) {
        out.println("oops");
    } // 
    // display dates of stay
    out.println("Check-In: "+stringCheckInDate+"     Check-Out: "+stringCheckOutDate+"<br>");

    if (((custFirstName==null)||(custLastName==null)||(custAddress==null)||(custCity==null)||(custState==null)||(custZip==null)||(custPhone==null))&&(isValid==false)){
    //out.println("Starting Data Entry<br>"); // for debugging
    out.println("<form action=\"userInfo.jsp\" method=\"post\">"
        + "<table>"
        + "<tr><td width=\"15\"><label id=\"custFirstName\">First Name</label></td><td width=\"35\"><input type=\"text\" name=\"custFirstName\" size=20 /></td></tr>"
        + "<tr><td width=\"15\"><label id=\"custLastName\">Last Name</label></td><td width=\"35\"><input type=\"text\" name=\"custLastName\" size=20 /></td></tr>"
        + "<tr><td width=\"15\"><label id=\"custAddres\">Address</label></td><td width=\"35\"><input type=\"text\" name=\"custAddress\" size=30 /></td></tr>"
        + "<tr><td width=\"15\"><label id=\"custCity\">City</label></td><td width=\"35\"><input type=\"text\" name=\"custCity\" size=30 /></td></tr>"
        + "<tr><td width=\"15\"><label id=\"custState\">State</label></td><td width=\"35\"><input type=\"text\" name=\"custState\" size=2 /></td></tr>"
        + "<tr><td width=\"15\"><label id=\"custZip\">Zip Code</label></td><td width=\"35\"><input type=\"text\" name=\"custZip\" size=7 /></td></tr>"
        + "<tr><td width=\"15\"><label id=\"custPhone\">Phone Number</label></td><td width=\"35\"><input type=\"text\" name=\"custPhone\" size=12 /></td></tr>"            
        + "</table>"
        + "<input type=\"hidden\" name=\"checkInDate\" value=\""+stringCheckInDate+"\" />"
        + "<input type=\"hidden\" name=\"checkOutDate\" value=\""+stringCheckOutDate+"\" />"
        + "<input type=\"hidden\" name=\"isValid\" value=\"true\" />"
        + "<input type=\"submit\" value=\"Continue\" />"
        + "</form>");
    } else {
        out.println("entering data verification<br>");
        firstNameValid=Reservation.checkNameInput(custFirstName);
            out.println("first name is "+firstNameValid+"<br>");
        lastNameValid=Reservation.checkNameInput(custLastName);
            out.println("last name is "+lastNameValid+"<br>");
        addressValid=Reservation.checkAddressInput(custAddress);
            out.println("address is "+addressValid+"<br>");
        cityValid=Reservation.checkCityInput(custCity);
            out.println("city is "+cityValid+"<br>");
        stateValid=Reservation.checkStateInput(custState);
            out.println("state is "+stateValid+"<br>");
        zipValid=Reservation.checkZipInput(custZip);
            out.println("zip is "+zipValid+"<br>");
        phoneValid=Reservation.checkPhoneInput(custPhone);
            out.println("phone is "+phoneValid+"<br>");
    } // end else
    
%>
