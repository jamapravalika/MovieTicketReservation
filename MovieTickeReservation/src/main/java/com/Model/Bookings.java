package com.Model;


import java.sql.Time;
import java.sql.Timestamp;


public class Bookings {
	private int BookingId;
	private int UserId;
	private String MovieName;
	private Time ShowTime;
	private float TotalPrice;
	private Timestamp BookingDate;
	private boolean confirmed;
	
	public Bookings() {
		super();
	}

	public Bookings(int bookingId, int userId, String movieName, Time showTime, float totalPrice, Timestamp bookingDate,
			boolean confirmed) {
		super();
		BookingId = bookingId;
		UserId = userId;
		MovieName = movieName;
		ShowTime = showTime;
		TotalPrice = totalPrice;
		BookingDate = bookingDate;
		this.confirmed = confirmed;
	}

	public int getBookingId() {
		return BookingId;
	}

	public void setBookingId(int bookingId) {
		BookingId = bookingId;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getMovieName() {
		return MovieName;
	}

	public void setMovieName(String movieName) {
		MovieName = movieName;
	}

	public Time getShowTime() {
		return ShowTime;
	}

	public void setShowTime(Time showTime) {
		ShowTime = showTime;
	}

	public float getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		TotalPrice = totalPrice;
	}

	public Timestamp getBookingDate() {
		return BookingDate;
	}

	public void setBookingDate(Timestamp bookingDate) {
		BookingDate = bookingDate;
	}

	public boolean isConfirmed() {
		return confirmed;
	}

	public void setConfirmed(boolean confirmed) {
		this.confirmed = confirmed;
	}

	@Override
	public String toString() {
		return "Bookings [BookingId=" + BookingId + ", UserId=" + UserId + ", MovieName=" + MovieName + ", ShowTime="
				+ ShowTime + ", TotalPrice=" + TotalPrice + ", BookingDate=" + BookingDate + ", confirmed=" + confirmed
				+ "]";
	}
	
}
	

	

