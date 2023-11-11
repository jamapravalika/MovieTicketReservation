<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="style.css"> 
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <li><a href="theaters.html" target="_blank"></a></li> 
 <title>Theater</title>
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.jsp"><i class="fa fa-home"></i> Home</a></li>
        	<li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Movies</a></li>
        	<li><a href="UserTable.jsp"><i class="fa fa-users"></i> Users</a></li>
        	<li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
        </ul>
      </nav>
    <section id="theaters">
        <h2>Theaters</h2>
        <a>
        <div class="container">
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