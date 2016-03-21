<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
<font face="Georgia" size="4"> Welcome, <%= request.getParameter("username") %> </font>

<br><br>


<div align="centre">
<div class="container">
<div class="relative">
  <font face="Helvetica" size="4">       
  <button type="button" class="btn btn-info">Update Profile</button>     
  <br><br>
  <button type="button" class="btn btn-info">Add Job Posting</button>  
  <br><br>
   <button type="button" class="btn btn-info">Add Research Project</button>  
  <br><br>
  <button type="button" class="btn btn-info">Send Notifications</button>   
  <br><br>
  <button type="button" class="btn btn-info">Generate Reports</button>    
  </font>
</div>
</div>
</div>



</body>
</html>





