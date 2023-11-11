package com.Servlets;   

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.MovieDao;
import com.Model.Movie;

@WebServlet("/Update_movieServlet") 
public class Update_movieServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Update_movieServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // movie display for edit and delete
        MovieDao movieDao = new MovieDao();
        List<Movie> movies = movieDao.getAllMovies();
        request.setAttribute("movies", movies);
        RequestDispatcher dispatcher = request.getRequestDispatcher("EditMovie.jsp");
        dispatcher.forward(request, response);
    }
//using dopost for updating and deleting
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        

        String action = request.getParameter("action"); 

        if ("update".equals(action)) {
           
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            
            
                MovieDao movieDao = new MovieDao();
                Movie existingMovie = movieDao.getMovieById(movieId);

                existingMovie.setMovie_Name(request.getParameter("movieName"));
                existingMovie.setMovie_Director(request.getParameter("director"));
                String releaseDateStr = request.getParameter("movie_Release_Date");
                try {
                java.util.Date releaseDate = new SimpleDateFormat("yyyy-MM-dd").parse(releaseDateStr);
                existingMovie.setMovie_Release_Date(new Date(releaseDate.getTime()));
                } catch (ParseException e)
                {
                    e.printStackTrace(); 
                }
                existingMovie.setMovie_Casts(request.getParameter("movie_Casts"));
                existingMovie.setMovie_Description(request.getParameter("movie_Description"));
                existingMovie.setMovie_Poster(request.getParameter("movie_Poster"));
                existingMovie.setMovie_Duration(request.getParameter("movie_Duration"));
                existingMovie.setTrailerlink(request.getParameter("trailerlink"));
                existingMovie.setGenre(request.getParameter("genre"));

                // Now, update the movie in the db
                movieDao.UpadateMovies(existingMovie);
            }
        else if ("delete".equals(action)) {
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            MovieDao movieDao = new MovieDao();
            movieDao.DeleteMovies(movieId);
        }
        // redirect to movies
    try {
        response.sendRedirect(request.getContextPath() + "/Update_movieServlet");
    } catch (IOException e) {
        e.printStackTrace();
    }


    
    }
}
