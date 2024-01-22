package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import dto.Admin;
import dto.Movie;
@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String adminmail = req.getParameter("adminmail");
		String adminpassword = req.getParameter("adminpass");
		
		System.out.println(adminmail);
		System.out.println(adminpassword);
		
		AdminDao a = new AdminDao();
		try {
			Admin admin = a.findByEmail(adminmail);
			if(admin!=null)
			{
				if(admin.getAdminpassword().equals(adminpassword))
				{
					HttpSession session = req.getSession();
					session.setAttribute("adminname", admin.getAdminname());
					
					List<Movie> movies = a.getAllMovies();
					req.setAttribute("movies", movies);
					RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
					rd.include(req,resp);
				}
				else
				{
					req.setAttribute("message", "Password is Wrong");
					RequestDispatcher rd = req.getRequestDispatcher("adminlogin.jsp");
					rd.include(req,resp);
				}
			}
			else
			{
				req.setAttribute("message", "Email is Wrong");
				RequestDispatcher rd = req.getRequestDispatcher("adminlogin.jsp");
				rd.include(req,resp);
			}
		} catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
	}

}
