<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 




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
<font face="Georgia" size="4">Updating Students' Educational Background</font>

<br><br>




<ul class="nav nav-tabs">

  <li><a href="createStudentProfile.jsp">Basic Info.</a></li>
  <li class="active"><a href="updateEduDB.jsp">Educational Details</a></li>
  <li><a href="updateCerti.jsp">Certification Details</a></li>
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
                       <!--  <td><input type="text" name="search" value="search by student id" size="40" /></td> -->
                       <td> <input placeholder="Search by Student ID" type = "search" size ="40"  name = "search"></td> 
                        <td><input type="submit"  class="btn btn-info" value = "Search"></td>
                        
                    </tr>
                 </tbody>
  </table>
 
  
</form>



  
 <%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test_one";
String username="root";
String password="changemaker0123";
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt = conn.createStatement();
String studentID= request.getParameter("search");
//String studentID = "123";
//String studentID = (String)session.getAttribute("search");
//String query="SELECT * FROM student" 	+ "WHERE student_id = ?";
//PreparedStatement ps = conn.prepareStatement(query);
//ResultSet rs = stmt.executeQuery(query);
PreparedStatement statement = conn.prepareStatement("select degree_id, start_date, end_date, major, GPA, uni_name, uni_location from degree_details where student_id =?");
statement.setString(1, studentID);

//ps.setString(1, studentID);

//out.println("Student Id"  + studentID);
ResultSet rs=statement.executeQuery();
//out.print("student_id");

%>
<form name="StudentDataForm" action= "updateEduDBsuccess.jsp">
    <table border="0">
          <input type="hidden" name="studentID" value="<%=studentID%>" /> 
        <tbody>
         <tr>
            <th ><font size="2"/>Degree Type</th>
           <th ><font size="2"/>Start Date  </th>
           <th ><font size="2"/>End Date  </th>
           <th width="10%"><font size="2"/>Major  </th>
           <th ><font size="2"/>GPA </th>
           <th width="3%"><font size="2"/>University Name  </th>
           <th width="3%"><font size="2"/>University Location  </th>
            
       </tr>
          
<% 
while(rs.next())
{
   //out.println("Entered");
  
%>
    <!-- <button onclick="myFunction()">Load</button>-->
      <!--  <form method="POST" onsubmit="updateStudentDB.jsp">   -->
      
    
                
    
                  
                        
                   <tr>   
           
                   
                   
                      
                     
                     
                        
                        
                         <!--  <td><select name="degreeID" onchange = "Autotext();"> -->
                  
                         <td> <input type="text" name="degreeID" value="<%=rs.getString("degree_id")%>" /></td>
                       
                   
                    
                    
		
 
 
 
                 

                   
                       
                        <td><input type="text" name="startDate" value="<%=rs.getString("start_date")%>" /></td>
                    
                    
                    
                    
                       
                        <td><input type="text" name="endDate" value="<%=rs.getString("end_date")%>"  /></td>
                    

                    
                      
                        <td><input type="text" name="major" value="<%=rs.getString("major")%>"  /></td>
                    
                    
                      
                        <td><input type="text" name="GPA" value="<%=rs.getString("GPA")%>"  /></td>
                    
                    
                    
                        <td><input type="text" name="universityName" value="<%=rs.getString("uni_name")%>"  /></td>
                    
                    
                        
                        <td><input type="text" name="locationUniversity" value="<%=rs.getString("uni_location")%>"  /></td>
                    </tr>
                    
                </tbody>
            </table>
            
<%
}
%>
           
        <input type="submit" class="btn btn-info" value="Update">
        
        </form>

    </body>
</html>
