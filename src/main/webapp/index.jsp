<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | MovieLibrary</title>
<link rel="stylesheet" href="css/index.css">
</head>
<body>
  <header>
    <h1>Welcome to My Movie Library</h1>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
		<li><a href="#">Contact</a></li>
        <li><a href="userlogin.jsp">UserLogin</a></li>
		<li><a href="adminlogin.jsp">AdminLogin</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section class="hero">
      <h2>Explore Something Amazing</h2>
      <p>Welcome to our fantastic world of movies!</p>
      <a href="#" class="btn">Get Started</a>
    </section>

    <section class="features">
      <div class="feature">
        <h3>Movie 1</h3>
		<img src="image/ayalaan.jpeg" alt="Loading" class="nanna">
      </div>
      <div class="feature">
        <h3>Movie 2</h3>
        <img src="image/Passengers.jpeg" alt="Loading" class="nanna">
      </div>
	  <div class="feature">
        <h3>Movie 3</h3>
        <img src="image/Interstellar.jpeg" alt="Loading" class="nanna">
      </div>
	  <div class="feature">
        <h3>Movie 4</h3>
		<img src="image/Leo.jpeg" alt="Loading" class="nanna">
      </div>
      <div class="feature">
        <h3>Movie 5</h3>
        <img src="image/martian.jpeg" alt="Loading" class="nanna">
      </div>
    </section>
  </main>

  <footer>
    <p>&copy; 2024 Movie Library. All Rights Reserved.</p>
  </footer>
</body>
</html>