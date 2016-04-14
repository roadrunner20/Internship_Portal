<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
<title>Student Page</title>
<link rel="stylesheet" href="styles.css" type="text/css">

<style>

	h4{
	margin-top:50px;
	}	
	
	table {	
	margin-top:20px;
   border-spacing: 0px;
   }
		
 th, td {
 	 padding: 5px 30px 5px 10px;
	 border-spacing: 0px;
	 font-size: 90%;
	 margin: 0px;
	 text-align: center;
	 background-color: #ffff;
	 border-top: 1px solid #f1f8fe;
	 border-bottom: 1px solid #cbd2d8;
	 border-right: 1px solid #cbd2d8;}
 
 tr.head th {
	 color: #fff;
	 background-color: #90b4d6;
	 border-bottom: 2px solid #547ca0;
	 border-right: 1px solid #749abe;
	 border-top: 1px solid #90b4d6;
	 text-align: center;
	 text-shadow: -1px -1px 1px #666;
	 letter-spacing: 0.15em;}
 
	 td {
	 text-shadow: 1px 1px 1px #fff;}
	 
	 tr.even td {
	background-color: #e7e7e7;
	}
	
	div.logout{
	margin-right:90px;
	font-size: 1.25em;
	float:right;
  
}
div.head{
	margin-bottom: 20px;
}

.colorMe{
		margin-top:-18px;
		background-color:#efefef;
	}
	
	
</style>

</head>

<body>

<div class="colorMe">
		
	<div class="head" align="center">
			<div id="header">
				<h1 class="ex2">INTERNSHIP PORTAL</h1>
			</div>
			
			<font face="Georgia" size="4">Student Profile</font>
	</div>	
		
			<div align="right" class="logout">
		        <a href="studentPageLogOut.jsp" >
		          <span class="glyphicon glyphicon-log-out"></span><b>Log out</b>
		        </a>
	       </div> 
        
	<div align="center">
				<ul class="nav nav-tabs">
				  <li><a href="studentPage.jsp"><b>Basic Info.</b></a></li>  
				  <li><a href="studentPageCertplusDeg.jsp"><b>Certification || Degree Details</b></a></li>
				  <li><a href="studentPageCompInsert.jsp"><b>Skill Competency</b></a></li>
				  <li><a href="studentPageWorkExp.jsp"><b>Work Xperience</b></a></li>
				  <li class="active"><a data-toggle="tab" href=""><b>Available Jobs</b></a></li>
				  <li><a href="studentPageViewNotif.jsp"><b>Notifications</b></a></li>
				  
				</ul>
		</div>

</div>	
	
<%@ page import = "java.sql.*" %>

  <%! int i=0;	 %>
  <%!
  	
		Statement stmt;
	  	Connection conn = null;
	  	ResultSet rs;
	  	
	public void jobPopulate(){
		
     
	  	try{
	      	conn = DriverManager.getConnection(
	        "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
	        
	  	}
	  	catch(Exception ex){
	  		
	  	}
	  	
	} 	
  %>
	
  <%	
		String uid = (String)session.getAttribute("userid");
		//String uid="123";
		
  		String selectValue=request.getParameter("jobGroup");	
  
  		if(selectValue==null || selectValue.equals("0")){
  			i=1;
	      	String query = "Select j.job_position_title as position,"+
	       		 "i.company_name as employer,"+
	       		 "i.intern_type,"+
	       		 "i.city,"+ 
	       		 "i.remuneration_type as pay, "+
	       		 "i.intern_post_id "+
	       		 "from jobs j join internship_posting i on j.job_position_id = i.job_position_id";
	      	
	      	jobPopulate();
	      	stmt = conn.createStatement();
	        rs = stmt.executeQuery(query);
	       
  		}
  		else if(selectValue != null){
  			i=1;
  			String query = "Select j.job_position_title as position,"+
  		       		 "i.company_name as employer,"+
  		       		 "i.intern_type,"+
  		       		 "i.city,"+ 
  		       		 "i.remuneration_type as pay, "+
  		       		 "i.intern_post_id "+
  		       		 "from jobs j join internship_posting i on j.job_position_id = i.job_position_id "+
  		       		 "where j.job_group_id="+selectValue;
  			
  			jobPopulate();
	      	stmt = conn.createStatement();
	        rs = stmt.executeQuery(query);
	        	
  		}
  %>

		<div align="center">
			<h4 align="center">sort available Jobs</h4>
					
			<form method="post" action="studentPageJob.jsp">
					Job Group:
					<select name="jobGroup">
						<option value="0">All</option>
						<option value="1">Web Development</option>
						<option value="2">Mobile Development</option>
						<option value="3">System Development</option>
						<option value="4">Technical Support</option>
						<option value="5">Networking</option>
						<option value="6">Data Analysis</option>
						<option value="7">Testing</option>
						<option value="8">Security</option>
						<option value="9">Data Management</option>
					</select>
					<input type="submit" value="Submit"><br>
			</form>	
					
	   </div>
	   
				<table align="center" cellspacing="0" cellpadding="1" border="1">
					<tr class="head">
						<th>Job Position</th>
						<th>Employer Name</th>
						<th>Internship Type</th>
						<th>City</th>
						<th>Renumeration Type</th>
						<th></th>
					</tr>
		
	<%
	
	while(rs.next()){
					
		if (i%2==1){
	%>
					<tr>
						 <td><%=rs.getString("position") %></td>
						 <td><%=rs.getString("employer") %></td>
						 <td><%=rs.getString("intern_type") %></td>
						 <td><%=rs.getString("city") %></td>
						 <td><%=rs.getString("pay") %></td>
						 <td><a href="studentPageJobMore.jsp?jobID=<%=rs.getString("intern_post_id")%>">More</a></td>
					</tr>
	<%} else {%>
					<tr class="even">
						 <td><%=rs.getString("position") %></td>
						 <td><%=rs.getString("employer") %></td>
						 <td><%=rs.getString("intern_type") %></td>
						 <td><%=rs.getString("city") %></td>
						 <td><%=rs.getString("pay") %></td>
						 <td><a href="studentPageJobMore.jsp?jobID=<%=rs.getString("intern_post_id")%>">More</a></td>
					</tr>
 	<%
 			}
		i++; 
		
	}
	
	rs.close();
	stmt.close();
	conn.close();
	
	%>
				 </table>  



</body>
</html>