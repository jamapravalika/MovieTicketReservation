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

<form enctype="multipart/form-data" action="ShowServlet" method="post">

<form enctype="multipart/form-data" action="ShowServlet" method="post">

    <!-- Existing fields -->
    
    <div class="form-group">

        <label for="movieName">Movie Name</label>
        <input type="text" class="form-control" id="movieName" name="movieName" required>
        <label for="moviename">Movie name</label>
        <input type="number" class="form-control" id="movieId" name="movieId" required>
    </div>
    

    <div class="for">
    <div class="form-group">
        <label for="startTime">startTime</label>
        <input type="time" class="form-control" id="releasedate" name="startTime" required>
    </div>
    <div class="form-group">
        <label for="endtime">endTime:</label>
        <input type="time" class="form-control" id="director" name="endTime" required>
    </div>
    </div>
    <div class="form-group">
        <label for="theaterId">Theater Id:</label>
        <input type="number" class="form-control" id="casts" name="casts" required>
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