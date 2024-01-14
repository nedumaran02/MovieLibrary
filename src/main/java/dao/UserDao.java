package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Movie;
import dto.User;

public class UserDao 
{
	public Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/movielibrary","root","root");
	}
	public int saveUser(User user) throws SQLException, ClassNotFoundException
	{
		Connection conn = getConnection();
		PreparedStatement pst= conn.prepareStatement("insert into user values(?,?,?,?,?)");
		
		pst.setInt(1, user.getuId());
		pst.setString(2, user.getuName());
		pst.setLong(3, user.getuContact());
		pst.setString(4, user.getuEmail());
		pst.setString(5, user.getuPassword());
		
		return pst.executeUpdate();
		
	}
	public User findByEmail(String email) throws ClassNotFoundException, SQLException
	{
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select * from user where useremail=?");

		pst.setString(1, email);
		ResultSet rs =pst.executeQuery();
		rs.next();
		User u = new User();
		if(rs.isFirst())
		{
			u.setuId(rs.getInt(1));
			u.setuName(rs.getString(2));
			u.setuContact(rs.getLong(3));
			u.setuEmail(rs.getString(4));
			u.setuPassword(rs.getString(5));
			
			return u;
		}
		return null;
	}
	public List<Movie> getAllMovies( ) throws SQLException, ClassNotFoundException
	{
		Connection conn = getConnection();
		PreparedStatement pst= conn.prepareStatement("select * from movie");
		ResultSet rs = pst.executeQuery();
		List<Movie> movies = new ArrayList<Movie>();
		while(rs.next()){
			Movie m = new Movie();
			m.setMovieid(rs.getInt(1));
			m.setMoviename(rs.getString(2));
			m.setMovieprice(rs.getDouble(3));
			m.setMovierating(rs.getDouble(4));
			m.setMoviegenre(rs.getString(5));   
			m.setMovielanguage(rs.getString(6));
			Blob b = rs.getBlob(7);
			byte[] img = b.getBytes(1, (int)b.length());
			m.setMovieimage(img);
			movies.add(m);
		}
		return movies; 
		
	}
}
