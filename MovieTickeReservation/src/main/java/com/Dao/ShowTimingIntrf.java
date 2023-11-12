package com.Dao;

import java.util.List;

import com.Model.ShowTimes;

public interface ShowTimingIntrf {
	
	public void InsertShowTime(ShowTimes showtime);
	
	public void UpdateShowTime(ShowTimes showtime);
	
	public void DeleteShowTime(int showtimeId);
	
	public List<ShowTimes> ListAllShowTime();
	
}
