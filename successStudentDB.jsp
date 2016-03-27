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
    		 alert("Profile Suceessfully Created!");
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

<br><br><br>


<div align="center">
<div class="container">
 <input type="text" name="search" value="" size="50" />
           
        <form name="StudentDataForm" action="StudentDB.jsp" method="post">
            <table border="0" >
     
                <tbody>
                    <tr>
                        <td>Student ID :</td>
                        <td><input type="text" name="studentID" value="" size="50" /></td>
                    </tr>
                    
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="firstName" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Middle Name :</td>
                        <td><input type="text" name="middleName" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Last Name :</td>
                        <td><input type="text" name="lastName" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Email ID :</td>
                        <td><input type="text" name="emailID" value="@uwindsor.ca" size="50" /><td>
                    </tr>
                    <tr>
                        <td>Contact Number :</td>
                        <td><input type="text" name="contactNumber" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Semester :</td>
                        <td><input type="text" name="semester" value="Fall" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Year :</td>
                        <td><input type="text" name="year" value="" size="50" /><td>
                    </tr>
                    <tr>
                    <td> Gender :</td>
                    <td>
                    <input checked type="radio" name="Gender" value="Male" />Male
                    <input type="radio" name="Gender" value="Female" />Female
           
                    </td>
                    </tr>
                    <tr>
                    <td> Status :</td>
                    <td>
                    <input type="radio" name="status" value="International" />International
                    <input type="radio" name="status" value="Permanent Resident/Citizen" />Permanent Resident/Citizen
         
                    </td>
                    </tr>
                </tbody>
            </table>
           
                     
  
           
       
       <br> <br>
            <button type="reset" class="btn btn-info" name="reset">Clear</button> 
            <button type="submit" class="btn btn-info" name="submit">Submit</button>
            
             
        
        
        </form>
       
        <script type="text/javascript"> window.onload = alertName; </script>
        

</div>
</div>
</div>




</body>
</html>
