<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>More on job</title>

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
			
	<div align="left"><a href="studentPageJob.jsp"><h3>Return To Previous Page</h3></a></div>
	
	
	<table align="center" cellpadding="2" border="1" >	
		
   <%
  		String internPostId=request.getParameter("jobID");	
   
  
  		if( internPostId != null ){
  			Class.forName("com.mysql.jdbc.Driver");
  			String url="jdbc:mysql://localhost:3306/test_one";
  			String username="root";
  			String password="changemaker0123";
  			Connection conn=DriverManager.getConnection(url,username,password);
  			Statement stmt = conn.createStatement();
  			
  			String query = "select jg.job_category_title as category,"+
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
  	
  		//System.out.println(internPostId);
	      	
	      //	jobPopulate(query);
	      	//out.print("got it");
	      	
	      			 
	      		if(rs.next()) 
	      			{
	      				//out.print("got it 2");
	      			%>				
	      					<tr>
	      						<th>Job Category:</th><td width="300"><%=rs.getString("category") %></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Company Name:</th><td><%=rs.getString("company") %></td>
	      					</tr>
	      					<tr>
	      						<th>Company address:</th><td><%=rs.getString("address") %></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>City:</th><td><%=rs.getString("city") %></td>
	      					</tr>
	      					<tr>
	      						<th>Job Description:</th><td><%=rs.getString("descript") %></td>
	      					</tr>
	      					<tr class="even">
	      						<th>Job Responsibilities:</th><td><%=rs.getString("resp") %></td>
	      					</tr>
	      					<tr>
	      						<th>Job Requirement:</th><td><%=rs.getString("req") %></td>
	      					</tr>
	      					<tr class="even">
	      						<th>Job Salary:</th><td><%=rs.getString("salary") %></td>
	      					</tr>
	      					<tr>
	      						<th>postal Code:</th><td><%=rs.getString("code") %></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Country:</th><td><%=rs.getString("country") %></td>
	      					</tr>
	      					<tr>
	      						<th>Contact FirstName:</th><td><%=rs.getString("fname") %></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Contact LastName:</th><td><%=rs.getString("lname") %></td>
	      					</tr>
	      					<tr>
	      						<th>Contact Position:</th><td><%=rs.getString("position") %></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>Contact Number:</th><td><%=rs.getString("number") %></td>
	      					</tr>
	      					<tr>
	      						<th>Email:</th><td><a href="mailto:<%=rs.getString("email") %>">Send E-mail</a></td>
	      					</tr>
	      					<tr  class="even">
	      						<th>WebSite:</th><td><a href="http://<%=rs.getString("web") %>" target="_blank">Visit WebSite</a></td>
	      					</tr>
	      		   <%
	      			}
	      		
	      				
	      			rs.close();
      				stmt.close();
      				conn.close();      		
      	
  			
  		}
  		
  		%>
  		
	
	</table>
		
		
<div class="interest" align="center" >
	
	<form action="studentPageJobInterestValidate.jsp?internPostId=<%=internPostId%>" method="post">
		<p>Click the button to indicate interest</p>
		  <button onclick="myFunction()" name="apply">Interested</button>
		<p id="demo"></p>
   </form>

<script>
function myFunction() {
    var x;
    if (confirm("You want to indicate interest for this job") == true) {
        x = "Interest noted!";
    } else {
        x = "Interested not noted!";
    }
    document.getElementById("demo").innerHTML = x;
}
</script>
	
	
</div>
		
<div align="center">
	<a href="studentPageJob.jsp"><h3>Return To Previous Page</h3></a>
</div>

</body>
</html>
