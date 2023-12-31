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
<link rel="stylesheet" href="assets/css/adminHeader.css">
    <link rel="stylesheet" type="text/css" href="AddMovies.css">
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


</style>

</head>
<body>
	 <%@ include file="aHeader.jsp" %>
    
	<h2>Show Times List</h2>

    <% 
        List<ShowTimes> showList = (List<ShowTimes>) request.getAttribute("showList");
    %>
<div>
  <table class="table" style="max-width: 80%;margin: auto; margin-top: 5%;">
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