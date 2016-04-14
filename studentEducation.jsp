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
   <li><a data-toggle="tab" href="#menu2">Competency Level</a></li>
    <li><a href="admin.jsp">Home</a></li>
</ul>

</div>
<br> <br>
<div align="center">
<div class="container">
<br> 
        
     <form name="StudentEducationForm" action="studentDegreeDB.jsp" method="post">
         
       <!--    <input type="text" name="studentID" value="" size="30" /> Student ID -->
         
        <table id ="myTable "border="1" cellspacing="2" cellpadding="7">
        
            <thead>
                <tr>
                   
                    <th> Student ID</th>
                    <th>Degree Type</th>
                    <th>Major</th>
                    <th>GPA</th>
                    <th>University</th>
                    <th>University Location</th>
                    <th> Load </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" name="studentID" value=""/></td>
                     <td><select name="degreeType">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                    
                    <td><input type="text" name="GPA" value=""/></td>
                    <td><input type="text" name="universityName" value=""/></td>
                    <td><input type="text" name="locationUniversity" value=""/></td>
                    <td><a href = "studentDegreeDB.jsp"><button type="submit" class="btn btn-info" name="submit">Submit</button></a></td>
                     
                </tr>
              </tbody>
              </form>
              </table>
              
               <form name="StudentEducationForm" action="studentDegreeDB.jsp" method="post">
                <table id ="myTable "border="1" cellspacing="2" cellpadding="7">
              <tbody> 
                <tr>
                    <td><input type="text" name="studentID" value=""/></td>
                     <td><select name="degreeType">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                   
                    <td><input type="text" name="GPA" value=""/></td>
                     <td><input type="text" name="universityName" value=""/></td>
                    <td><input type="text" name="locationUniversity" value=""/></td>
                    <td><a href = "studentDegreeDB.jsp"><button type="submit" class="btn btn-info" name="submit">Submit</button></a></td>
                     
                </tr>
              </tbody>
              </form>
              </table>
              
              
              <form name="StudentEducationForm" action="studentDegreeDB.jsp" method="post">
                <table id ="myTable "border="1" cellspacing="2" cellpadding="7">
              <tbody> 
                <tr>
                    <td><input type="text" name="studentID" value=""/></td>
                     <td><select name="degreeType">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                   
                    <td><input type="text" name="GPA" value=""/></td>
                     <td><input type="text" name="universityName" value=""/></td>
                    <td><input type="text" name="locationUniversity" value=""/></td>
                    <td><a href = "studentDegreeDB.jsp"><button type="submit" class="btn btn-info" name="submit">Submit</button></a></td>
                     
                </tr>
                </tbody>
              
              </form>
              </table>
              
              <form name="StudentEducationForm" action="studentDegreeDB.jsp" method="post">
                <table id ="myTable "border="1" cellspacing="2" cellpadding="7">
              <tbody> 
                <tr>
                    <td><input type="text" name="studentID" value=""/></td>
                     <td><select name="degreeType">
                            <option>Graduate</option>
                            <option>Undergraduate</option>
                        </select></td>
                    <td><input type="text" name="major" value=""/></td>
                   
                    <td><input type="text" name="GPA" value=""/></td>
                     <td><input type="text" name="universityName" value=""/></td>
                    <td><input type="text" name="locationUniversity" value=""/></td>
                    <td><a href = "studentDegreeDB.jsp"><button type="submit" class="btn btn-info" name="submit">Submit</button></a></td>
                     
                </tr>
              </tbody>
              </form>
              </table>
              
   
                
         
        </table>
         <input type="text" name="rowCount" value="" size="30" /> Total Rows
         <br> <br>
            <!--  <button type="reset" class="btn btn-info" name="Reset">Clear</button>  -->
            <button type="submit" class="btn btn-info" name="submit">Submit</button>
          <!--  <a href= "createStudentProfile.jsp" class="btn btn-info" name="new">Create Next Account</a>  --> 

   </form>
   <br>
      
       <button onclick="myFunction()">Load More Rows</button>
       <script>
       function myFunction()
       {
           var x=document.getElementById('myTable');
              // deep clone the targeted row
           var new_row = x.rows[1].cloneNode(true);
              // get the total number of rows
           var len = x.rows.length;
              // set the innerHTML of the first row 
           new_row.cells[0].innerHTML = len;

              // grab the input from the first cell and update its ID and value
           var inp1 = new_row.cells[1].getElementsByTagName('input')[0];
           inp1.id += len;
           inp1.value = '';

              // grab the input from the first cell and update its ID and value
           var inp2 = new_row.cells[2].getElementsByTagName('input')[0];
           inp2.id += len;
           inp2.value = '';

              // append the new row to the table
           x.appendChild( new_row );
       }
</script>
   
    </body>
</html>
