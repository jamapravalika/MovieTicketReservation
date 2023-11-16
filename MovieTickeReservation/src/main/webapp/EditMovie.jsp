<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.Model.Movie" %> 
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="AddMovies.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
  .dropdown, .dropup {
    position: static;
    margin-top:4px;
}
</style>
</head>
<body>
 <nav>
      <ul>
        <li><a href="AdmHome.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Add Movies</a></li>
        <li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
        <li><a href="addShowtiming.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
        <li><a href="/MovieTickeReservation/UserTable"><i class="fa fa-users"></i> Users</a></li>
         <li class="nav-item dropdown">
        <div class="dropdown">
  			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		View
  		</button>
  		<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
    		<a href="/MovieTickeReservation/viewmovies"><button class="dropdown-item" type="button">Movies</button></a>
    		<a href="/MovieTickeReservation/viewTheater"><button class="dropdown-item" type="button">Theaters</button></a>
    		<a href="/MovieTickeReservation/viewshowtime"><button class="dropdown-item" type="button">Show Timings</button></a>
  		</div>
		</div>
		</li>
      </ul>
    </nav>
    
    
    <%
    // Assuming "movie" is the attribute name for the Movie object in the request
    Movie movie = (Movie) request.getAttribute("movie");

    // Format the release date for the input field
    String formattedReleaseDate = null;
    if (movie != null && movie.getMovie_Release_Date() != null) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        formattedReleaseDate = sdf.format(movie.getMovie_Release_Date());
    }
%>
    
    
    
	<div class="container" style="max-width: 660px;">
        <form enctype="multipart/form-data" action="Edit"  method="post">
            <!-- Existing fields -->
            <div class="form-group">
                <label for="movieImage">Movie Poster:</label>
                <input type="file" class="form-control" id="movieImage" name="movieImage" accept="image/*">
            </div>
            <div class="form-group">
                <label for="movieName">Movie Name:</label>
                <input type="text" class="form-control" id="movieName" name="movieName" value="<%= movie.getMovie_Name() %>" required>
            </div>
        
            <!-- Additional fields -->
            <div class="form-group">
            <label for="releasedate">Release Date:</label>
            <input type="date" class="form-control" id="releasedate" name="releasedate"
                   value="<%= formattedReleaseDate %>" required>
        	</div>
            <div class="form-group">
                <label for="director">Director:</label>
                <input type="text" class="form-control" id="director" name="director" required>
            </div>
            <div class="form-group">
                <label for="casts">Casts:</label>
                <input type="text" class="form-control" id="casts" name="casts" required>
            </div>
            <div class="form-group">
                <label for="duration">Duration (minutes):</label>
                <input type="number" class="form-control" id="duration" name="duration" required>
            </div>
            <div class="form-group">
                <label for="genre">Genre:</label>
                <input type="text" class="form-control" id="genre" name="genre" required>
            </div>
            <div class="form-group">
                <label for="trailerlink">Trailer Link:</label>
                <input type="url" class="form-control" id="trailerlink" name="trailerlink" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" rows="6" required></textarea>
            </div>
            <input type="hidden" id="movieID" name="movieID" value=" <%= movie.getMovie_Id() %>">
            <div class="buttons">
                <br>
                <button type="submit" class="btn btn-primary">Update Movie</button>
            </div>
        </form>
        
    </div>
</body>