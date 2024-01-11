<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin SignUp | Movie Library</title>
<link rel="stylesheet" href="css/adminsignup.css">
</head>
<body class="signupbody">
    <div class="signup-container">
      <form action="adminsignup" method="post">
        <h2 style="text-align: center;">Admin SignUp</h2>
        <div class="">
            <table style="line-height: 40px;">
                <tr>
                    <td>Admin Id</td>
                    <td><input type="number" name="adminid" required></td>
                </tr><tr></tr>
                <tr>
                    <td>Admin Name</td>
                    <td><input type="text" name="adminname" required></td>
                </tr>
                <tr>
                    <td>Admin Contact</td>
                    <td><input type="tel" name="admincontact" required></td>
                </tr>
                <tr>
                    <td>Admin Email</td>
                    <td><input type="email" name="adminmail" required></td>
                </tr>
                <tr>
                    <td>Admin Password</td>
                    <td><input type="password" name="adminpass" required></td>
                </tr>
            </table> <br>
        </div>
          <button type="submit" id="signupsubmit">Submit</button>
           <h4 style="text-align: center;">Already have an account ? <a href="adminlogin.jsp" style="color: #0052cc;">Login</a></h4>
      </form>
    </div>
  </body>
</html>

