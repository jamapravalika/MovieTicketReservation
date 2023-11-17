<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.Model.users" %> 
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.InputStream" %>

<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Users</title>
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    

</head>

<style>
    body {
        text-align: center;
    }

    .container {
        padding: 0 5%;
    }

    nav {
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

<body>
    <!-- header -->
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

    <h1>List of Users</h1>
    <div>
        <table class="table" style="max-width: 80%;margin: auto;">
            <thead class="table">
                <tr class="table-danger">
                    <th scope="col">User Name</th>
                    <th scope="col">User Email</th>
                    <th scope="col">User Mobile</th>
                    <th scope="col">Role</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <% List<users> userList = (List<users>) request.getAttribute("userList");
                if (userList != null) {
                    for (users user : userList) { %>
                        <tr>
                            <td><%= user.getUser_Name() %></td>
                            <td><%= user.getUser_Email() %></td>
                            <td><%= user.getUser_Mobile() %></td>
                            <td><%= user.getRole() %></td>
                            <td><%= user.getCreatedAt() %></td>
                            <!-- Action buttons -->
                            <td>
                                <a href="EditUser.jsp"><button type="button" class="btn btn-success">Edit</button></a>
                                <a href=""><button type="button" class="btn btn-danger">Delete</button></a>
                            </td>
                        </tr>
                <% } 
                } %>
            </tbody>
        </table>
    </div>
</body>

</html>
