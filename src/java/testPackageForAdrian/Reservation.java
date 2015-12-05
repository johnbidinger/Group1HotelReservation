/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testPackageForAdrian;

import java.util.Date;
import javax.servlet.annotation.WebServlet;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/Reservation")
/**
 *
 * @author amv
 */
public class Reservation {
    
    private static int reservationID;
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
    public static String stringCheckInDate, stringCheckOutDate;
    
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

    
    public String getCustFirstName(int reservationID) {
        try{
            String dbURL = "jbdc:mysql://localhost:33066/murach";
            String username = "root";
            String password = "sesame";
            Connection connection = DriverManager.getConnection(
                    dbURL,username, password);
        }catch(SQLException e){
            for(Throwable t : e)
                t.printStackTrace();
        }
    
    
    
    
    String results="";
        /*try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select custFirstName FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }*/
        return results;
    }

    /**
     * @param custFirstName the custFirstName to set
     */
    public void setCustFirstName(String custFirstName) {
        this.custFirstName = custFirstName;
    }

    /**
     * @param reservationID
     * @return the custLastName
     */
    public String getCustLastName(int reservationID) {
        String results="";
        try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select custLanstName FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }
        return results;
    }

    /**
     * @param custLastName the custLastName to set
     */
    public void setCustLastName(String custLastName) {
        this.custLastName = custLastName;
    }

    /**
     * @param reservationID
     * @return the checkInDate
     */
    public String getCheckInDate(int reservationID) {
        String results="";
        try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select checkInDate FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }
        return results;
        
    }

    /**
     * @param checkInDate the checkInDate to set
     */
    public void setCheckInDate(Date checkInDate) {
        this.checkInDate = checkInDate;
    }

    /**
     * @param reservationID
     * @return the checkOutDate
     */
    public String getCheckOutDate(int reservationID) {
        String results="";
        try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select checkOutDate FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }
        return results;
        
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
     * @param reservationID
     * @return the custState
     */
    public String getCustState(int reservationID) {
        String results="";
        try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select custState FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }
        return results;
        
    }

    /**
     * @param custState the custState to set
     */
    public void setCustState(String custState) {
        this.custState = custState;
    }

    /**
     * @param reservationID
     * @return the custZip
     */
    public String getCustZip(int reservationID) {
        String results="";
        try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select custLanstName FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }
        return results;
        
    }

    /**
     * @param custZip the custZip to set
     */
    public void setCustZip(int custZip) {
        this.custZip = custZip;
    }


    public String getCustPhone(int reservationID) {
        String results="";
        try{
            String connection = createConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("Select custLanstName FROM reservation WHERE reservationID="+reservationID);
            results=rs.getString(1);
        } catch (Exception e) {
            
        }
        return results;
        
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
    
    public static Boolean checkDates(Date checkInDate, Date checkOutDate){
        Boolean valid=true;
        
        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/YYYY");
        Date currentDate = new Date();
        
        if ((checkInDate.before(currentDate))||(checkOutDate.before(currentDate))||checkOutDate.before(checkInDate)){
            valid=false;
        } // end if
        return valid;
    }

    public static String createConnection(){
        String result;
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/group","group1","group1");
            result="connection successful";
        } catch (Exception noConnection) {
            noConnection.printStackTrace();
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
            st.executeUpdate("DELETE FROM reservation WHERE reservationID="+reservationID);
            response="Reservation "+reservationID+" has been removed from the system.";
            conn.close();
        } catch (Exception e) {
            response=reservationID+" was not found in the system.";
        } // end try-catch

        return response;
    } // end deleteReservation method
    
    public static String createReservation(int roomID,String custFirstName,String custLastName,Date checkInDate,Date checkOutDate,String custAddress,String custCity,String custState,int custZip,String custPhone,boolean active){
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
    
    public static Boolean checkNameInput(String name){
        Boolean valid=name.matches("([a-zA-Z -]){1,20}");
        return valid;
    } // end checkNameInput method
    
    public static Boolean checkAddressInput(String custAddress){
        Boolean valid=custAddress.matches("([0-9a-zA-Z -]){1,30}");
        return valid;
    } // end checkAddressInput method
    
    public static Boolean checkCityInput(String custCity){
        Boolean valid=custCity.matches("[a-zA-Z -]{1,30}");
        return valid;
    } // end checkCityInput method
    
    public static Boolean checkStateInput(String custState){
        Boolean valid=custState.matches("[a-zA-Z]{2}");
        return valid;
    } // end checkStateInput method
    
    public static Boolean checkZipInput(String custZip){
        Boolean valid=custZip.matches("[0-9]{5}");
        return valid;
    } // end checkZipInput method
    
    public static Boolean checkPhoneInput(String custPhone){
        Boolean valid=custPhone.matches("[0-9 -]{12}");
        return valid;
    } // end checkPhoneInput method
    
    public static Boolean reservationDateCheck(String stringCheckInDate, String stringCheckOutDate){
        Boolean valid=true;
        
        return valid;
    } // end 

    /**
     *
     * @param reservation
     * @return
     */
    public static Boolean reservationIsValid(int reservation){
        String connection = createConnection();
        Statement st = null;
        try {
            st = conn.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(Reservation.class.getName()).log(Level.SEVERE, null, ex);
        }
        //Need to check if reservation is valid
        //ResultSet results = st.executeQuery("")
        return true;
    }
    
}