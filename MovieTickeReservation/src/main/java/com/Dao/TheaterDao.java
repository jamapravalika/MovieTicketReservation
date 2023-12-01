	package com.Dao;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;
    import com.Db.DbConnection;
    import com.Model.Movie;
    import com.Model.ShowTimes;
    import com.Model.Theater;


	public class TheaterDao implements TheaterDaoIntrf {
		private static final String  Select_QUERY= "Select * from Theater";
		private static final String Insert_QUERY = "Insert into Theater (TheatrName,address,capacity) values(?,?,?)";
        private static final String Delete_QUERY ="DELETE FROM Theater WHERE theaterId = ?";
		private static final String updateSql = "UPDATE theaters SET theater_name = ?, location = ? WHERE theater_id = ?";
		 private static final String SELECT_BY_ID_QUERY = "SELECT * FROM Theater WHERE theaterId = ?";
		 private static  List<Theater> theater = new ArrayList<>();
			
		  List<Theater> theaList =  new ArrayList<Theater>();  
			   
		Connection con=DbConnection.getConnection();
		
		
		Theater thea=new Theater();

		@Override
		public void addTheater() {
			// TODO Auto-generated method stub
			try {
				PreparedStatement pstmt = con.prepareStatement(Insert_QUERY);
				
				Theater thea=new Theater();
				pstmt.setInt(1, (thea).getTheater_Id());
	            pstmt.setString(2, ( thea).getTheater_Name());
				pstmt.setString(3, (thea).getAddress());
				pstmt.setInt(4, (thea).getCapacity());
				pstmt.executeUpdate();
				
				con.close();
			} 
			catch (Exception e) {
				System.out.println("Exception" + e.getLocalizedMessage());
			}
			finally {
				System.out.println("Finally Block");
			}
			
		}

		@Override
		public boolean editTheater(Theater theater) {
			// TODO Auto-generated method stub
			try  {
	            
	            PreparedStatement pstm = con.prepareStatement(updateSql);

	          
	            pstm.setInt(1, thea.getTheater_Id());
	            pstm.setString(2, thea.getTheater_Name());
	            pstm.setString(3, thea.getAddress());
	            pstm.setInt(4, thea.getCapacity());
	             int rowsUpdated = pstm.executeUpdate();
	            return rowsUpdated > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	        return false;
	            
	            
		}

		@Override
		public void removeTheater(int id) {
			Connection conn = DbConnection.getConnection();
	        try {
	        	thea=new Theater();
	            PreparedStatement pstm = conn.prepareStatement(Delete_QUERY);
	            pstm.setInt(1, thea.getTheater_Id());
	            int cnt = pstm.executeUpdate();
	            if (cnt != 0) {
	                System.out.println("Deleted Successfully!!! " + thea.getTheater_Id());
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            System.out.println("Finally Block");
	        }
			
		}
		
		public List<Theater> displayTheaterdetails() {
		    List<Theater> theater = new ArrayList<Theater>();

		   try {
		    	Connection conn = DbConnection.getConnection();
		        Statement stmt = conn.createStatement();

		        ResultSet result = stmt.executeQuery(Select_QUERY);

		        while (result.next()) {
		            Theater the = new Theater();
		            the.setTheater_Id(result.getInt(1)); 
		            the.setTheater_Name(result.getString(2));
		            the.setAddress(result.getString(3));
		            the.setCapacity(result.getInt(4)); 

		            theater.add(the);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        System.out.println("Finally Block");
		    }

		    return theater;
		}

		@Override
	    public Theater getTheaterById(int theaterId) {
	        Theater theater = null;
	        try {
	            PreparedStatement pstmt = con.prepareStatement(SELECT_BY_ID_QUERY);
	            pstmt.setInt(1, theaterId);
	            ResultSet result = pstmt.executeQuery();

	            if (result.next()) {
	                theater = new Theater();
	                theater.setTheater_Id(result.getInt("theaterId"));
	                theater.setTheater_Name(result.getString("theaterName"));
	                theater.setAddress(result.getString("address"));
	                theater.setCapacity(result.getInt("capacity"));
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return theater;
	    }
	
public List<Theater> searchTheaters(String keyword) {
	    List<Theater> results = new ArrayList<>();

	    for (Theater theater : theaList) {
	        if (theater.getTheater_Name().toLowerCase().contains(keyword.toLowerCase()) ||
	            theater.getAddress().toLowerCase().contains(keyword.toLowerCase())) {
	            results.add(theater);
	        }
	    }

	    return results;
	}

@Override
public List<Theater> getAllTheater() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<Movie> SearchMovies(String keyword) {
	// TODO Auto-generated method stub
	return null;
}
	}

