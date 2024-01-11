<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login | Movie Library</title>
  <link rel="stylesheet" href="css/adminlogin.css">
</head>
<body style="background-image: url('image/sunset.jpg');">
  <div class="login-container">
    <form action="adminlogin" class="login-form"  method="post">
      <h2>Admin Login</h2>
      <%String a = (String)request.getAttribute("message");%>
      <div class="input-group">
        <label for="email">Email</label>
        <input type="text" id="email" name="adminmail" required>
      </div>
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="adminpass" required>
        <% if(a!=null){ %>
        <h3 style="color: #cc0000"> <%= a %></h3>
        <%} %>
      </div>
      
        <button type="submit" style="width:49vh">Login</button>
        <h4 style="text-align: center;">Don't have an account ? <a href="adminsignup.jsp" style="color: #0052cc;">SignUp</a></h4>
     
    </form>
  </div>
</body>
</html>