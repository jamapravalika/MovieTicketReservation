<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="AddMovies.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <title>Document</title>
    <style>
        .dropdown,
        .dropup {
            position: static;
            margin-top: 4px;
        }
    </style>
</head>

<body>
    <nav>
        <ul>
            <li><a href="AdmHome.jsp"><i class="fa fa-home"></i> Home</a></li>
            <li><a href="AddMovies.jsp"><i class="fa fa-film"></i> Add Movies</a></li>
            <li><a href="theater.jsp"><i class="fa fa-building"></i> Theaters</a></li>
            <li><a href="addShowtiming.jsp"><i class="fa fa-building"></i> Show Timings</a></li>
            <li><a href="/MovieTicketReservation/UserTable"><i class="fa fa-users"></i> Users</a></li>
            <li class="nav-item dropdown">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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

    <section id="movies">
        <h2>Movies</h2>
        <div class="container" style="max-width: 660px;">
            <h2 style="text-align: center; padding: 0">Add Movie</h2>
            <br></br>
            <!-- Add Movie Form -->
            <form enctype="multipart/form-data" action="MovieServlet" method="post">
                <!-- Existing fields -->
                <div class="form-group">
                    <label for="movieImage">Movie Poster:</label>
                    <input type="file" class="form-control" id="movieImage" name="movieImage" accept="image/*" required>
                </div>
                <div class="form-group">
                    <label for="movieName">Movie Name:</label>
                    <input type="text" class="form-control" id="movieName" name="movieName" required>
                </div>

                <!-- Additional fields -->
                <div class="for">
                    <div class="form-group">
                        <label for="releasedate">Release Date:</label>
                        <input type="date" class="form-control" id="releasedate" name="releasedate" required>
                    </div>
                    <div class="form-group">
                        <label for="director">Director:</label>
                        <input type="text" class="form-control" id="director" name="director" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="casts">Casts:</label>
                    <input type="text" class="form-control" id="casts" name="casts" required>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <label for="duration">Duration (minutes):</label>
                        <input type="number" class="form-control" id="duration" name="duration" required>
                    </div>
                    <div class="form-group">
                        <label for="genre">Genre:</label>
                        <input type="text" class="form-control" id="genre" name="genre" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="trailerlink">Trailer Link:</label>
                    <input type="url" class="form-control" id="trailerlink" name="trailerlink" required>
                </div>
                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea class="form-control" id="description" name="description" required rows="6"></textarea>
                </div>
                <div class="buttons">
                    <br>
                    <button type="submit" class="btn btn-primary">Add Movie</button>
                </div>
            </form>
        </div>
    </section>
</body>

</html>
