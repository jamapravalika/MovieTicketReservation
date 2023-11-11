<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Admin Panel -MOVIE ONLINE BOOKING</title>
    <link rel="stylesheet" type="text/css" href="style.css">

    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <header>
      <h1>Admin-Dashboard</h1>
  </header>
</head>
<body>
  <div>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['users', 'Length'],
          ['user 1', 12.2],
          ['user 2', 9.1],
          ['user 3', 12.2],
          ['user 4', 22.9],
          ['user 5', 0.9],
          ['user 6', 36.6],
          ['user 7', 9.1],
          ['user 8', 30.5],
          ['user 9', 6.1],
          ['user 10', 2.7]]);
         var options = {
          title: 'USERS PAYMENT CHART',
          legend: { position: 'none' },
          colors: ['darkred'] };
         var chart = new google.visualization.Histogram(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    <nav>
      <ul>
        <li><a href="AdmHome.jsp"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Add Movies</a></li>
        <li><a href="/MovieTickeReservation/dmovie"><i class="fa fa-film"></i> View Movies</a></li>
        <li><a href="UserTable.jsp"><i class="fa fa-users"></i> Users</a></li>
        <li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
        <li><a href="addShowtiming.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
        <li><a href="seat.jsp"><i class="fa fa-building"></i> Seats</a></li>
      </ul>
    </nav>
    
   
    <div id="chart_div" style="width: 1100px; height: 400px;"></div>
</body>
</html>

