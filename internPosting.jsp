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
<font face="Georgia" size="4"> Adding Internship Opportunities</font>

<br>
<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 



	<ul class="nav nav-tabs">
	
	  <li class="active"><a href="internPosting.jsp">Add Internship </a></li>
	   <li><a href="addSkillGroup.jsp">Add Skill Groups</a></li>
	    <li><a href="addSkills.jsp">Add Skills</a></li>
	  <li><a href="AddJobGroups.jsp">Add Job Groups</a></li>
	  <li><a href="addJobs.jsp">Add Job Positions</a></li>
	  <li><a href="viewAllJobs.jsp"> View/Update All Jobs</a></li>
	
	    <li><a href="admin.jsp">Home</a></li>
	</ul>

</div>


<div align="center">
<div class="container">

        
        <form name="internshipForm" action="internPostDB.jsp" onsubmit="return validator();">
            <table border="0" >
     
                <tbody>
                    <tr>
                        <td>Intern Post ID *:</td>
                        <td><input type="text" name="internPostID" value="" size="50" /></td>
                    </tr>
                    
                    <tr>
                        <td>Intern Type *:</td>
                     <td>  <select name="internType">
                            <option>Company</option>
                            <option>Startup Company</option>
                            <option>Research Project</option>
                            <option>MAC Project</option>
                            <option>Other</option></td>
                    </tr>
                    
                    <tr>
                        <td>Remuneration Type *:</td>
                     <td>  <select name="remunType">
                            <option>Paid</option>
                            <option>Stipend</option>
                            <option>Unpaid</option></select> </td>
                       
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
              <td> Job Group ID *: </td>
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
                    <tr>
                        
<tr>
                        
                                                
             <%
	try {
		con = cOpen();
		SQL = "SELECT job_position_id FROM jobs";
		stmt = con.prepareStatement(SQL);
		//stmt.setInt(1, 25);
		rs = stmt.executeQuery();
		%>                 
              <td> Job Position * : </td>
                        <td>  <select name="jobPositionID">
                        <option>Choose</option>
                      <%  while (rs.next()) { %>
                            <option><% out.print(rs.getString("job_position_id")); %></option>
                    
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
                     <tr>
                        <td>Salary * :</td>
                        <td><input type="text" name="salary" value="$" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Company Name *:</td>
                        <td><input type="text" name="companyName" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Company Address *:</td>
                        <td><input type="text" name="companyAddress" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>City * :</td>
                        <td><input type="text" name="city" value="Windsor" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Postal Code *:</td>
                        <td><input type="text" name="postalCode" value="" size="50" /></td>
                    </tr>
                     <tr>
                        <td>Country *:</td>
                        <td><input type="text" name="country" value="Canada" size="50" /></td>
                    </tr>
                     <tr>
                        <td>Contact Person <br> First Name * :</td>
                        <td><input type="text" name="CfirstName" value="" size="50" /></td>
                    </tr>
                     <tr>
                        <td>Contact Person <br> Last Name *:</td>
                        <td><input type="text" name="ClastName" value="" size="50" /></td>
                    </tr>
                     <tr>
                        <td>Contact Person <br> Working Position *:</td>
                        <td><input type="text" name="CworkPosition" value="" size="50" /></td>
                    </tr>
                     <tr>
                        <td>Contact Number *: <br> (xxx-xxx-xxxx, xxx.xxx.xxxx, xxx xxx xxxx)</td>
                        <td><input type="text" name="contactNumber" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Email ID *: <br> (xx.x@gmail.com, xx@comcast.net)</td>
                        <td><input type="text" name="emailID" value="" size="50" /><td>
                    </tr>
                     <tr>
                        <td>Website  *:</td>
                        <td><input type="text" name="website" value="" size="50" /><td>
                    </tr>
                     <tr>
                        <td>Additional Notes <br> About This Company :</td>
                        <td><textarea name ="companyNotes" rows="4" cols="50"></textarea></td>
                    </tr>
                   
                </tbody>
            </table>
           
                     
  
           
       
       <br> <br>
           <!--  <button type="reset" class="btn btn-info" name="Reset">Clear</button>  -->
            <button type = "submit" class="btn btn-info" name="submit"  >Submit</button>
          
            
             
        
        
        </form>
       
      
        

</div>
</div>
</div>




</body>
</html>