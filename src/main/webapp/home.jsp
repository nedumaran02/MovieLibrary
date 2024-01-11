<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | MovieLibrary</title>
<link rel="stylesheet" href="css/home.css">
</head>
<body>
  <h1>Movie Library</h1>
  <% List<Movie> movies = (List)request.getAttribute("movies"); %>
  <table>
    <thead>
        <tr>
			<th>Movie Id</th>
			<th>Movie Name</th>
			<th>Movie Price</th>
			<th>Movie Rating</th>
			<th>Movie Genre</th>
			<th>Movie Language</th>
			<th>Movie Image</th>
			<th>Movie Delete</th>
			<th>Movie Edit</th>
		</tr>
    </thead>
    <% for(Movie m : movies){ %>
    <tbody>
        <tr>
			<td><%= m.getMovieid() %></td>
			<td><%= m.getMoviename() %></td>
			<td><%= m.getMovieprice() %></td>
			<td><%= m.getMovierating()%></td>
			<td><%= m.getMoviegenre() %></td>
			<td><%= m.getMovielanguage() %></td>
			<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
			<td><img src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px"></td>
			<td> <a href="deletemovie?id=<%= m.getMovieid() %>">Delete Movie</a> </td>
			<td><a href="editmovie?id=<%=m.getMovieid()%>">Edit Movie</a></td>
		</tr>
    </tbody>
    <%} %>
  </table>
  <a href="addmovie.jsp">Add Movie</a>
</body>
</html>