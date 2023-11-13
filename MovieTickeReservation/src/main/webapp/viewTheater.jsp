<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.Model.Theater" %> 
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.InputStream" %>



<!doctype html>
<html lang="zxx">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Therters</title>
<link rel="stylesheet" href="assets/css/style-starter.css">
<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<style>
body {
     text-align: center;
 }
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

<body>
	<!-- header -->
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
	

   <h1>List of Movies</h1>
    <div>
  <table class="table" style="max-width: 80%;margin: auto;">
  <thead class="table">
    <tr class="table-danger">
            <th scope="col">Theater Name</th>
            <th scope="col">address</th>
            <th scope="col">capacity</th>
            <th scope="col">Action</th>
        </tr>
        
        <% List<Theater> theaters = (List<Theater>) request.getAttribute("theaters");
   if (theaters != null) {
       for (Theater Theater : theaters) { %>
        <tr>
            <td><%= Theater.getTheater_Name() %></td>
            <td><%= Theater.getAddress() %></td>
            <td><%= Theater.getCapacity() %></td>
            
            <td><a href="EditMovie.jsp"><button type="button" class="btn btn-success">Edit</button></a> / <a href=""><button type="button" class="btn btn-danger">Delete</button></a></td>
        </tr>
    <% } 
   
       }%>
  
    </table>


	