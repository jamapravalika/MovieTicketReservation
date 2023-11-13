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
<style>
.container{
	padding :0 5%;
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
</style>

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
    
	<h2>Show Times List</h2>

    <% 
        List<ShowTimes> showList = (List<ShowTimes>) request.getAttribute("showList");
    %>

    <table border="1">
    <tr>
        <th>ShowTime ID</th>
        <th>Movie Name</th>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Theater ID</th>
        <th>Action</th>
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
                <a href="EditShowServlet?ShowTime_Id=<%= showtime.getShowtime_Id() %>">Edit</a>
				<a href="RemoveShowServlet?ShowTime_Id=<%= showtime.getShowtime_Id() %>">Remove</a>
            </td>
        </tr>
    	<% } %>
		<% } else { %>
    	<tr>
        	<td colspan="6">No show times available.</td>
    	</tr>
    	<% } %>
	</table>
	
</body>
</html>