<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.Model.ShowTimes" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Time List</title>
</head>
<body>
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
        </tr>

        <% for (ShowTimes showtime : showList) { %>
            <tr>
                <td><%= showtime.getShowtime_Id() %></td>
                <td><%= showtime.getMovie_name().getMovie_Name() %></td>
                <td><%= showtime.getStart_Time() %></td>
                <td><%= showtime.getEnd_Time() %></td>
                <td><%= showtime.getTheater_id().getTheater_Id() %></td>
            </tr>
        <% } %>

    </table>
</body>
</html>