package com.Model;

public class ShowTimes {
	private int Showtime_Id;
	private String Start_Time;
	private String End_Time;
	
	
	public ShowTimes() {
		super();
	}
	public ShowTimes(int showtime_Id, String start_Time, String end_Time) {
		super();
		Showtime_Id = showtime_Id;
		Start_Time = start_Time;
		End_Time = end_Time;
	}
	public int getShowtime_Id() {
		return Showtime_Id;
	}
	public void setShowtime_Id(int showtime_Id) {
		Showtime_Id = showtime_Id;
	}
	public String getStart_Time() {
		return Start_Time;
	}
	public void setStart_Time(String start_Time) {
		Start_Time = start_Time;
	}
	public String getEnd_Time() {
		return End_Time;
	}
	public void setEnd_Time(String end_Time) {
		End_Time = end_Time;
	}
	@Override
	public String toString() {
		return "ShowTimes [Showtime_Id=" + Showtime_Id + ", Start_Time=" + Start_Time + ", End_Time=" + End_Time + "]";
	}
	
	
}
