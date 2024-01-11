<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User SignUp | Movie Library</title>
<link rel="stylesheet" href="css/adminsignup.css">
</head>
<body style="background-image: url(image/user.jpg);" class="signupbody" >
    <div class="signup-container">
      <form action="usersignup" method="post">
        <h2 style="text-align: center;">User SignUp</h2>
        <div class="">
            <table style="line-height: 40px;">
                <tr>
                    <td>User Id</td>
                    <td><input type="number" name="userid" required></td>
                </tr><tr></tr>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="username" required></td>
                </tr>
                <tr>
                    <td>User Contact</td>
                    <td><input type="tel" name="usercontact" required></td>
                </tr>
                <tr>
                    <td>User Email</td>
                    <td><input type="email" name="usermail" required></td>
                </tr>
                <tr>
                    <td>User Password</td>
                    <td><input type="password" name="userpassword" required></td>
                </tr>
            </table> <br>
        </div>
          <button type="submit" id="signupsubmit">Submit</button>
           <h4 style="text-align: center;">Already have an account ? <a href="userlogin.jsp" style="color: #0052cc;">Login</a></h4>
      </form>
    </div>
  </body>
</html>