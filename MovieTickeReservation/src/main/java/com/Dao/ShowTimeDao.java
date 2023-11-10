package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.Db.DbConnection;
import com.Model.ShowTimes;

public class ShowTimeDao implements ShowTimingIntrf{
	private static final String Insert_QUERY = "INSERT INTO Showtimes (movieName, startTime, endTime, theaterId)" + 
			"VALUES (?, ?,?,?, ?);";
	private static String update_Query = "UPDATE Showtimes SET startTime = ?, endTime = ?, theaterId = ? WHERE showtimeId = ?";
	private static final String Delete_Query ="DELETE FROM Showtimes WHERE showtimeId = ?";
	Connection con=DbConnection.getConnection();
	ShowTimes Show = null;
	@Override
	public void UpdateShowTime() {
		// TODO Auto-generated method stub
		
		 update_Query += " WHERE  ShowTime_id = ?";
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
		return null;
	}
	@Override
	public void DeleteShowTime(ShowTimes show2) {
		// TODO Auto-generated method stub
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

	public void InsertShowTime() {
		// TODO Auto-generated method stub
		
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
}
