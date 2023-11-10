<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.Model.Bookings" %>
 <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booked Movie Tickets</title>
</head>
<body>
    <h1>Booked Movie Tickets</h1>
    <table border="1">
        <tr>
            <th>Booking ID</th>
            <th>User ID</th>
            <th>Movie Name</th>
            <th>Show Time</th>
            <th>Total Price</th>
            <th>Booking Date</th>
            <th>Confirmed</th>
        </tr>
        <% for (Bookings booking : (List<Bookings>) request.getAttribute("bookings")) { %>
            <tr>
                <td><%= booking.getBookingId() %></td>
                <td><%= booking.getUserId() %></td>
                <td><%= booking.getMovieName() %></td>
                <td><%= booking.getShowTime() %></td>
                <td><%= booking.getTotalPrice() %></td>
                <td><%= booking.getBookingDate() %></td>
                <td><%= booking.isConfirmed() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>