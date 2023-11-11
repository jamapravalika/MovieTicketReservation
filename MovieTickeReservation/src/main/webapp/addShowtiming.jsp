<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Timing</title>
<link rel="stylesheet" type="text/css" href="AddMovies.css">
</head>
<body>
  <nav>
      <ul>
        <li><a href="AdmHome.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Add Movies</a></li>
        <li><a href="/MovieTicketBookingSystem/dmovie"><i class="fa fa-film"></i> View Movies</a></li>
        <li><a href="UserTable.jsp"><i class="fa fa-users"></i> Users</a></li>
        <li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
        <li><a href="addShowtiming.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
        <li><a href="Seats.jsp"><i class="fa fa-building"></i> Seats</a></li>
      </ul>
    </nav>
    <section id="movies">
        <h2>Show Timings</h2>
        <a>
        <div class="container">
            <h2 style="text-align: center; padding: 0">Add Show Timings</h2>
            <br>
        </br>
            <!-- Add Movie Form -->

	<form enctype="multipart/form-data" action="AddShowServlet" method="post">
    	<input type="hidden" name="action" value="insert">

    	<!-- Existing fields -->

    	<div class="form-group">
        	<label for="movieName">Movie Name</label>
        	<input type="text" class="form-control" id="movieName" name="Movie_Name" required>
    	</div>

    	<div class="for">
        	<div class="form-group">
            	<label for="startTime">Start Time</label>
            	<input type="time" class="form-control" id="startTime" name="Start_Time" required>
        	</div>
        	<div class="form-group">
            <label for="endTime">End Time:</label>
            <input type="time" class="form-control" id="endTime" name="End_Time" required>
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="casts">Theater Id:</label>
        	<input type="number" class="form-control" id="casts" name="theater_id" required>
    	</div>

    	<div class="buttons">
        	<br>
        	<button type="submit" class="btn btn-primary">Add Show Times</button>
    	</div>
	</form>

	</div>
	</a>
    
</section>
    
</body>
</html>