<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>More on jobs</title>

<link rel="stylesheet" href="styles.css" type="text/css">

<style>

table {	
  margin-top:80px;
   border-spacing: 0px;
   
   }
		
 th {
 	 padding: 5px 5px 5px 10px;
	 border-spacing: 0px;
	 font-size: 90%;
	 margin: 0px;
	 text-align: right;
	 background-color: #ffff;
	 border-top: 1px solid #f1f8fe;
	 border-bottom: 1px solid #cbd2d8;
	 border-right: 1px solid #cbd2d8;}
	 
td {
 	 padding: 5px 5px 5px 10px;
	 border-spacing: 0px;
	 font-size: 90%;
	 margin: 0px;
	 text-align: left;
	 background-color: #ffff;
	 border-top: 1px solid #f1f8fe;
	 border-bottom: 1px solid #cbd2d8;
	 border-right: 1px solid #cbd2d8;}
 
	 td {
	 text-shadow: 1px 1px 1px #fff;}
	 
	 tr.even {
	background-color: #e7e7e7;}
	
	.colorMe{
		margin-top:-18px;
		background-color:#efefef;
	}


</style>

</head>
<body>


<%@ page import = "java.sql.*" %>
<% 
String uid = (String)session.getAttribute("userid");
%>

  <%!
		//String uid="123";
		Statement stmt;
	  	Connection conn = null;
	  	ResultSet rs;
	  	
	public void jobPopulate(String q){
		
     
	  	try{
	      	conn = DriverManager.getConnection(
	        "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
	        
	      	stmt = conn.createStatement();
	       // System.out.println("In function");
	        System.out.println(q);
	        rs = stmt.executeQuery(q);
	        		
	        
	  	}
	  	catch(Exception ex){}
	  		
   }	
  %>
  
  	<div align="center">
		<div id="header">
		<h1 class="ex2"> INTERNSHIP PORTAL</h1>
	</div>
			
				<font face="Georgia" size="4">Job Information</font>
			
		</div>
			
	<!--  <div align="left"><a href="viewAllJobs.jsp"><h3>Return To Previous Page</h3></a></div> -->
	
	
	<table align="center" cellpadding="2" border="1">	
	<form action="updateInternDB.jsp" method="post">
		
   <%
  		String internPostId=request.getParameter("jobID");	
   
  
  		if( internPostId != null ){
  			Class.forName("com.mysql.jdbc.Driver");
  			String url="jdbc:mysql://localhost:3306/test_one";
  			String username="root";
  			String password="changemaker0123";
  			Connection conn=DriverManager.getConnection(url,username,password);
  			Statement stmt = conn.createStatement();
  			
  			String query = "select i.intern_post_id, jg.job_category_title as category,"+
			  			"i.company_name as company,"+
			  			"i.company_address as address,"+
			  			"i.city,"+
			  			"j.job_description as descript,"+
			  			"j.job_responsibilities as resp,"+
			  			"j.job_req as req,"+
			  			"i.salary,"+
			  			"i.postal_code as code,"+
			  			"i.country,"+
			  			"i.contact_firstName as fname,"+
			  			"i.contact_lastName as lname,"+
			  			"i.contact_person_position as position,"+
			  			"i.contact_telNo as number,"+
			  			"i.contact_email as email,"+
			  			"i.company_website as web "+

  			            "from job_group jg join internship_posting i on jg.job_group_id=i.job_group_id "+
  				        "join jobs j on i.job_position_id=j.job_position_id "+

  			            "where i.intern_post_id=?";
  			
  			
 
  			PreparedStatement statement = conn.prepareStatement(query);
  			statement.setString(1, internPostId);
  			rs=statement.executeQuery();
  	
  		System.out.println(internPostId);
	      	
	      //	jobPopulate(query);
	      	//out.print("got it");
	      	
	      			 
	      		if(rs.next()) 
	      			{
	      				//out.print("got it 2");
	      			%>			<tr>
	      						<th>Intern Post ID:</th><td><input type="text" name="internPostID" value="<%=rs.getString("intern_post_id") %>" readonly size="50" /></td>
	      					</tr>	
	      					
	      			<input type="hidden" name="category" value="<%=rs.getString("category") %>" size="50" />
	      					
	      					<tr  class="even">
	      						<th>Company Name:</th><td><input type="text" name="company" value="<%=rs.getString("company") %>" size="50"/></td>
	      					</tr>
	      					<tr>
	      						<th>Company address:</th><td><input type="text" name="address" value="<%=rs.getString("address") %>" size="50"/></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>City:</th><td><input type="text" name="city" value="<%=rs.getString("city") %>" size="50"/></td>
	      					</tr>
	      					<tr>
	      						<th>Job Description:</th> <td><textarea name ="desc" rows="10" cols="80" ><%=rs.getString("descript") %></textarea></td>
	      					</tr>
	      					<tr class="even">
	      						<th>Job Responsibilities:</th> <td><textarea name ="resp" rows="10" cols="80" ><%=rs.getString("resp") %></textarea></td>
	      					</tr>
	      					<tr>
	      						<th>Job Requirement:</th> <td><textarea name ="req" rows="10" cols="80" ><%=rs.getString("req") %></textarea></td>
	      					</tr>
	      					<tr class="even">
	      						<th>Job Salary:</th><td><input type="text" name="salary" value="<%=rs.getString("salary") %>" size="50"/></td>
	      					</tr>
	      					<tr>
	      						<th>postal Code:</th><td><input type="text" name="code" value="<%=rs.getString("code") %>" size="50"/></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Country:</th><td><input type="text" name="country" value="<%=rs.getString("country") %>" size="50"/></td>
	      					</tr>
	      					<tr>	
	      						<th>Contact FirstName:</th><td><input type="text" name="fname" value="<%=rs.getString("fname") %>" size="50"/></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Contact LastName:</th><td><input type="text" name="lname" value="<%=rs.getString("lname") %>" size="50"/></td>
	      					</tr>
	      					<tr>
	      						<th>Contact Position:</th><td><input type="text" name="position" value="<%=rs.getString("position") %>" size="50"/></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Contact Number:</th><td><input type="text" name="number" value="<%=rs.getString("number") %>" size="50"/></td>
	      					</tr>
	      					<tr>
	      						<th>Email:</th><td><input type="text" name="email" value="<%=rs.getString("email") %>" size="50"/></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>WebSite:</th><<td><input type="text" name="web" value="<%=rs.getString("web") %>" size="50"/></td>
	      					</tr>
	      <% 					 
	      			}
	      	
	      				
	      			rs.close();
      				stmt.close();
      				conn.close();      		
      	
  			
  		}
  		
  		%>
  		
	
	</table>
	<p align ="center">
	 <button >Update</button></p>
	 </form>
		
	
<div class="interest" align="center" >
	
	
		<p>Click to Update</p>
		 
		<p id="demo"></p>
   </form>

<script>
function myFunction() {
    var x;
    if (confirm("Do you want to proceed?") == true) {
        x = "Updated";
    } else {
        x = "Error in Updation";
    }
    document.getElementById("demo").innerHTML = x;
}
</script>
	
	
</div>
		
<div align="center">
	<a href="viewAllJobs.jsp"><h3>Return To Previous Page</h3></a>
</div>

</body>
</html>
