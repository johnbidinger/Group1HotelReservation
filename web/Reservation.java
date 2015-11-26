/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

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
    private String custState;
    private int custZip;
    private int custPhone;
    private boolean available;
    
    public Reservation() {};
    
    public Reservation(int reservationID,int roomID,String custFirstName,String custLastName,Date checkInDate,Date checkOutDate,String custAddress,String custState,int custZip,int custPhone,boolean available){
        this.reservationID = reservationID;
        this.roomID = roomID;
        this.custFirstName = custFirstName;
        this.custLastName = custLastName;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.custAddress = custAddress;
        this.custState = custState;
        this.custZip = custZip;
        this.custPhone = custPhone;
        this.available = available;
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
    public int getCustPhone() {
        return custPhone;
    }

    /**
     * @param custPhone the custPhone to set
     */
    public void setCustPhone(int custPhone) {
        this.custPhone = custPhone;
    }

    /**
     * @return the available
     */
    public boolean isAvailable() {
        return available;
    }

    /**
     * @param available the available to set
     */
    public void setAvailable(boolean available) {
        this.available = available;
    }
    
 
}
