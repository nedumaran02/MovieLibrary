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
<body class="whole">
  <h1>Movie Library</h1>
  <% List<Movie> movies =(List)request.getAttribute("movies");%>
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
			<td><b><%= m.getMovieid() %></b></td>
			<td><b><%= m.getMoviename() %></b></td>
			<td><b><%= m.getMovieprice() %></b></td>
			<td><b><%= m.getMovierating()%></b></td>
			<td><b><%= m.getMoviegenre() %></b></td>
			<td><b><%= m.getMovielanguage() %></b></td>
			<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
			<td><img src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px"></td>
			<td><a href="deletemovie?id=<%= m.getMovieid() %>"><b>Delete Movie</b></a> </td>
			<td><a href="editmovie?id=<%=m.getMovieid()%>"><b>Edit Movie</b></a></td>
		</tr>
    </tbody>
    <%} %>
  </table>
  <a href="addmovie.jsp">Add Movie</a>
</body>
</html>