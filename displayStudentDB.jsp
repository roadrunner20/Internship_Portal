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
<script type = "text/javascript">
var Msg ='<%=session.getAttribute("getAlert")%>';
    if (Msg != "null") {
 function alertName(){
 alert("Successfully updated!");
 } 
 }
</script>

<script type="text/javascript">
 
 function openPage(pageURL)
 {
	 
     window.location.href = pageURL;
  //  String first_name =  document.getElementById("firstName").value;
 }
</script>

</head>
<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4">Updating Students' Profiles</font>

<br>

<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 	

<ul class="nav nav-tabs">

  <li class="active"><a data-toggle="tab" href="createStudentProfile.jsp">Basic Info.</a></li>
 <!--   <li><a href="studentEducationDetails.jsp">Educational Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Certification Details</a></li>
  <li><a href="studentCertificationDetails.jsp">Work Experience</a></li>
   <li><a data-toggle="tab" href="#menu2">Competency Level</a></li> -->
    <li><a href="admin.jsp">Home</a></li>
</ul>

     <div align="center">
<div class="container">
<form action="displayStudentDB.jsp" method="POST">
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
PreparedStatement statement = conn.prepareStatement("select * from student  where student_id =?");
statement.setString(1, studentID);

//ps.setString(1, studentID);

//out.println("Student Id"  + studentID);
ResultSet rs=statement.executeQuery();

if(rs.next())
{
   //out.println("Entered");
  
%>
    <!-- <button onclick="myFunction()">Load</button>-->
      <!--  <form method="POST" onsubmit="updateStudentDB.jsp">   -->
      
      <form action = "updateStudentDB.jsp">
            <table border="0" >
           
                <tbody>
                
             
                    <tr>
                        <td>Student ID :</td>
                        <td><input type="text" name="studentID" value="<%=rs.getString("student_id")%>" size="50" /></td>
                        
                   
                    </tr>
                    
                    <tr>
                        <td>First Name :</td>
                        <td><input type="text" name="firstName" value="<%=rs.getString("first_name")%>" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Middle Name :</td>
                        <td><input type="text" name="middleName" value="<%=rs.getString("middle_name")%>" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Last Name :</td>
                        <td><input type="text" name="lastName" value="<%=rs.getString("last_name")%>" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Email ID :</td>
                        <td><input type="text" name="emailID" value="<%=rs.getString("email")%>" size="50" /><td>
                    </tr>
                    <tr>
                        <td>Contact Number :</td>
                        <td><input type="text" name="contactNumber" value="<%=rs.getString("tel_no")%>" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Semester :</td>
                        <td><input type="text" name="semester" value="<%=rs.getString("semester")%>" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Year :</td>
                        <td><input type="text" name="year" value="<%=rs.getString("year")%>" size="50" /><td>
                    </tr>
                    <tr>
                    <td> Gender :</td>
                    <td>
                    <%
                    if(rs.getString("gender").equalsIgnoreCase("Female")){
                    %>
                    
                    <input checked type="radio" name="Gender" value="Female" />Female
                    <input type="radio" name="Gender" value="Male" />Male
                   <!--  <input type="text" name="Gender" value="<%=rs.getString("gender")%>" size="50" /> --> 
                    
                    <%
                    }
                    else if(rs.getString("gender").equalsIgnoreCase("Male"))
                    {
                    %>
                    
                    <input type="radio" name="Gender" value="Female" />Female
                    <input checked type="radio" name="Gender" value="Male" />Male
                   <%
                    }
                   %>
                    </td>
                    </tr>
                    <tr>
                    <td> Status :</td>
                    <td>
                    <%
                    if(rs.getString("status").equalsIgnoreCase("International")){
                    %>
                    
                    <input checked type="radio" name="status" value="International" />International
                    <input type="radio" name="status" value="Permanent Resident/Citizen" />Permanent Resident/Citizen
                   <!--  <input type="text" name="Gender" value="<%=rs.getString("gender")%>" size="50" /> --> 
                    
                    <%
                    }
                    else if(rs.getString("status").equalsIgnoreCase("Permanent Resident/Citizen"))
                    {
                    %>
                    
                    <input type="radio" name="status" value="International" />International
                    <input checked type="radio" name="status" value="Permanent Resident/Citizen" />Permanent Resident/Citizen
                   <%
                    }
                   %>
                    </td>
                    </tr>
                    
                </tbody>
                </table>
                <input type="submit" class="btn btn-info" value="Update">
                </form>
         <!--   <button type="reset" class="btn btn-info" name="reset">Clear</button>
  <button type="button" onclick="openPage('updateStudentDB.jsp')" class="btn btn-info" >Update</button>
  --> 
      
  
<% 
}
else{
	out.println("No Record Found!");
    out.print("Enter correct value and try again");
}


    	//	out.print("First name" + first_name);
    rs.close();
   // ps.close();
    stmt.close();
    conn.close();

%>
<form action="updateStudentDB.jsp" method ="POST">
   <table border="0" >
     
                <tbody>
                    <tr>
<!-- <td><button type="reset" class="btn btn-info" name="reset">Clear</button></td>-->
 <!--   <button type="button" class="btn btn-info" >Update</button> -->
          </tr>
          </tbody>
          </table>
          </form>

       
 <script type="text/javascript">  </script>
 
</div>
</div>
</div>
</body>
</html>