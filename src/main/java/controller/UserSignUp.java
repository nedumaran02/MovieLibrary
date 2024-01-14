package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;

@WebServlet("/usersignup")
public class UserSignUp extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("userid"));
		String name = req.getParameter("username");
		long contact=Long.parseLong(req.getParameter("usercontact"));
		String mail= req.getParameter("useremail");
		String password= req.getParameter("userpassword");
		
		User user = new User();
		user.setuId(id);
		user.setuName(name);
		user.setuContact(contact);
		user.setuEmail(mail);
		user.setuPassword(password);
		
		UserDao u = new UserDao();
		try {
			int res = u.saveUser(user);
			if(res>0)
			{
				RequestDispatcher rd = req.getRequestDispatcher("userlogin.jsp");
				rd.include(req, resp);
			}
			else
			{
				RequestDispatcher rd = req.getRequestDispatcher("usersignup.jsp");
				rd.include(req, resp);
			}
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.getWriter().print(id);
	}
}
