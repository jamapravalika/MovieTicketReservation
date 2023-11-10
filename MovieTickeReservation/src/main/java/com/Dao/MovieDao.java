package com.Dao;

import java.sql.Date;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.Db.DbConnection;
import com.Model.Movie;
import com.Model.Theater;

public class MovieDao implements MoviesDaoIntrfc{
	private static final String Select_QUERY = "Select * from movies";
	private static final String Insert_QUERY = "Insert into movies (movieId,theaterId,movie_name,director,releasedate,casts,description,poster,duration,trailerlink,genre) values(?,?,?,?,?,?,?,?,?,?,?)";
	private static final String Update_QUERY = "UPDATE movies SET movie_name = ?, director = ?, relasedate = ?, casts = ?, description = ?, duration = ?, trailerlink = ?, genre = ? WHERE movieId = ?";
	private static final String Delete_QUERY="DELETE FROM movies WHERE MovieId = ?";
	Connection con=DbConnection.getConnection();
	public List<Movie> getAllMovies() {
		// TODO Auto-generated method stub
		 List<Movie> movList = new ArrayList<Movie>();
	        try {
	        	
	            PreparedStatement pstmt = con.prepareStatement(Select_QUERY);
	            ResultSet rs = pstmt.executeQuery();
	            
	            Movie mov = null;

	            while (rs.next()) {
	                mov = new Movie();
	                mov.setMovie_Id(rs.getInt("movieId"));
	                mov.setTheater_Id(rs.getInt("theaterId"));
	                mov.setMovie_Name(rs.getString("movie_name"));
	                mov.setMovie_Director(rs.getString("director"));
	                mov.setMovie_Release_Date(rs.getDate("releasedate"));
	                mov.setMovie_Casts(rs.getString("casts"));
	                mov.setMovie_Description(rs.getString("description"));
	                mov.setMovie_Poster(rs.getString("poster"));
					/*
					 * Blob posterBlob = rs.getBlob("poster"); if (posterBlob != null) {
					 * mov.setMovie_Poster(posterBlob); }
					 */
	                mov.setMovie_Duration(rs.getString("duration"));
	                mov.setTrailerlink(rs.getString("trailerlink"));
	                mov.setGenre(rs.getString("genre"));
	                
	                Theater theater = new Theater();
	                mov.setTheater(theater);               
	                movList.add(mov);
	            }
	        } catch (Exception e) {
//	        	e.printStackTrace();
	        	System.out.println("Error Retrieving data: " + e.getLocalizedMessage());
	        }
	        return movList;
	    }
	public void InsertMovies(Movie mov) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement pstmt = con.prepareStatement(Insert_QUERY);
			
			pstmt.setInt(1, mov.getMovie_Id());
            pstmt.setInt(2, mov.getTheater_Id());
			pstmt.setString(3, mov.getMovie_Name());
			pstmt.setString(4, mov.getMovie_Director());
			pstmt.setDate(5, new Date(mov.getMovie_Release_Date().getTime()));
			pstmt.setString(6, mov.getMovie_Casts());
			pstmt.setString(7, mov.getMovie_Description());
			pstmt.setString(8, mov.getMovie_Poster());
			pstmt.setString(9, mov.getMovie_Duration());
			pstmt.setString(10, mov.getTrailerlink());
			pstmt.setString(11, mov.getGenre());
			pstmt.executeUpdate();
			
			con.close();
		} 
		catch (Exception e) {
			System.out.println("Error Inserting Movies" + e.getLocalizedMessage());
		}
		finally {
			System.out.println("Finally Block");
		}

	}
	public void UpadateMovies(Movie mov) {
		// TODO Auto-generated method stub
		try {
			  mov = new Movie();
	            PreparedStatement pstmt = con.prepareStatement(Update_QUERY);
	    
				
				pstmt.setInt(1, mov.getMovie_Id());
	            pstmt.setInt(2, mov.getTheater_Id());
				pstmt.setString(3, mov.getMovie_Name());
				pstmt.setString(4, mov.getMovie_Director());
				pstmt.setDate(5, new Date(mov.getMovie_Release_Date().getTime()));
				pstmt.setString(6, mov.getMovie_Casts()); 
				pstmt.setString(7, mov.getMovie_Description());
				pstmt.setString(8, mov.getMovie_Poster());
				pstmt.setString(9, mov.getMovie_Duration());
				pstmt.setString(10, mov.getTrailerlink());
				pstmt.setString(11, mov.getGenre());
				pstmt.executeUpdate();
	         
	          }
		  catch (SQLException e) {
	            e.printStackTrace();
	        } 
		
	}
	public void DeleteMovies(Movie mov) {
		// TODO Auto-generated method stub
		try {
			 mov = new Movie();
			PreparedStatement pstmt = con.prepareStatement(Delete_QUERY);
			pstmt.setInt(1,mov.getMovie_Id());
			pstmt.executeUpdate();
			
		}
		catch (SQLException e) {
           e.printStackTrace();
	}
	}

	
	
}
