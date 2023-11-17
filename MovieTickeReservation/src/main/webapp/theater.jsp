<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="style.css"> 
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
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
 <title>Theater</title>
</head>
<body>
     <nav>
      <ul>
        <li><a href="AdmHome.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Add Movies</a></li>
        <li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
        <li><a href="addShowtiming.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
        <li><a href="/MovieTicketReservation/UserTable"><i class="fa fa-users"></i> Users</a></li>
         <li class="nav-item dropdown">
        <div class="dropdown">
  			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		View
  		</button>
  		<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
    		<a href="/MovieTicketReservation/viewmovies"><button class="dropdown-item" type="button">Movies</button></a>
    		<a href="/MovieTicketReservation/viewTheater"><button class="dropdown-item" type="button">Theaters</button></a>
    		<a href="/MovieTicketReservation/viewshowtime"><button class="dropdown-item" type="button">Show Timings</button></a>
  		</div>
		</div>
		</li>
      </ul>
    </nav>
    <section id="theaters">
        <h2>Theaters</h2>
        <a>
        <div class="container" style="max-width: 660px;">
            <h2>Theaters Management</h2>
            <br>
            </br>
            <form action="TheaterServlet" method="post">
            <input type="hidden" name="action" value="add">
                <div class="mb-3">
                    <label for="theaterName" class="form-label">Theater Name</label>
                    <input type="text" class="form-control" id="theaterName" name="theaterName" placeholder="Enter theater name">
                </div>
                <div class="mb-3">
                    <label for="theaterLocation" class="form-label">Location</label>
                    <input type="text" class="form-control" id="theaterLocation" name="theaterLocation" placeholder="Enter theater location">
                </div>
                <div class="mb-3">
                    <label for="seatingCapacity" class="form-label">Seating Capacity</label>
                    <input type="number" class="form-control" id="seatingCapacity" name="seatingCapacity" placeholder="Enter seating capacity">
                </div>
                <div class="buttons">
                    <button type="submit" class="btn btn-primary"> Add Theater</button>
                </div>
            </form>
        </div>
        </a>
        <!-- Theater management content goes here -->
    </section>  
</body>
</html>