package com.Servlets;   

import java.io.IOException;
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
        // Display the list of movies for editing or deleting
        MovieDao movieDao = new MovieDao();
        List<Movie> movies = movieDao.getAllMovies();
        request.setAttribute("movies", movies);
        RequestDispatcher dispatcher = request.getRequestDispatcher("EditMovie.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle the update or delete operation here
        // You should get the parameters from the request and perform the respective operation

        String action = request.getParameter("action"); // For example, you can have a hidden input in your form to specify the action (update or delete)

        if ("update".equals(action)) {
            // Handle movie update
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            // Retrieve the updated movie information from the request and update it in the database
            // MovieDao.updateMovie(movieId, updatedMovie);

        } else if ("delete".equals(action)) {
            // Handle movie delete
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            // Delete the movie from the database
            // MovieDao.deleteMovie(movieId);
        }

        // After performing the update or delete operation, you may want to redirect to the list of movies for editing
        response.sendRedirect(request.getContextPath() + "/Update_movieServlet");

        // You can also add error handling, validation, and database interaction as needed.
    }
}