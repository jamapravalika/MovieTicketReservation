package com.Servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.TheaterDao;
import com.Model.Theater;

/**
 * Servlet implementation class TheaterServlet
 */

public class TheaterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TheaterServlet() {
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
		
		 System.out.println("in post");
		//System.out.println("hello");
		/*
		 * String action = request.getServletPath();
		 * 
		 * switch(action){ case "/insert": try { inserttheater(request,response); }
		 * catch (SQLException e) { e.printStackTrace(); } break; case "/delete": try {
		 * deletetheater(request,response); } catch (SQLException e) {
		 * e.printStackTrace(); }
		 * 
		 * break; case "/edit": try { showedittheater(request,response); } catch
		 * (SQLException e) { e.printStackTrace(); } break; case "/display": try {
		 * displaytheater(request,response); } catch (SQLException e) {
		 * e.printStackTrace(); } break; default: try { listtheater(request,response); }
		 * catch (SQLException e) { e.printStackTrace(); }
		 * 
		 * 
		 * }
		 */
	}
		
	
	
	 private void listtheater(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{	
		/*
		 * List<Theater>listTheater = theaterDao.selectAllTheater();
		 * request.setAttribute(ListTheater, listtheater()); RequestDispatcher
		 * dispatcher = request.getRequestDispatcher("theater.jsp");
		 * dispatcher.forward(request, response); }
		 * 
		 * private void showedittheater(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException,IOException{ int id =
		 * Integer.parseInt(request.getParameter("id")); Theater existingTheater =
		 * comDao.selectTheater(id); RequestDispatcher dispatcher =
		 * request.getRequestDispatcher("theater.jsp"); request.setAttribute(theater,
		 * existingtheater); dispatcher.forward(request, response); }
		 * 
		 * private void deletetheater(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException,IOException{ int id =
		 * Integer.parseInt(request.getParameter("id")); comDao.deleteUser(id);
		 * response.sendRedirect(list); }
		 * 
		 * private void display(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException,IOException{ RequestDispatcher dispatcher =
		 * request.getRequestDispatcher("theater.jsp"); request.getAttribute("theater",
		 * existingUser); dispatcher.forward(request, response); }
		 * 
		 * private void inserttheater(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException,IOException{
		 * 
		 * String theatername = request.getParameter("theatername"); String location =
		 * request.getParameter("location"); int capacity =
		 * Integer.parseInt(request.getParameter("capacity")); Theater newTheater = new
		 * Theater(theatername,location,capacity); TheaterDao.inserttheater(new
		 * Theater);
		 * 
		 * response.sendRedirect("list");
		 */
		 
		
		
	}}
		


