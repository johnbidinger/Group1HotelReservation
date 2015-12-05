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
        //out.println("entering data verification<br>"); // for debugging
        firstNameValid=Reservation.checkNameInput(custFirstName);
        lastNameValid=Reservation.checkNameInput(custLastName);
        addressValid=Reservation.checkAddressInput(custAddress);
        cityValid=Reservation.checkCityInput(custCity);
        stateValid=Reservation.checkStateInput(custState);
        zipValid=Reservation.checkZipInput(custZip);
        phoneValid=Reservation.checkPhoneInput(custPhone);
            if ((firstNameValid)&&(lastNameValid)&&(addressValid)&&(cityValid)&&(stateValid)&&(zipValid)&&(phoneValid)){
            out.println("Check-in date: "+stringCheckInDate+"<br>");
            out.println("Check-out date: "+stringCheckOutDate+"<br>");
            out.println("First name: "+custFirstName+"<br>");
            out.println("Last name: "+custLastName+"<br>");
            out.println("Address: "+custAddress+"<br>");
            out.println("City: "+custCity+"<br>");
            out.println("State: "+custState+"<br>");
            out.println("Zip Code: "+custZip+"<br>");
            out.println("Phone: "+custPhone+"<br>");
                out.println("<form action=\"createReservation.jsp\" method=\"post\">"
                    + "<input type=\"hidden\" name=\"checkInDate\" value=\""+stringCheckInDate+"\" />"
                    + "<input type=\"hidden\" name=\"checkOutDate\" value=\""+stringCheckOutDate+"\" />"
                    + "<input type=\"hidden\" name=\"custFirstName\" value=\""+custFirstName+"\" />"
                    + "<input type=\"hidden\" name=\"custLastName\" value=\""+custLastName+"\" />"
                    + "<input type=\"hidden\" name=\"custAddress\" value=\""+custAddress+"\" />"
                    + "<input type=\"hidden\" name=\"custCity\" value=\""+custCity+"\" />"
                    + "<input type=\"hidden\" name=\"custState\" value=\""+custState+"\" />"
                    + "<input type=\"hidden\" name=\"custZip\" value=\""+custZip+"\" />"
                    + "<input type=\"hidden\" name=\"custPhone\" value=\""+custPhone+"\"/>  <br> "
                    + "<input type=\"submit\" value=\"Create Reservation\" /><br>");
            } else { // end if inputs are valid
                out.println("<form action=\"userInfo.jsp\" method=\"post\" >");
                    if (firstNameValid==false){
                        out.println("There are issues with the first name entered.<br>"); 
                    } 
                    if (lastNameValid==false){
                        out.println("There are issues with the last name entered.<br>");
                    }
                    if(addressValid==false){
                        out.println("There are issues with the address entered.<br>");
                    }
                    if (cityValid==false){
                        out.println("There are issues with the city entered.<br>");
                    }
                    if (stateValid==false){
                        out.println("There are issues with the state entered.<br>");
                    }
                    if (zipValid==false){
                        out.println("There are issues with the zip code entered.<br>");
                    }
                    if (phoneValid==false){
                        out.println("There are issues with the phone number entered.<br>");
                    } // end if else statements
                out.println("You must re-enter your data.<br>");
                out.println("<input type=\"hidden\" name=\"checkInDate\" value=\""+stringCheckInDate+"\" />");
                out.println("<input type=\"hidden\" name=\"checkOutDate\" value=\""+stringCheckOutDate+"\" />");
                out.println("<input type=\"submit\" value=\"Re-enter Data\" /><br>"
                + "");
                       
                    
            } // end else
    } // end else
    
%>
