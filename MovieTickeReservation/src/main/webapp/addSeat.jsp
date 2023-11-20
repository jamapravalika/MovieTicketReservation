<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/adminHeader.css">
    <link rel="stylesheet" type="text/css" href="AddMovies.css">
</head>
<body>
<%@ include file="aHeader.jsp" %>
    <section id="movies">
        <h2>Show Timings</h2>
        <a>
        <div class="container">
            <h2 style="text-align: center; padding: 0">Add Seats</h2>
            <br>
        </br>
            <!-- Add Movie Form -->
 	<form action="SeatsServlet" method="post">
        <label for="movieName">Movie Name:</label>
        <input type="text" id="movieName" name="movieName" required><br><br>

        <label for="seatNumber">Seat Number:</label>
        <input type="number" id="seatNumber" name="seatNumber" required><br><br>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required><br><br>

        <label for="isBooked">Is Booked:</label>
        <input type="checkbox" id="isBooked" name="isBooked"><br><br>

        <input type="submit" value="Submit">
    </form>

</div>

    
   
</section>
    
</body>
</html>