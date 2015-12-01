<%-- 
    Document   : userInfo
    Created on : Nov 24, 2015, 8:16:54 PM
    Author     : amv
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/includes/header.html" />
<title>Customer Data</title>
<%
    String stringCheckInDate, stringCheckOutDate;
    
    //catch passed paramters
    stringCheckInDate=request.getParameter("checkInDate");
    stringCheckOutDate=request.getParameter("checkOutDate");
    SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
    
    out.println("Check-In: "+stringCheckInDate+"     Check-Out: "+stringCheckOutDate+"<br>");
    try{
        //out.println(formatter.parse(stringCheckInDate+"<br>")); // used for parsing dates
    } catch (Exception E) {
        out.println("oops");
    }
%>