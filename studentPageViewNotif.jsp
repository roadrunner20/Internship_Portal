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

	table {	
	margin-top:100px;
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
			  <li><a href="studentPageJob.jsp"><b>Available Jobs</b></a></li>
			  <li class="active"><a data-toggle="tab" href=""><b>Notifications</b></a></li>
			  
			</ul>
	</div>

</div>

<%@ page import = "java.sql.*" %>
<%! int i=0; %>

 <%
 
 	String uid = (String)session.getAttribute("userid");
 	//String uid="123";
 
  		try{
		 Class.forName("com.mysql.jdbc.Driver");
  		}
  		catch(Exception ex){
  			System.out.println("Unable to load driver");
  		}
  		
  	  Statement stmt;
  	  Connection conn=null;
  	  
      conn = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/test_one", "root", "changemaker0123"); // <== Check!
    
          System.out.println("Connected...");
          System.out.println("Session for "+uid);
      
      String query = "select r.hiring_status as status,"+
      				 "i.company_name as company,"+
    			     "r.notes "+ 
    				 "from internship_posting i join interest r on i.intern_post_id=r.intern_post_id "+
    			     "where student_id =?";
        		  
        		  
    //  stmt = conn.createStatement();
      PreparedStatement ps = conn.prepareStatement(query);
  	ps.setString(1, uid );
   //   ResultSet rs = stmt.executeQuery(query);
     // stmt.setString(1, uid);
      System.out.println(query);
     ResultSet rs=  ps.executeQuery();

    %>
	
	
				<table align="center" cellspacing="0" cellpadding="1" border="1">
					<tr class="head">
						<th>INTERNSHIP STATUS</th>
						<th>COMPANY NAME</th>
						<th width="300">NOTE</th>
					</tr>
		
	<%
	
	while(rs.next()){
					
		if (i%2==1){
	%>
					<tr>
						 <td><%=rs.getString("status") %></td>
						 <td><%=rs.getString("company") %></td>
						 <td><%=rs.getString("notes") %></td>
					</tr>
	<%} else {%>
					<tr class="even">
						 <td><%=rs.getString("status") %></td>
						 <td><%=rs.getString("company") %></td>
						 <td><%=rs.getString("notes") %></td>
					</tr>
 	<% 
 			}
		i++; 
		
	}
	
	rs.close();
	ps.close();
	conn.close();
	
	%>
				 </table>  




</body>
</html>