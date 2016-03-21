
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
<label for="Admin"> Admin</label>
<input type="radio" name="login" value="Admin">
<label for="Student"> Student </label>
<input type="radio" name="login" value="Student">
<table border="1" cellpadding="5" cellspacing="2">
<thead>
	<tr>
	     <th colspan="2"> Login </th>
	</tr>
</thead>
<tbody>
	<tr>
	      <td> Username</td>
	      <td> <input type="text" name="username" /></td>
	</tr>
	<tr>
		<td>Password</td>
		<td> <input type="password" name="password" /></td>
	</tr>
	
	<tr>
	
		<td colspan="2" align="center"><input type="submit" value="Login"/>
		&nbsp;&nbsp;
		<input type="reset" value="Reset"/>
		</td>
	</tr>
	<br><br>
	
	


</tbody>     
</table>

</form>
</h3>
</div>
</div>
</body>
</html>
