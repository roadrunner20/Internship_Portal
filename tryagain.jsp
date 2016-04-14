<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome !</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<body>
<div align="center">
<div id="header">


<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>
<div id="header h1">
<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<h3 class="marquee">
	<span> Good Luck and Mazel Tovs !  </span>
	
<form action= "NewFile validate.jsp" method="post">

<input type="radio" name="login" value="Admin" checked>Admin

<input type="radio" name="login" value="Student">Student
<div class="relative">
User Name : <input type="text" name="username" />
Password  : <input type="password" name="password" />
<input type = "Submit" />


<font face="Georgia" size="6"><%= request.getParameter("pagemessage") %> </font>
</div>

</form>
</h3>
</div>
</div>
</body>
</html>