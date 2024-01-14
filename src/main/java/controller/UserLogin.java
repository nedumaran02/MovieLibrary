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

import dao.UserDao;
import dto.Movie;
import dto.User;
@WebServlet("/userlogin")
public class UserLogin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String usermail = req.getParameter("useremail");
		String userpassword = req.getParameter("userpassword");
		
		System.out.println(usermail);
		System.out.println(userpassword);
		
		UserDao u = new UserDao();
		try {
			User user = u.findByEmail(usermail);
			if(user!=null)
			{
				if(user.getuPassword().equals(userpassword))
				{
					List<Movie> movies = u.getAllMovies();
					req.setAttribute("movies", movies);
					RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
					rd.include(req,resp);
				}
				else
				{
					req.setAttribute("message", "Password is Wrong");
					RequestDispatcher rd = req.getRequestDispatcher("userlogin.jsp");
					rd.include(req,resp);
				}
			}
			else
			{
				req.setAttribute("message", "Email is Wrong");
				RequestDispatcher rd = req.getRequestDispatcher("userlogin.jsp");
				rd.include(req,resp);
			}
		} catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
	}
}
