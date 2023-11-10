<%@ page import="java.util.List" %>
<%@ page import="com.Model.Movie" %> 
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.InputStream" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  
<!-- Latest Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  
<!-- Latest jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
<!-- Latest Bootstrap 5 JS with Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
</script>

<link rel="stylesheet" href="assets/css/movies.css">
<link rel="stylesheet" href="assets/css/Header.css">

<title>Movies</title>
</head>
<body>
<%@ include file="Header.jsp" %>
   
<div id="myCarousel" class="carousel slide slide mx-auto" data-bs-ride="carousel">
<!-- Indicators -->
<ol class="carousel-indicators">
    <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
    <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
    <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
    <li data-bs-target="#myCarousel" data-bs-slide-to="3"></li>
</ol>

<!-- Wrapper for slides -->
<div class="carousel-inner">

    <div class="carousel-item active">
      <img src="assets/images/banner1.jpg" alt="Chania" width="460" height="345">
     
    </div>

    <div class="carousel-item">
      <img src="assets/images/banner2.jpg" alt="Chania" width="460" height="345">
      
    </div>

    <div class="carousel-item">
      <img src="assets/images/banner3.jpeg" alt="Flower" width="460" height="345">
      
    </div>

    <div class="carousel-item">
      <img src="assets\images\paw2.jpeg" alt="Flower" width="460" height="345">
      
    </div>

</div>

<!-- Left and right controls -->
<a class="carousel-control-prev" href="#myCarousel" role="button" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
</a>
<a class="carousel-control-next" href="#myCarousel" role="button" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
</a>
</div>

<br>
<br>
<h2 style="margin-left: 6%;">Latest Movies</h2>

<div class="container mt-3">
  <% List<Movie> movies = (List<Movie>) request.getAttribute("movies");
     if (movies != null) {
         int movieCount = 0;
         for (Movie movie : movies) {
             if (movieCount % 4 == 0) {  
                 %>
                 <div class="row">
             <%
             }
             %>
             <div class="col-md-3">
                 <div class="card">
                     <img class="card-img-top custom-card-image" src="images/<%= movie.getMovie_Poster() %>" alt="Card image">
                     <div class="card-body">
                         <h4 class="card-title"><%= movie.getMovie_Name() %></h4>
                         <p class="card-text"><%= movie.getGenre() %></p>
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal<%= movie.getMovie_Id() %>">Movie Details</button>
        			</div>
   				 </div>

   			 <!-- Modal -->
    		<div class="modal fade" id="myModal<%= movie.getMovie_Id() %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle"><%= movie.getMovie_Name() %></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img src="images/<%= movie.getMovie_Poster() %>" alt="Movie Poster" style="max-width: 100%; height: auto;">
                <br><br>
                <div style="display: flex; align-items: center;">
                    <h6 style="margin-right: 20px; font-weight: bold;"><%= movie.getGenre() %></h6>
                    <h6><%= movie.getMovie_Release_Date() %></h6>
                </div>
                <h4 style="margin-top: 20px; font-weight: bold;">About Movie</h4>
                <p><%= movie.getMovie_Description() %></p>
                <h4 style="margin-top: 20px; font-weight: bold;">Star Cast</h4>
                <p><%= movie.getMovie_Casts() %></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <a href="TicketBook.jsp"><button type="button" class="btn btn-primary">Book Tickets</button></a>
            </div>
        </div>
    </div>
</div>
 </div>
<%
        if ((movieCount + 1) % 4 == 0 || movieCount == movies.size() - 1) {
%>
</div>
<%
        }
        movieCount++;
    }
}
%>
</div>
<%@ include file="footer.html" %>
</body>
</html>
