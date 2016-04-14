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
       function validator()
       {
    	  
    	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    	 //var result = document.getElementbyID("contactnumber");
    	var result1 = document.StudentDataForm.contactNumber.value.match(phoneno);
    	//var result1= result.value.match(phoneno);
    	//var phone = document.StudentDatForm.
    	  
    	//  var email = (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value));
    	 // var result2 = document.StudentDataForm.emailID.value.match(email);
    	  
    	  if (result1 == null)
    	  {
    		  
    		  document.StudentDataForm.contactNumber.focus();
    		 // document.StudentDataForm.emailID.focus();
    		 // document.StudentDataForm.action = "StudentDB.jsp";
    		 // document.StudentDataForm.method = "POST";
    		 // document.StudentDataForm.submit();
    		 alert("not valid");
    		 
    		  
    		  
    	  }
    	  else
    	{
    		 // alert ("Not valid");
    		  // result.focus();
    		 document.StudentDataForm.action = "StudentDB.jsp";
    		 document.StudentDataForm.method = "POST";
    		 document.StudentDataForm.submit();
    		
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

<br>




<ul class="nav nav-tabs">

  <li class="active"><a data-toggle="tab" href="createStudentProfile.jsp">Basic Info.</a></li>
  <li><a href="studentEducationDetails.jsp">Educational Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Certification Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Work Experience</a></li>
   <li><a href="studentSkillSet.jsp">Competency Level</a></li>
    <li><a href="admin.jsp">Home</a></li>
</ul>

</div>

<div align="center">
<div class="container">
       
        <!--   <input type="text" name="search" value="Search by Student ID" size="50" />   -->
        <form name="StudentDataForm" action="" onsubmit="return validator();">
            <table border="0" >
     
                <tbody>
                    <tr>
                        <td>Employer ID :</td>
                        <td><input type="text" name="studentID" value="" size="50" /></td>
                    </tr>
                    
                    <tr>
                        <td> Name :</td>
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
                        <td>Email ID : <br> (xx.x@gmail.com, xx@comcast.net)</td>
                        <td><input type="text" name="emailID" value="@uwindsor.ca" size="50" /><td>
                    </tr>
                    <tr>
                        <td>Contact Number : <br> (xxx-xxx-xxxx, xxx.xxx.xxxx, xxx xxx xxxx)</td>
                        <td><input type="text" name="contactNumber" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Semester :</td>
                        <td><select name="semester">
                            <option>Fall</option>
                            <option>Winter</option>
                            <option>Spring</option></td>
                    </tr>
                    <tr>
                        <td>Year :</td>
                        <td><select name="year">
                            <option>2016</option>
                            <option>2015</option>
                            <option>2014</option>
                            <option>2013</option>
                            <option>2012</option>
                            <option>2011</option>
                            <option>2010</option>
                            <option>2009</option>
                            <option>2008</option>
                            <option>2007</option>
                        </select></td><td>
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
           <!--  <button type="reset" class="btn btn-info" name="Reset">Clear</button>  -->
            <button type = "submit" class="btn btn-info" name="submit"  >Submit</button>
          <!--  <a href= "createStudentProfile.jsp" class="btn btn-info" name="new">Create Next Account</a>  --> 
            
             
        
        
        </form>
       
      
        

</div>
</div>
</div>




</body>
</html>