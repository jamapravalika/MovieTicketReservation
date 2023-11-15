<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Model.Movie" %> 
<%@ page import="com.Model.Bookings" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="assets/css/viewTicket.css">
</head>
<body>
    <fieldset>
        <h2>E-Ticket</h2>
        <div class="ticket-body">
            <div class="ticket">
                <div class="holes-top"></div>
                <div class="title">
                    <p class="cinema">MyShowz Entertainment</p>
                    <p class="movie-title">Movie Name</p>
                </div>
                <div class="poster">
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/25240/only-god-forgives.jpg"
                        alt="Movie: Only God Forgives" />
                </div>
                <div class="info">
                    <%
                        Movie movie = (Movie) request.getAttribute("movie");
                    %>
                    <%
                        Bookings book = (Bookings) request.getAttribute("bookings");
                        if (book != null) {
                    %>
                    <table class="info-table ticket-table">
                        <tr>
                            <th>SCREEN</th>
                            <th>ROW</th>
                            <th>SEAT</th>
                        </tr>
                        <tr>
                            <td class="bigger">18</td>
                            <td class="bigger">H</td>
                            <td class="bigger">24</td>
                        </tr>
                    </table>
                    <table class="info-table ticket-table">
                        <tr>
                            <th>PRICE</th>
                            <th>DATE</th>
                            <th>TIME</th>
                        </tr>
                        <tr>
                            <td><%= book.getTotalPrice() %></td>
                        </tr>
                    </table>
                    <%
                        } else {
                    %>
                    <table class="info-table ticket-table">
                        <tr>
                            <th>ERROR</th>
                        </tr>
                        <tr>
                            <td>Error: Booking information not available</td>
                        </tr>
                    </table>
                    <%
                        }
                    %>
                </div>
                <div class="holes-lower"></div>
                <div class="serial">
                    <table class="barcode ticket-table">
                        <!-- rest of the barcode table code -->
                    </table>
                    <table class="numbers ticket-table">
                        <!-- rest of the numbers table code -->
                    </table>
                </div>
            </div>
        </div>
        <input type="button" name="previous-step" class="home-page-btn" value="Browse to Home Page"
            onclick="location.href='index.jsp';" />
    </fieldset>
</body>
</html>
