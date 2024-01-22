<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Movie | Movie Library</title>
<link rel="stylesheet" href="css/adminsignup.css">
</head>
<body class="signupbody">
	<div class="signup-container">
		<% Movie m = (Movie)request.getAttribute("movies"); %>
		
		<form action="updatemovie" method="post" enctype="multipart/form-data">
        <h2 style="text-align: center;">Edit Movie</h2>
        <div>
            <table style="line-height: 40px; width: max-content;">
                <tr>
                    <td>Movie Id</td>
                    <td><input type="number" name="movieid" value="<%= m.getMovieid() %>" readonly></td>
                </tr>
                <tr>
                    <td>Movie Name</td>
                    <td><input type="text" name="moviename" value="<%= m.getMoviename() %>" ></td>
                </tr>
                <tr>
                    <td>Movie Price</td>
                    <td><input type="number" name="movieprice" value="<%= m.getMovieprice() %>"></td>
                </tr>
                <tr>
                    <td>Movie Rating</td>
                    <td><input type="number" name="movierating" value="<%= m.getMovierating() %>"></td>
                </tr>
                <tr>
                    <td>Movie Genre</td>
                    <td><input type="text" name="moviegenre" value="<%= m.getMoviegenre() %>"></td>
                </tr>
				<tr>
                    <td>Movie Language</td>
                    <td><input type="text" name="movielanguage" value="<%= m.getMovielanguage() %>"></td>
                </tr>
				<tr>
					<td>Movie Image</td>
					<% String base64image= new String(Base64.getEncoder().encode(m.getMovieimage())); %>
					<td>
						<img src="data:image/jpeg;base64, <%=base64image %>" height="100px" width="100px"> <br>
						<input type="file" name="movieimage" >
						
					</td>
                </tr>

            </table> <br>
        </div>
          <button type="submit" id="signupsubmit">Submit</button>
      </form>
	</div>
	
</body>
</html>