package com.Servlets;

import java.io.IOException;
import java.sql.Time;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.ShowTimeDao;
import com.Model.Movie;
import com.Model.ShowTimes;
import com.Model.Theater;

/**
 * Servlet implementation class AddShowServlet
 */
public class AddShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String movieName = request.getParameter("Movie_Name");
	    Time start = Time.valueOf(request.getParameter("Start_Time"));
	    Time end = Time.valueOf(request.getParameter("End_Time"));
	    int theater = Integer.parseInt(request.getParameter("theater_id"));

	    Movie movie = new Movie();
	    movie.setMovie_Name(movieName);
	    Theater theaterId = new Theater();
	    theaterId.setTheater_Id(theater);

	    ShowTimes showtime = new ShowTimes(movie, start, end, theaterId);
	    showtime.setMovie_name(movie);
	    showtime.setStart_Time(start);
	    showtime.setEnd_Time(end);
	    showtime.setTheater_id(theaterId);

	    ShowTimeDao showTimeDao = new ShowTimeDao();
	    showTimeDao.InsertShowTime(showtime);

	    response.sendRedirect("ShowTime.jsp");
	}

}
