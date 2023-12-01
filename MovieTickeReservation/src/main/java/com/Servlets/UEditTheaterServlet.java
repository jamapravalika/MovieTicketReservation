package com.Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.TheaterDao;
import com.Model.Theater;


public class UEditTheaterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TheaterDao theaterDao = new TheaterDao();
        List<Theater> theaters = theaterDao.getAllTheater();
        request.setAttribute("theaters", theaters);
        RequestDispatcher dispatcher = request.getRequestDispatcher("EditTheater.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int theaterId = Integer.parseInt(request.getParameter("theaterId"));
        String theaterName = request.getParameter("theaterName");
        String theaterLocation = request.getParameter("theaterLocation");
        int seatingCapacity = Integer.parseInt(request.getParameter("seatingCapacity"));

        Theater updatedTheater = new Theater();
        updatedTheater.setTheater_Id(theaterId);
        updatedTheater.setTheater_Name(theaterName);
        updatedTheater.setAddress(theaterLocation);
        updatedTheater.setCapacity(seatingCapacity);

        TheaterDao theaterDao = new TheaterDao();
        boolean success = theaterDao.editTheater(updatedTheater);
        

        if (success) {
            response.sendRedirect("/MovieTicketReservation/viewTheater");
        } else {
            response.sendRedirect("Error.jsp");
        }


    }
}
