package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import com.Db.DbConnection;
import com.Model.Movie;
import com.Model.ShowTimes;
import com.Model.Theater;

public class ShowTimeDao implements ShowTimingIntrf{
	
	Connection con=DbConnection.getConnection();

	@Override
	public void InsertShowTime() {
		// TODO Auto-generated method stub
		
		final String Insert_QUERY = "INSERT INTO Showtimes (movie_name, start_time, end_time, theater_Id)" + 
				"VALUES (?,?,?,?);";
		
		 try { 
			 	ShowTimes Show = new ShowTimes(); 
		        PreparedStatement statement = con.prepareStatement(Insert_QUERY);
		        statement.setString(1,Show.getMovie_name().getMovie_Name());
		        statement.setTime(2,Show.getStart_Time());
		        statement.setTime(3, Show.getEnd_Time());
		        statement.setInt(4,Show.getTheater_id().getTheater_Id());
		        statement.executeUpdate();
		    }
		catch (Exception e) {
			System.out.println("Exception" + e.getLocalizedMessage());
		}
		finally {
			System.out.println("Finally Block");
		}
		
	}
	
	@Override
	public void UpdateShowTime() {
		// TODO Auto-generated method stub
		
		final String update_Query = "UPDATE Showtimes SET movie_name = ? start_time = ?, end_time = ?, theater_Id = ? WHERE showtime_Id = ?";

		 try { 
		 ShowTimes Show = new ShowTimes(); 
	        PreparedStatement statement = con.prepareStatement(update_Query);
	        statement.setString(1,Show.getMovie_name().getMovie_Name());
	        statement.setTime(2,Show.getStart_Time());
	        statement.setTime(3, Show.getEnd_Time());
	        statement.setInt(4,Show.getTheater_id().getTheater_Id());
	        statement.executeUpdate();
	    }
		  catch (SQLException e) {
	            e.printStackTrace();
	        } 
		finally {
			System.out.println("Finally Block");
		}
	}
	@Override
	public List<ShowTimes> ListAllShowTime() {
		// TODO Auto-generated method stub
		
		List<ShowTimes> show = new ArrayList<>();
        
        final String select_query = "SELECT * FROM 	SHOWTIMES";
        
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(select_query);

            while (resultSet.next()) {
                int id = resultSet.getInt("Showtime_Id");
                String movieName = resultSet.getString("Movie_Name");
                Time start = resultSet.getTime("Start_Time");
                Time end = resultSet.getTime("End_Time");
                int theater = resultSet.getInt("theater_id");

                Movie movie = new Movie();
                movie.setMovie_Name(movieName);

                Theater theaterId = new Theater();
                theaterId.setTheater_Id(theater);

                ShowTimes showtime = new ShowTimes(id, movie, start, end, theaterId);
                show.add(showtime);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	System.out.println("Finally Block");
    	}
		return show;
	}
	
	@Override
	public void DeleteShowTime() {
		// TODO Auto-generated method stub
		final String Delete_Query ="DELETE FROM Showtimes WHERE showtimeId = ?";
		
		try {
			ShowTimes Show = new ShowTimes();
			PreparedStatement pstmt = con.prepareStatement(Delete_Query);
			pstmt.setInt(1,Show.getShowtime_Id());
			pstmt.executeUpdate();
		}
		catch (SQLException e) {
            e.printStackTrace();
	}finally {
		System.out.println("Finally Block");
	}
		
	}
}
