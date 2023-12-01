package com.Dao;

import java.util.List;

import com.Model.Movie;
import com.Model.ShowTimes;
import com.Model.Theater;

public interface TheaterDaoIntrf {
	
	public List<Theater> getAllTheater();	

	public void addTheater();
	
	public boolean editTheater(Theater theater);
	
	public void removeTheater(int theaterId);
	
	/* public List<Theater> displayTheaterdetails(); */

	 public Theater getTheaterById(int theaterId);
	 
	  public List<Movie> SearchMovies(String keyword);
	
	
}
