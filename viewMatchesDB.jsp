<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
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
	background-color: white;
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
		background-color: moccasin;
	}
	
	.button {
    background-color: #f44336; /* Red */
    border: none;
    color: white;
    padding: 8px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 8px 3px;
    cursor: pointer;
}

.button1 {font-size: 10px;}
	
</style>
<body>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>
 <%! int i=0;	 %>
 <%! String userdbName;

		String userdbPsw;
		String userdbStatus;
		String message = "";
		String name = "";
		int count = 0;
		
%>
<%


		//String username= request.getParameter("username");
		//String password= request.getParameter("password");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
		
	//	String str = "INSERT INTO degree_details(student_id, degree_id, start_date,  end_date, major, GPA, uni_name, uni_location) VALUES (?,?,?,?,?,?,?,?)";
		String interested = "Interested";
	String str = "SELECT student.first_name, student.last_name, internship_posting.intern_post_id, jobs.job_position_title, internship_posting.company_name,"+ 
			"internship_posting.contact_firstName, internship_posting.contact_lastName, " +
			"internship_posting.contact_email, internship_posting.contact_telNo FROM jobs INNER JOIN internship_posting ON jobs.job_position_id = internship_posting.job_position_id INNER JOIN interest " +
			"ON internship_posting.intern_post_id=interest.intern_post_id INNER JOIN student ON interest.student_id=student.student_id WHERE interest.interest_status =?";
	


	PreparedStatement ps = con.prepareStatement(str);
	ps.setString(1, interested );
		//out.print("Established");
		
		 
	//	int i = ps.executeUpdate();
	ResultSet rs=ps.executeQuery();
	%>
	<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> Interested Candidates For Available Jobs</font>
	
	<br> <br> <br> 
	<p align="center">
	  <table border="1"  cellspacing="5" cellpadding="3" bordercolor="black" border="1"> 
                <tr>
                    <th width="10%"><font size="2"/>First Name</th>
                   <th width="10%"><font size="2"/>Last Name </th>
                    <th width="10%"><font size="2"/>Intern Post ID</th>
                       <th width="10%"><font size="2"/>Job Category Title</th>
                    <th width="10%"><font size="2"/>Company Name</th>
                    <th width="10%"><font size="2"/>Contact Person: First Name</th>
                    <th width="10%"><font size="2"/>Contact Person: Last Name</th>
                    <th width="10%"><font size="2"/>Contact Person: Email ID</th>
                    <th width="10%"><font size="2"/>Contact Person: Telephone No</th>
                </tr>
            <%while(rs.next()) {
            	if (i%2 == 1){
            	 %>
            <tr>
                <td><%out.print(rs.getString("first_name")); %></td>
                <td><% out.print(rs.getString("last_name")); %></td>
                <td><% out.print(rs.getString("intern_post_id")); %></td>
                <td><% out.print(rs.getString("job_position_title")); %></td>
                <td><% out.print(rs.getString("company_name")); %></td>
                <td><% out.print(rs.getString("contact_firstName")); %></td>
                <td><% out.print(rs.getString("contact_lastName")); %></td>
                <td><% out.print(rs.getString("contact_email")); %></td>
                <td><% out.print(rs.getString("contact_telNo")); %></td>
        
            </tr>
            <%} else {%>
            <tr class="even">
                <td><%out.print(rs.getString("first_name")); %></td>
                <td><% out.print(rs.getString("last_name")); %></td>
                <td><% out.print(rs.getString("intern_post_id")); %></td>
                <td><% out.print(rs.getString("job_position_title")); %></td>
                <td><% out.print(rs.getString("company_name")); %></td>
                <td><% out.print(rs.getString("contact_firstName")); %></td>
                <td><% out.print(rs.getString("contact_lastName")); %></td>
                <td><% out.print(rs.getString("contact_email")); %></td>
                <td><% out.print(rs.getString("contact_telNo")); %></td>
        
            </tr>
            
           
            
        
            <%
            }
            	i++;
            	
           }
           
           %> 
         
            
              </table>
              <br>
               <button type="button" class="btn btn-info" onclick="window.print();" target="_blank" style="cursor:pointer;">PRINT THE LIST</button>
             <a href="admin.jsp"> <button type="button" class="btn btn-info">Go Back</button></a> 
 <% 
		 /*//if(i!=0)
			while(rs.next())
		{
			out.print("Records Saved Successfully! Click Back to add another 	Degree");
			
			
		}*/
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps.clearParameters();
 
	 
	   ps.close();
 

	     
%>
	
</body>
</html>	
		