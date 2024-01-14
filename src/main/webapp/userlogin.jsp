<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login | Movie Library</title>
<link rel="stylesheet" href="css/userlogin.css">
</head>
<body>
  <div class="login-container">
    <form action="userlogin" class="login-form"  method="post">
      <h2>User Login</h2>
      <%String a = (String)request.getAttribute("message");%>
      <div class="input-container">
        <label for="username">Useremail</label>
        <input type="text" id="username" name="useremail" required>
      </div>
      <div class="input-container">
        <label for="password">Password</label>
        <input type="password" id="password" name="userpassword" required>
        <% if(a!=null){ %>
        <h3 style="color: #cc0000"> <%= a %></h3>
        <%} %>
      </div>
      <button type="submit">Login</button>
      <h4>Don't have an account ? <a href="usersignup.jsp" style="color: #0052cc;">SignUp</a></h4>
    </form>
  </div>
</body>
</html>