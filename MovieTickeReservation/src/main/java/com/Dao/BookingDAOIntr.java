package com.Dao;

import java.sql.Date;
import java.sql.Time;

import javax.servlet.http.HttpServletRequest;

import com.Model.Bookings;

public interface BookingDAOIntr {
	
	
	public void createBooking(int BookingId, int UserId, String MovieName, Time ShowTime, float TotalPrice, Date BookingDate);
	
	public boolean confirmBooking(int Booking_Id);
	
	public void deleteBooking(int Booking_Id);
	
	public void ShowBooking(HttpServletRequest request);
}