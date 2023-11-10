package com.Dao;

import java.util.List;

import com.Model.ShowTimes;

public interface TheaterDaoIntrf {
	public void addTheater();
	
	public void editTheater();
	
	public void removeTheater(int id);
	
	public List<ShowTimes> displayTheaterdetails();
}
