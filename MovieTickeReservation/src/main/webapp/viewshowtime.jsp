<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.Model.ShowTimes" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Time List</title>
<link rel="stylesheet" href="assets/css/style-starter.css">
<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
 <style>
 body {
     text-align: center;
 }

nav{
	text-align: center;
	background-color: #333;
}
nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    display: inline-block;
    justify-content: center;
}

nav ul li {
    float: left;
    align: right;
    margin: 0 20px;
}

nav ul li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

nav ul li a:hover {
    background-color: #ddd;
    color: black;
}

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
    
	<h2>Show Times List</h2>

    <% 
        List<ShowTimes> showList = (List<ShowTimes>) request.getAttribute("showList");
    %>
<div>
  <table class="table" style="max-width: 80%;margin: auto;">
  <thead class="table">
    <tr class="table-danger">
        <th scope="col">ShowTime ID</th>
        <th scope="col">Movie Name</th>
        <th scope="col">Start Time</th>
        <th scope="col">End Time</th>
        <th scope="col">Theater ID</th>
        <th scope="col">Action</th>
    </tr>

   	 	<% if (showList != null && !showList.isEmpty()) { %>
    		<% for (ShowTimes showtime : showList) { %>
        <tr>
            <td><%= showtime.getShowtime_Id() %></td>
            <td><%= showtime.getMovie_name().getMovie_Name() %></td>
            <td><%= showtime.getStart_Time() %></td>
            <td><%= showtime.getEnd_Time() %></td>
            <td><%= showtime.getTheater_id().getTheater_Id() %></td>
            <td>
                <a href="EditShowServlet?ShowTime_Id=<%= showtime.getShowtime_Id() %>"><button type="button" class="btn btn-success">Edit</button></a> </a>
				<a href="RemoveShowServlet?ShowTime_Id=<%= showtime.getShowtime_Id() %>"><button type="button" class="btn btn-danger">Delete</button></a>
            </td>
        </tr>
    	<% } %>
		<% } else { %>
    	<tr>
        	<td colspan="6">No show times available.</td>
    	</tr>
    	<% } %>
	</table>
</div>
</body>
</html>