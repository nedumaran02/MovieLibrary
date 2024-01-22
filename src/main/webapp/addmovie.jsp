<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Movie | Movie Library</title>
<link rel="stylesheet" href="css/adminsignup.css">
</head>
<body class="signupbody">
    <div class="signup-container">
		<form action="savemovie" method="post" enctype="multipart/form-data">
        <h2 style="text-align: center;">Add Movie</h2>
        <div>
            <table style="line-height: 40px; width: max-content;">
                <tr>
                    <td>Movie Id</td>
                    <td><input type="number" name="movieid" required></td>
                </tr>
                <tr>
                    <td>Movie Name</td>
                    <td><input type="text" name="moviename" required></td>
                </tr>
                <tr>
                    <td>Movie Price</td>
                    <td><input type="number" name="movieprice" required></td>
                </tr>
                <tr>
                    <td>Movie Rating</td>
                    <td><input type="number" name="movierating" ></td>
                </tr>
                <tr>
                    <td>Movie Genre</td>
                    <td><input type="text" name="moviegenre" ></td>
                </tr>
				<tr>
                    <td>Movie Language</td>
                    <td><input type="text" name="movielanguage" ></td>
                </tr>
				<tr>
                    <td>Movie Image</td>
                    <td><input type="file" name="movieimage" ></td>
                </tr>
            </table> <br>
        </div>
          <button type="submit" id="signupsubmit">Submit</button>
      </form>
    </div>
  </body>
</html>