/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testPackageForAdrian;

import java.util.Date;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet("/Reservation")
/**
 *
 * @author amv
 */
public class Reservation {
    
    private int reservationID;
    private int roomID;
    private String custFirstName;
    private String custLastName;
    private Date checkInDate;
    private Date checkOutDate;
    private String custAddress;
    private String custCity;
    private String custState;
    private int custZip;
    private String custPhone;
    private boolean active;
    private static Connection conn=null;
    
    public Reservation() {};
    
    public Reservation(int reservationID,int roomID,String custFirstName,String custLastName,Date checkInDate,Date checkOutDate,String custAddress,String custCity,String custState,int custZip,String custPhone,boolean active){
        this.reservationID = reservationID;
        this.roomID = roomID;
        this.custFirstName = custFirstName;
        this.custLastName = custLastName;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.custAddress = custAddress;
        this.custCity = custCity;
        this.custState = custState;
        this.custZip = custZip;
        this.custPhone = custPhone;
        this.active = active;
    
    }

    /**
     * @return the reservationID
     */
    public int getReservationID() {
        return reservationID;
    }

    /**
     * @param reservationID the reservationID to set
     */
    public void setReservationID(int reservationID) {
        this.reservationID = reservationID;
    }

    /**
     * @return the roomID
     */
    public int getRoomID() {
        return roomID;
    }

    /**
     * @param roomID the roomID to set
     */
    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    /**
     * @return the custFirstName
     */
    public String getCustFirstName() {
        return custFirstName;
    }

    /**
     * @param custFirstName the custFirstName to set
     */
    public void setCustFirstName(String custFirstName) {
        this.custFirstName = custFirstName;
    }

    /**
     * @return the custLastName
     */
    public String getCustLastName() {
        return custLastName;
    }

    /**
     * @param custLastName the custLastName to set
     */
    public void setCustLastName(String custLastName) {
        this.custLastName = custLastName;
    }

    /**
     * @return the checkInDate
     */
    public Date getCheckInDate() {
        return checkInDate;
    }

    /**
     * @param checkInDate the checkInDate to set
     */
    public void setCheckInDate(Date checkInDate) {
        this.checkInDate = checkInDate;
    }

    /**
     * @return the checkOutDate
     */
    public Date getCheckOutDate() {
        return checkOutDate;
    }

    /**
     * @param checkOutDate the checkOutDate to set
     */
    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    /**
     * @return the custAddress
     */
    public String getCustAddress() {
        return custAddress;
    }

    /**
     * @param custAddress the custAddress to set
     */
    public void setCustAddress(String custAddress) {
        this.custAddress = custAddress;
    }

    /**
     * @return the custState
     */
    public String getCustState() {
        return custState;
    }

    /**
     * @param custState the custState to set
     */
    public void setCustState(String custState) {
        this.custState = custState;
    }

    /**
     * @return the custZip
     */
    public int getCustZip() {
        return custZip;
    }

    /**
     * @param custZip the custZip to set
     */
    public void setCustZip(int custZip) {
        this.custZip = custZip;
    }

    /**
     * @return the custPhone
     */
    public String getCustPhone() {
        return custPhone;
    }

    /**
     * @param custPhone the custPhone to set
     */
    public void setCustPhone(String custPhone) {
        this.custPhone = custPhone;
    }

    /**
     * @return the available
     */
    public boolean isAvailable() {
        return active;
    }

    /**
     * @param available the available to set
     */
    public void setAvailable(boolean available) {
        this.active = available;
    }

    public static String createConnection(){
        String result;
        int roomCount;
        try{
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/group","group1","group1");
            result="connection successful";
        } catch (Exception noConnection) {
            System.err.println("Connection Failed!");
            result="connection failed";
        } // end connection try-catch
        return result;
    } // end createConnection method
    
    public String deleteReservation(int reservationID){
        String response="";
    
        // we may want to include the connection with each method for better error control
        
        /*  
        *   String url = "jdbc:mysql://90.124.101.70:3306/group1";
        *   try {
        *       Connection conn = DriverManager.getConnection(url,"","");
        *   } catch (Exception noConnection) {
        *       System.err.println("Connection Failed!");
        *   } // end connection try-catch
        */
        try{
            createConnection();
            Statement st = conn.createStatement();
            st.executeUpdate("DELETE FROM reservation WHERE reservation_id="+reservationID);
            response="Reservation "+reservationID+" has been removed from the system.";
            conn.close();
        } catch (Exception e) {
            response=reservationID+" was not found in the system.";
        } // end try-catch

        return response;
    } // end deleteReservation method
    
    public String createReservation(int roomID,String custFirstName,String custLastName,Date checkInDate,Date checkOutDate,String custAddress,String custCity,String custState,int custZip,String custPhone,boolean active){
        String response="";
        int currentReservation_id=0;
        try{
            createConnection();
            Statement st = conn.createStatement();
            
            ResultSet res_idCount=st.executeQuery("SELECT MAX(reservation_id) FROM reservation");
            while (res_idCount.next()){
                try{
                        currentReservation_id=Integer.parseInt(res_idCount.getString(1));
                } catch (Exception noRes_id) {
                        currentReservation_id=0;
                } // end try-catch
            } // end while
            reservationID=currentReservation_id+1;
            
            st.executeUpdate("INSERT INTO RESERVATION VALUES("+reservationID+", "+roomID+", "+checkInDate+", "+checkOutDate+", '"+custFirstName+"', '"+custLastName+"','"+custAddress+"', '"+custCity+"', '"+custState+"', "+custZip+", '"+custPhone+"', TRUE)");
            response="Reservation Created!";
            conn.close();
        } catch (Exception e) {
            response="Could not create the reservation!";
        }
        return response;
    } // end createReservation method
}