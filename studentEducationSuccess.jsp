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
table {
    border-collapse: collapse;
}

td {
    padding-top: .5em;
    padding-bottom: .5em;
}
</style>
 <script type="text/javascript">

var Msg ='<%=session.getAttribute("getMessage")%>';
    if (Msg != "null") {
 
    	{
    		 function alertName(){
    		 alert("Education details successfully added!");
    		 } 
 }
    }
 </script>
</head>
<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Creating Students' Profiles</font>

<br><br>




<ul class="nav nav-tabs">

  <li><a href="createStudentProfile.jsp">Basic Info.</a></li>
  <li class="active"><a href="studentEducation.jsp">Educational Details</a></li>
  <li><a data-toggle="tab" href="#menu2">Certification Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Work Experience</a></li>
   <li><a data-toggle="tab" href="#menu2">Competency Level</a></li>
    <li><a href="admin.jsp">Home</a></li>
</ul>

</div>
<br> <br>
<div align="center">
<div class="container">
<br> <br>
       
        <input type="text" name="studentID" value="" size="30" /> Student ID
        <br> <br>
        <form name="StudentEducationForm" action="studentDegree.jsp" method="post">
          
        <table border="1" cellspacing="2" cellpadding="7">
            <thead>
                <tr>
                   
      
                    <th>Degree Type</th>
                    <th>Major</th>
                    <th>GPA</th>
                    <th>University</th>
                    <th>University Location</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                   
                     <td><select name="Degree Type">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                    <td><input type="text" name="university_name" value=""/></td>
                    <td><input type="text" name="GPA" value=""/></td>
                    <td><input type="text" name="location_university" value=""/></td>
                   
                </tr>
                 <tr>
                    
                     <td><select name="Degree Type">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                    <td><input type="text" name="university_name" value=""/></td>
                    <td><input type="text" name="GPA" value=""/></td>
                    <td><input type="text" name="location_university" value=""/></td>
                   
                </tr>
                 <tr>
                 
                     <td><select name="Degree Type">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                    <td><input type="text" name="university_name" value=""/></td>
                    <td><input type="text" name="GPA" value=""/></td>
                    <td><input type="text" name="location_university" value=""/></td>
                   
                </tr>
                 <tr>
                  
                     <td><select name="Degree Type">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                    <td><input type="text" name="university_name" value=""/></td>
                    <td><input type="text" name="GPA" value=""/></td>
                    <td><input type="text" name="location_university" value=""/></td>
                   
                </tr>
                 <tr>
                 
                     <td><select name="Degree Type">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                    <td><input type="text" name="university_name" value=""/></td>
                    <td><input type="text" name="GPA" value=""/></td>
                    <td><input type="text" name="location_university" value=""/></td>
                   
                </tr>
            </tbody>
        </table>
         <br> <br>
            <!--  <button type="reset" class="btn btn-info" name="Reset">Clear</button>  -->
            <button type="submit" class="btn btn-info" name="submit">Submit</button>
          <!--  <a href= "createStudentProfile.jsp" class="btn btn-info" name="new">Create Next Account</a>  --> 

   </form>
   <script type="text/javascript"> </script>
    </body>
</html>
