<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*"%>
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
<font face="Georgia" size="4"> Adding Students' Certification Details</font>

<br><br>

<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 


<ul class="nav nav-tabs">
	
	  <li ><a href="internPosting.jsp">Add Internship </a></li>
	   <li ><a href="addSkillGroup.jsp">Add Skill Groups</a></li>
	    <li ><a href="addSkills.jsp">Add Skills</a></li>
	  <li ><a href="AddJobGroups.jsp">Add Job Groups</a></li>
	  <li class="active"><a href="addJobs.jsp">Add Job Positions</a></li>
	  <li><a href="viewAllJobs.jsp"> View/Update All Jobs</a></li>
	
	    <li><a href="admin.jsp">Home</a></li>
	</ul>

</div>
<br> <br>
<div align="center">
<div class="container">
<br> 
 
    
        <form name="" action="addJobsDB.jsp" method="POST">
            <table border="0">
     
                <tbody>
                    <tr>
                        <td>Job Position ID :</td>
                        <td><input type="text" name="jobpositionID" value="" size="50" /></td>
                    </tr>
                     <tr>
                                                                 
             <%
	try {
		con = cOpen();
		SQL = "SELECT job_group_id FROM job_group";
		stmt = con.prepareStatement(SQL);
		//stmt.setInt(1, 25);
		rs = stmt.executeQuery();
		%>                 
              <td> Job Group ID : </td>
                        <td>  <select name="jobGroupID">
                        <option>Choose</option>
                      <%  while (rs.next()) { %>
                            <option><% out.print(rs.getString("job_group_id")); %></option>
                    
		                                  <%}%>
		
		               </select></td>
		               </tr>
	<% 
	} catch (SQLException e) {
		e.printStackTrace(System.out);
	} finally {
		try {stmt.close();} catch (Exception e) {
		}
		try {rs.close();} catch (Exception e) {
		}
		try {
			if (null != con) {con.close();}
		} catch (SQLException ex) {
			ex.printStackTrace(System.out);
		}
	}
	%>
                        </td>
                    </tr>
                     <tr>
                        <td>Job Position Title :</td>
                        <td><input type="text" name="jobpositionTitle" value="" size="50" /></td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td>Job Description:</td>
                        <td><textarea name="jobDescription" rows="4" cols="50"></textarea></td>
                    </tr>
                      <tr>
                        <td>Job Responsibilities:</td>
                        <td><textarea name="jobRespons" rows="4" cols="50"></textarea></td>
                    </tr>
                    <tr>
                        <td>Job Requirements:</td>
                        <td><textarea name="jobReq" rows="4" cols="50"></textarea></td>
                    </tr>
                   
                   
                   
                   
                </tbody>
            </table>

           
       
             <button type = "submit" class="btn btn-info" name="submit"  >Submit</button>
         <a href= "#" class="btn btn-info" name="update">Update</a> 
           <a href= "#" class="btn btn-info" name="Delete">Delete</a> 
        
        </form>
        
    </body>
</html>
