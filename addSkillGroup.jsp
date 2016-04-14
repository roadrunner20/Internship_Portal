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
.button-container form,
.button-container form div {
    display: inline;
}
</style>

<script type="text/javascript"> 
       function validator()
       {
    	  
    	   
    		  
    		  document.addjobgroups.action = "jobGroupDB.jsp";
     		 document.addjobgroups.method = "POST";
    		 
    		  
    		  
    	  }
       function updator()
       {
    	  
    	   
    		  
    		  document.addjobgroups.action = "updateGroupDB.jsp";
     		 document.addjobgroups.method = "POST";
    		 
    		  
    		  
    	  }	 
       function updator()
       {
    	  
    	   
    		  
    		  document.addjobgroups.action = "updateGroupDB.jsp";
     		 document.addjobgroups.method = "POST";
    		 
    		  
    		  
    	  }	  
       function remover()
       {
    	  
    	   
    		  
    		  document.addjobgroups.action = "DelJobGroups.jsp";
     		 document.addjobgroups.method = "POST";
    		 
    		  
    		  
    	  }	  
       
       
       </script>
       
 
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
	   <li class="active"><a href="addSkillGroup.jsp">Add Skill Groups</a></li>
	    <li ><a href="addSkills.jsp">Add Skills</a></li>
	  <li><a href="AddJobGroups.jsp">Add Job Groups</a></li>
	  <li><a href="addJobs.jsp">Add Job Positions</a></li>
	  <li><a href="viewAllJobs.jsp"> View/Update All Jobs</a></li>
	
	    <li><a href="admin.jsp">Home</a></li>
	</ul>


</div>
<br> <br>
<div align="center">
<div class="container">
<br> 

  <!--    <input placeholder="Search by Job Group ID" type = "search" size ="40"  name = "search"/> -->     
       <div class="button-container">
       <div align="left">
        <form name="addjobgroups" action=""   method="POST">
            <table border="0">
     
                <tbody>
                    <tr>
                        <td>Skill Group ID :</td>
                        <td><input type="text" name="jobGroupID" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Skill Group Name :</td>
                        <td><input type="text" name="categoryTitle" value="" size="50" /></td>
                    </tr>
                    
                   
                   
                   
                </tbody>
            </table>

           
       
           <button type = "submit" class="btn btn-info" name="submit"  onclick="return validator();" >Submit</button>
   <button type = "submit" class="btn btn-info" name="update"  onclick="return updator();">Update Values</button>
   <button type = "submit" class="btn btn-info" name="delete"  onclick="return remover();">Delete</button>
        
      
        </form>
        </div>
       
            
       
       
        <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>

       <%

       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/test_one";
       String username="root";
       String password="changemaker0123";
       Connection conn=DriverManager.getConnection(url,username,password);
       Statement stmt = conn.createStatement();
   
       PreparedStatement statement = conn.prepareStatement("select skill_group_id, skill_group_name from skill_group ORDER BY ABS(skill_group_id)");
     
       ResultSet rs=statement.executeQuery();
   %>
      
        
         <div align="center">
           <div class="button-container">
       <h4> Job Groups At Glance! </h4>
     
            <table border="1" cellspacing ="3">
     
                <tbody>
                <tr>
                    <th width="120" align="center" font size="1"/>Job Group ID</th>
                   <th align="center" font size="1"/>Job Category Title</th>
                    
                </tr>
                
                <% 
                 while(rs.next())
       {  %>
       
                    <tr>
                        
                        <td align="center"><%=rs.getString("skill_group_id")%></td>
                    
                    
                       
                        <td align="center"><%=rs.getString("skill_group_name")%></td>
                    </tr>
                    
                <%} %>   
                   
                   
                </tbody>
            </table>
     	</div>
    </div> 	
     	
    </body>
</html>
