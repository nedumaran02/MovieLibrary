package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import dto.Admin;
@WebServlet("/adminsignup")
public class AdminSignUp extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("adminid"));
		String name = req.getParameter("adminname");
		long contact=Long.parseLong(req.getParameter("admincontact"));
		String mail= req.getParameter("adminmail");
		String password= req.getParameter("adminpass");
		
		Admin admin = new Admin();
		admin.setAdminid(id);
		admin.setAdminname(name);
		admin.setAdmincontact(contact);
		admin.setAdminmail(mail);
		admin.setAdminpassword(password);
		
		AdminDao a = new AdminDao();
		try {
			int res = a.saveAdmin(admin);
			if(res>0)
			{
				RequestDispatcher rd = req.getRequestDispatcher("adminlogin.jsp");
				rd.include(req, resp);
			}
			else
			{
				RequestDispatcher rd = req.getRequestDispatcher("adminsignup.jsp");
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
