<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
 
<%!
public Connection cOpen() throws SQLException {
	Connection con = null;
	try {
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123");
	} catch (Exception e) {
		e.printStackTrace(System.out);
	}
	return con;
}%>



<%
Connection con = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String SQL = "";
%>

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
table {
    border-collapse: collapse;
}

td {
    padding-top: .5em;
    padding-bottom: .5em;
}
</style>





</head>
<body>

<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Adding Students' Educational Background</font>

<br><br>




<ul class="nav nav-tabs">

  <li><a href="update.jsp">Basic Info.</a></li>
  <li class="active"><a href="updateEdu.jsp">Educational Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Certification Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Work Experience</a></li>
   <li><a href="studentSkillSet.jsp">Competency Level</a></li>
    <li><a href="admin.jsp">Home</a></li>
</ul>

</div>
<br> <br>
<div align="center">
<div class="container">
<br> 
 <form action="updateEduDB.jsp" method="POST">
 <table border="0" >
     
                <tbody>
                    <tr>
                      <!--  <td><input type="text" name="search"  value="Student ID"  size = "40" style="color:#888;"onfocus="if(this.value == 'Student ID')this.value='''" onblur="inputBlur(this)"  /></td> --> 
                        <td> <input placeholder="Search by Student ID" type = "search" size ="40"  name = "search"></td> 
                        <td><input type="submit"  class="btn btn-info" value = "Search"></td>
                        
                    </tr>
                 </tbody>
  </table>
 
  
</form>
    
        <form name="StudentDataForm">
            <table border="0">
     
                <tbody>
                    <tr>
                        <td>Student ID :</td>
                        <td><input type="text" name="studentID" value="" size="50" /></td>
           
                   
                    <tr>
                        <td>Degree Type :</td>
              
                         <!--  <td><select name="degreeID" onchange = "Autotext();"> -->
                  
                         <td> <input type="text" name="degreeID" value="" /></td>
                       
                   
                    </tr>
                    
		
 
 
 
                 

                    <tr>
                        <td>Start Date <br> (dd-mm-yyyy) :</td>
                        <td><input type="text" name="startDate" value="" size="50" /></td>
                    </tr>
                    
                    
                    <tr>
                        <td>End Date <br> (dd-mm-yyyy) :</td>
                        <td><input type="text" name="endDate" value="" size="50" /></td>
                    </tr>

                    <tr>
                        <td>Major :</td>
                        <td><input type="text" name="major" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>GPA :</td>
                        <td><input type="text" name="GPA" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>University Name :</td>
                        <td><input type="text" name="universityName" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>University Location :</td>
                        <td><input type="text" name="locationUniversity" value="" size="50" /></td>
                    </tr>
                    
                </tbody>
            </table>

    
        <button type="submit" class="btn btn-info" name="submit">Update</button>
        </form>
 <script>


function Autotext()
{
	//var mytextbox = document.getElementById("mytext");
	var mydropdown = document.getElementById("degreeID").value;

	//if(mydropdown == 2)
	//mytextbox.innerHTML = "Graduate"
	//mytextbox.value = "Graduate";
	document.getElementById("mytext").innerHTML = "Undergraduate" + mydropdown;
	
}
</script>
    </body>
</html>
