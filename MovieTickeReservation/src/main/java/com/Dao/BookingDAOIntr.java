package com.Dao;

import java.sql.Date;
import java.sql.Time;

import javax.servlet.http.HttpServletRequest;

import com.Model.Bookings;

public interface BookingDAOIntr {
	
	//Create booking
	public void createBooking(int BookingId, int UserId, String MovieName, Time ShowTime, float TotalPrice, Date BookingDate);
	//Confirm Booking
	public boolean confirmBooking(int Booking_Id);
	//Delete Bookings
	public void deleteBooking(int Booking_Id);
	//Show Bookings
	public void ShowBooking(HttpServletRequest request);
}