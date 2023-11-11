package com.Dao;

import java.util.List;

import com.Model.ShowTimes;

public interface ShowTimingIntrf {
	
	public void InsertShowTime();
	
	public void UpdateShowTime();
	
	public void DeleteShowTime();
	
	public List<ShowTimes> ListAllShowTime();
	
}
