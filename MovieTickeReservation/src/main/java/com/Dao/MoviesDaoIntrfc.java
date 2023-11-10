package com.Dao;

import java.util.List;

import com.Model.Movie;

public interface MoviesDaoIntrfc {
	public List<Movie> getAllMovies();	
	void InsertMovies(Movie mov);
	void UpadateMovies(Movie mov);
	void DeleteMovies(Movie mov);
	
}
