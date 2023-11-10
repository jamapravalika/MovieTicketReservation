package com.Dao;

import java.util.List;

import com.Model.ShowTimes;

public interface ShowTimingIntrf {
	
	public void InsertShowTime();
	
	public void UpdateShowTime();
	
	public void DeleteShowTime(ShowTimes show2);
	
	public List<ShowTimes> ListAllShowTime();
	
}
