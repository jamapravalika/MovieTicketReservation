<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.Model.Movie" %> 
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.InputStream" %>
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
        <li><a href="/MovieTickeReservation/dmovie"><i class="fa fa-film"></i> View Movies</a></li>
        <li><a href="UserTable.jsp"><i class="fa fa-users"></i> Users</a></li>
        <li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
        <li><a href="showtimings.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
        <li><a href="Seats.jsp"><i class="fa fa-building"></i> Seats</a></li>
      </ul>
    </nav>
	<div class="container">
        <form enctype="multipart/form-data" action="Update_movieServlet" method="post">
            <!-- Existing fields -->
            <div class="form-group">
                <label for="movieImage">Movie Poster:</label>
                <input type="file" class="form-control" id="movieImage" name="movieImage" accept="image/*">
            </div>
            <div class="form-group">
                <label for="movieName">Movie Name:</label>
                <input type="text" class="form-control" id="movieName" name="movieName" value="<%-- <%= movie.getMovie_Name() %> --%>" required>
            </div>
        
            <!-- Additional fields -->
            <div class="form-group">
                <label for="releasedate">Release Date:</label>
                <input type="date" class="form-control" id="releasedate" name="releasedate" required>
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
            <!-- Movie ID (hidden field) -->
            <input type="hidden" id="movieID" name="movieID" value="<%-- <%= movie.getMovie_Id() %> --%>"> <!-- Replace with the actual movie ID -->
            <div class="buttons">
                <br>
                <button type="submit" class="btn btn-primary">Update Movie</button>
            </div>
        </form>
        
    </div>
</body>
</html>