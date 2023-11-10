<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <li><a href="showtimings.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
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
<form enctype="multipart/form-data" action="MovieServlet" method="post">
    <!-- Existing fields -->
    
    <div class="form-group">
        <label for="movieId">Movie Id</label>
        <input type="text" class="form-control" id="movieName" name="movieName" required>
    </div>
    

    <div class="for">
    <div class="form-group">
        <label for="startTime">startTime</label>
        <input type="date" class="form-control" id="releasedate" name="releasedate" required>
    </div>
    <div class="form-group">
        <label for="endTime">endTime:</label>
        <input type="text" class="form-control" id="director" name="director" required>
    </div>
    </div>
    <div class="form-group">
        <label for="theaterId">Theater Id:</label>
        <input type="text" class="form-control" id="casts" name="casts" required>
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