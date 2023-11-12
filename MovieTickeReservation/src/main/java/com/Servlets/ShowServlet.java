package com.Servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.ShowTimeDao;
import com.Model.ShowTimes;

/**
 * Servlet implementation class ShowServlet
 */
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		listAllShowTime(request, response);
	}

	private void listAllShowTime(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ShowTimeDao showTimeDao = new ShowTimeDao();
        List<ShowTimes> show = showTimeDao.ListAllShowTime();

        request.setAttribute("showList", show);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("ShowTime.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");

        switch (action) {
            case "insert":
                insertShowTime(request, response);
                break;
            case "update":
                updateShowTime(request, response);
                break;
            case "delete":
                deleteShowTime(request, response);
                break;
            default:
                break;
        }
        response.sendRedirect("ShowTime.jsp");
    }
	
	private void insertShowTime(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ShowTimeDao showTimeDao = new ShowTimeDao();
        showTimeDao.InsertShowTime();
	}

	private void updateShowTime(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ShowTimeDao showTimeDao = new ShowTimeDao();
        showTimeDao.UpdateShowTime();
	}

	private void deleteShowTime(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		ShowTimeDao showTimeDao = new ShowTimeDao();
        showTimeDao.DeleteShowTime();
        response.sendRedirect("ShowTime.jsp");
	}

}
