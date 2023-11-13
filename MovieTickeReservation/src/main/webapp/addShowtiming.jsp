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

	<form action="AddShowServlet" method="post">
        <!-- Input fields for Movie_Name, Start_Time, End_Time, and theater_id -->
        <input type="text" name="Movie_Name" placeholder="Movie Name" required>
        <input type="time" name="Start_Time" required>
        <input type="time" name="End_Time" required>
        <input type="number" name="theater_id" placeholder="Theater ID" required>
        <button type="submit">Add Show Time</button>
    </form>

	</div>
	</a>
    
</section>
    
</body>
</html>