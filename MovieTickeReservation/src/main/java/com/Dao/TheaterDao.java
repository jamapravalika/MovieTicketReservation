
	package com.Dao;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	import com.Db.DbConnection;
import com.Model.ShowTimes;
import com.Model.Theater;


	public class TheaterDao implements TheaterDaoIntrf {
		private static final String Select_QUERY = "Select * from movies";
		private static final String Insert_QUERY = "Insert into movies (movieId,theaterId,movie_name,director,releasedate,casts,description,poster,duration,trailerlink,genre) values(?,?,?,?,?,?,?,?,?,?,?)";
	
		private static final String Delete_QUERY ="DELETE FROM Theater WHERE theaterId = ?";
		private static final String updateSql = "UPDATE theaters SET theater_name = ?, location = ? WHERE theater_id = ?";
		
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
		public void editTheater() {
			// TODO Auto-generated method stub
			try  {
	            // Create the SQL update statement
	           
	            
	            // Create a prepared statement
	            PreparedStatement preparedStatement = con.prepareStatement(updateSql);

	            // Set the new values for theater_name and location
	            preparedStatement.setInt(1, thea.getTheater_Id());
	            preparedStatement.setString(2, thea.getTheater_Name());
	            preparedStatement.setString(3, thea.getAddress());
	            
	            // Set the theater_id for the WHERE clause
	            preparedStatement.setInt(4, thea.getCapacity());
	            preparedStatement.executeUpdate();
	            
	            
			}
			catch (SQLException e) {
	            e.printStackTrace();
	        } 
			
		}

		@Override
		public void removeTheater(int id) {
			// TODO Auto-generated method stub
			 try {
		            thea=new Theater();
					PreparedStatement pstmt = con.prepareStatement(Delete_QUERY);
		            pstmt.setBoolean(1, true);
		            pstmt.setInt(2, thea.getTheater_Id());

		            pstmt.executeUpdate();
		          
		            return false;
		        } catch (SQLException e) {
		            e.printStackTrace();
		        } finally {
		            System.out.println("Finally Block");
		        }
				return false;
			}
			
		

		@Override
		public List<ShowTimes> displayTheaterdetails() {
			// TODO Auto-generated method stub
			try {
	            Connection conn = null;
				Statement stmt = conn.createStatement();
	            String QUERY = null;
				ResultSet result = stmt.executeQuery(QUERY);
	            List<Theater> theater = new ArrayList<>();

	            while (result.next()) {
	                Theater theater1 = new Theater();
	                theater1.setTheater_Id(result.getInt(1));
	                theater1.setTheater_Name(result.getString(2));
	                theater1.setAddress(result.getString(3));
	                theater1.setCapacity(result.getInt(4));
					theater.add(theater1);
	            }

	            //request.setAttribute("bookings", bookings); // Set the bookings as a request attribute
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            System.out.println("Finally Block");
	        }
		}
			
		}





