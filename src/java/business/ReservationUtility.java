/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import testPackageForAdrian.Reservation;

/**
 *
 * @author joe
 */
public class ReservationUtility extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ReservationUtility</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReservationUtility at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String reservationIDString, url;
            String firstName, lastName, checkIn, checkOut, custPhone, custZip, custState;
            Reservation reservation = new Reservation();
            reservationIDString = request.getParameter("reservationID");
            int reservationID = Integer.parseInt(reservationIDString);
          // if(Reservation.reservationIsValid(reservationID )){
               firstName = reservation.getCustFirstName(reservationID);
               lastName = reservation.getCustLastName(reservationID);
               checkIn = reservation.getCheckInDate(reservationID);
               checkOut = reservation.getCheckOutDate(reservationID);
               custPhone = reservation.getCustPhone(reservationID);
               custState = reservation.getCustState(reservationID);
               custZip = reservation.getCustZip(reservationID);
               request.setAttribute("reservationID", reservationID);
               request.setAttribute("lastName", lastName);
               request.setAttribute("firstName", firstName);
               request.setAttribute("checkIn", checkIn);
               request.setAttribute("checkOut", checkOut);
               request.setAttribute("custPhone", checkOut);
               request.setAttribute("custState", custState);
               request.setAttribute("custZip", custZip);
               url = "/existingReservationDetails.jsp";
               getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
               
           //}

            //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
