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
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
</head>

<body>
<div align="center">
<div id="header">

<table border="2">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>
<div id="header h1">
<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Welcome, Administrator </font>
<!--  <%= request.getParameter("username") %> -->

<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 

<br><br>


<div align="center">
<div class="container">
<div class="relative">
  <font face="Helvetica" size="4">       
  <a href = "userAccount.jsp"><button type="button" class="btn btn-info">Create User Account</button> </a> 
  
    <a href = "userAccountDel.jsp"><button type="button" class="btn btn-info">Delete User Account</button> </a> 
   
  <br><br>
 <!--  <div class  ="dropdown"> -->
 <a href="createStudentProfile.jsp"> <button type="button" class="btn btn-info">Fill in Details</button>  </a>
 <!--  <div class="dropdown-content">
  
    <a href="createStudentProfile.jsp">Student</a> --> 
<!--     <a href="#">Employer</a> --> 
    
  
 
 
  <a href="update.jsp"><button type="button" class="btn btn-info">Update Details</button></a>  
 
    
  
  <br><br>
  <a href="internPosting.jsp"><button type="button" class="btn btn-info">Add Intern Posting</button></a>  
  <br><br>
 <a href="viewMatchesDB.jsp"> <button type="button" class="btn btn-info">View Interested Candidates</button>   
  <br><br>
 <a href="approveJobs.jsp"> <button type="button" class="btn btn-info">Approve Jobs</button>   
  <br><br>
  <div class = "dropdown">
<a href="report.jsp" <button type="button" class="btn btn-info">Generate Reports</button> </a>
   
 
    
  </div>  
  </div>
  </font>
</div>
</div>
</div>



</body>
</html>





