<html>
<head>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<body>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>
 <%! String userdbName;

		String userdbPsw;
		String userdbStatus;
		String message = "";
		String name = "";
		int count = 0;
		
%>
<%


		String country= request.getParameter("countryList");
		String degree_type= request.getParameter("degreeID");
		String student_choice = request.getParameter("studentList");
		String userName = "root";
		String pass= "changemaker0123";
		String driver="com.mysql.jdbc.Driver"; 
		String DbUrl="jdbc:mysql://localhost:3306/test_one";
		Class.forName(driver).newInstance();
		Connection con=DriverManager.getConnection(DbUrl, userName, pass);
		
		
	//	String str = "INSERT INTO degree_details(student_id, degree_id, start_date,  end_date, major, GPA, uni_name, uni_location) VALUES (?,?,?,?,?,?,?,?)";
		String interested = "Interested";
		
//	if(student_choice.equalsIgnoreCase("Choose All"))
	//	{
			String elist = "SELECT company_name FROM internship_posting";
			PreparedStatement ps1 = con.prepareStatement(elist);
			ResultSet rs1=ps1.executeQuery();
			
		//} 
			
			
		
	
	//ResultSet rs = ps.executeQuery();
	
		//out.print("Established");
			
		 
	//	int i = ps.executeUpdate();
	
	
		
	%>
	<body>
<div align="center">
<div id="header">
<h1 class="ex2"> UNIVERSITY OF WINDSOR</h1>
</div>

<h2 class="ex2"> INTERNSHIP PORTAL</h2>
<font face="Georgia" size="4"> List of All the Employers</font>
	
	<br> <br> <br> 
	<p align="center">
	  <table border="1"  cellspacing="3" cellpadding="3" bordercolor="black" border="1"> 
                <tr>
                   <th width="10%"><font size="2"/>Employer name</th>
                  <!--   <th width="10%"><font size="2"/>First Name</th>
                   <th width="10%"><font size="2"/>Last Name </th> --> 
                    
                </tr>
            <%while(rs1.next()) { %>
            <tr>
                <td><%out.print(rs1.getString("company_name")); %></td>
             <!--     <td><%out.print(rs1.getString("first_name")); %></td>
                <td><% out.print(rs1.getString("last_name")); %></td>  -->
               
            </tr>
            
           
            
        
            <% } %>  
              </table>
              <br>
               <button type="button" class="btn btn-info" onclick="window.print();" target="_blank" style="cursor:pointer;">PRINT THE LIST</button>
             <a href="report.jsp"> <button type="button" class="btn btn-info">Go Back</button></a> 
 <% 
		 /*//if(i!=0)
			while(rs.next())
		{
			out.print("Records Saved Successfully! Click Back to add another 	Degree");
			
			
		}*/
		
		
		//ResultSet rs = ps.executeQuery();
		
		ps1.clearParameters();
 
	 
	   ps1.close();
 

	     
%>
	
</body>
</html>	
		