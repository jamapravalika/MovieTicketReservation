<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" type="text/css" href="UserTable.css">
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <title>Users</title>
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
   <a>
    <section id="users">
        <h1>Users</h1>
        
            <div class="container">
                <h2>User Management</h2>
                <br>
                </br>
                <table bgcolor="black", style="width: 100%;">
                    <thead>
                        <tr bgcolor="grey">
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Created At</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Display user list here -->
                        <tr bgcolor="white">
                            <td>1</td>
                            <td>User 1</td>
                            <td>user1@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>2</td>
                            <td>User 2</td>
                            <td>user2@example.com</td>
                            <td>2023-09-30 16:45:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>3</td>
                            <td>User 3</td>
                            <td>user3@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>4</td>
                            <td>User 4</td>
                            <td>user4@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>5</td>
                            <td>User 5</td>
                            <td>user5@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>6</td>
                            <td>User 6</td>
                            <td>user6@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>7</td>
                            <td>User 7</td>
                            <td>user7@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>8</td>
                            <td>User 8</td>
                            <td>user8@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>9</td>
                            <td>User 9</td>
                            <td>user9@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <tr bgcolor="white">
                            <td>10</td>
                            <td>User 10</td>
                            <td>user10@example.com</td>
                            <td>2023-09-30 14:25:00</td>
                        </tr>
                        <!-- Add more rows as needed -->
                    </tbody>
                </table>
            </div>
        </a>
        <!-- User management content goes here -->
    </section>
</body>
</html>