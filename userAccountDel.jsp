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
<font face="Georgia" size="4"> Disabling Students' Profile</font>

<br><br>




<ul class="nav nav-tabs">
    <li><a href="admin.jsp">Home</a></li>
</ul>

</div>
<br> <br>
<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 
<div align="center">
<div class="container">
<br> 


<form action="userAccountDel.jsp" method="POST">
 <table border="0" >
     
                <tbody>
                    <tr>
                       <!--  <td><input type="text" name="search" value="search by student id" size="40" /></td> -->
                       <td> <input placeholder="Search by Student ID" type = "search" size ="40"  name = "search"></td> 
                        <td><input type="submit"  class="btn btn-info" value = "Disable User"></td>
                        
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
String userID= request.getParameter("search");
//String studentID = "123";
//String studentID = (String)session.getAttribute("search");
//String query="SELECT * FROM student" 	+ "WHERE student_id = ?";
//PreparedStatement ps = conn.prepareStatement(query);
//ResultSet rs = stmt.executeQuery(query);
PreparedStatement statement = conn.prepareStatement("DELETE from user_account where userid =?");
statement.setString(1, userID);

//ps.setString(1, studentID);

//out.println("Student Id"  + studentID);
int i  =statement.executeUpdate();
//out.print("student_id");
if(i != 0)
{
     out.print("User Disabled !");
}

%>
        </form>

    </body>
</html>